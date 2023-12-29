/*
All'inizio di una partita di Nethack, le apparenze degli oggetti di certe categorie vengono mischiate. Alcune associazioni (oggetto,apparenza) possono essere scartate in seguito a certi indizi che il gioco mostra all'agente durante la partita.
In questo programma prolog, eliminare un' associazione (X,Y) significa aggiungere un fatto is_not(X,Y). Date alcune eliminazioni in input, il programma può inferire nuove eliminazioni, tramite add_is_not(Kind, N), dove Kind è la categoria degli oggetti interessata.
Per inferire nuove eliminazioni, questo programma sfrutta il fatto che:
- Sia Objs un qualsiasi insieme di oggetti della stessa categoria
- Sia Posb l'insieme delle possibili apparenze degli oggetti in Objs (quelle per cui non vale is_not)
Allora, se #Objs = #Posb, gli oggetti che non sono in Objs non possono avere apparenze in Posb.

Attualmente, l'insieme Objs(e di conseguenza Posb) viene costruito a partire dall' oggetto con meno apparenze possibili, poi viene aggiunto il secondo con meno apparenze, poi il terzo e così via.
*/
gloves("leather gloves", 16).
gloves("gauntlets of fumbling", 8).
gloves("gauntlets of power", 8).
gloves("gauntlets of dexterity", 8).
kind(Object, gloves) :- gloves(Object, _).
can_be(gloves, "old gloves").
can_be(gloves, "padded gloves").
can_be(gloves, "riding gloves").
can_be(gloves, "fencing gloves").
can_be(Object, Appearence) :- kind(Object, ObjKind), can_be(ObjKind, Appearence), \+ is_not(Object, Appearence).
new_is_not([(_, Obj, ObjPossibilities)|L], PrevObjs, PrevPossibilities, NewNot) :-
    Objs = [Obj|PrevObjs], % add next object
    union(PrevPossibilities, ObjPossibilities, Possibilities), % add new possibilities for objects appearences
    (
	same_length(Objs, Possibilities),
	kind(Obj, ObjKind), kind(O, ObjKind), can_be(O, Appearence),
	\+ member(O, Objs), member(Appearence, Possibilities),
	NewNot = is_not(O, Appearence);
	%cut to force tail call optimization
	!, new_is_not(L, Objs, Possibilities, NewNot)
    ).

is_not_inference(ObjKind, NewNot) :-
    findall((NumOfPossibilities, Obj, ObjPossibilities),
	    (
		kind(Obj, ObjKind),
		findall(Appearence, can_be(Obj, Appearence), ObjPossibilities),
		length(ObjPossibilities, NumOfPossibilities)
	    ),
	    Obj2Possibilities),
    sort(Obj2Possibilities, L),
    !, new_is_not(L, [], [], NewNot).

add_is_not(ObjKind, N) :- is_not_inference(ObjKind, N), assertz(N).

is_not("leather gloves", "padded gloves").
is_not("leather gloves", "riding gloves").
% then leather gloves must be old or fencing
is_not("gauntlets of fumbling", "padded gloves").
is_not("gauntlets of fumbling", "riding gloves").
% then gauntlets of fumbling must be old or fencing
% this means that no other glove can be old or fencing

/*
?- add_is_not(gloves, N).
N = is_not("gauntlets of power", "old gloves") ;
N = is_not("gauntlets of power", "fencing gloves") ;
N = is_not("gauntlets of dexterity", "old gloves") ;
N = is_not("gauntlets of dexterity", "fencing gloves") ;
false.

?- can_be("gauntlets of power", A).
A = "padded gloves" ;
A = "riding gloves" ;
false.
*/
