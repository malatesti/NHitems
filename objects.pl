/*
This is a database of nethack objects and their appearences(fixed or randomized).
Every appearence has an ID. The appearence description can be retrieved by:
?- description(ID, DESC).
Or with the following python program, given an in-game glyph GLY:
|from nle import nethack
|if nethack.glyph_is_object(GLY):
|   ID = nethack.glyph_to_obj(GLY)
|   DESC = nethack.objdescr.from_idx(ID).oc_descr
Some objects don't have a fixed appearence, that's why their appearence is prefixed with rnd_. The can_be/2 predicate maps such random appearences to all the possibilities.
*/
% projectile(APPEARENCE, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, MATERIAL, SUB, DAMAGE_TO_SMALL_MONSTERS, DAMAGE_TO_LARGE_MONSTERS)
projectile(1, "arrow", 55, 1, 2, 0, iron, p_bow, 3.5, 3.5).
projectile(2, "elven arrow", 20, 1, 2, 0, wood, p_bow, 4.0, 3.5).
projectile(3, "orcish arrow", 20, 1, 2, 0, iron, p_bow, 3.0, 3.5).
projectile(4, "silver arrow", 12, 1, 5, 0, silver, p_bow, 3.5, 3.5).
projectile(5, "ya", 15, 1, 4, 1, metal, p_bow, 4.0, 4.0).
projectile(6, "crossbow bolt", 55, 1, 2, 0, iron, p_crossbow, 3.5, 4.5).
% weapon(APPEARENCE, NAME, MAGICAL, BI, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, SUB, MATERIAL, DAMAGE_TO_SMALL_MONSTERS, DAMAGE_TO_LARGE_MONSTERS)
weapon(7, "dart", 1, 0, 60, 1, 2, 0, p_dart, iron, 2.0, 1.5).
weapon(8, "shuriken", 1, 0, 35, 1, 5, 2, p_shuriken, iron, 4.5, 3.5).
weapon(9, "boomerang", 1, 0, 15, 5, 20, 0, p_boomerang, wood, 5.0, 5.0).
weapon(10, "spear", 1, 0, 50, 30, 3, 0, p_spear, iron, 3.5, 4.5).
weapon(11, "elven spear", 1, 0, 10, 30, 3, 0, p_spear, wood, 4.0, 4.5).
weapon(12, "orcish spear", 1, 0, 13, 30, 3, 0, p_spear, iron, 3.0, 4.5).
weapon(13, "dwarvish spear", 1, 0, 12, 35, 3, 0, p_spear, iron, 4.5, 4.5).
weapon(14, "silver spear", 1, 0, 2, 36, 40, 0, p_spear, silver, 3.5, 4.5).
weapon(15, "javelin", 1, 0, 10, 20, 3, 0, p_spear, iron, 3.5, 3.5).
weapon(16, "trident", 0, 0, 8, 25, 5, 0, p_trident, iron, 4.5, 7.5).
weapon(17, "dagger", 1, 0, 30, 10, 4, 2, p_dagger, iron, 2.5, 2.0).
weapon(18, "elven dagger", 1, 0, 10, 10, 4, 2, p_dagger, wood, 3.0, 2.0).
weapon(19, "orcish dagger", 1, 0, 12, 10, 4, 2, p_dagger, iron, 2.0, 2.0).
weapon(20, "silver dagger", 1, 0, 3, 12, 40, 2, p_dagger, silver, 2.5, 2.0).
weapon(21, "athame", 1, 0, 0, 10, 4, 2, p_dagger, iron, 2.5, 2.0).
weapon(22, "scalpel", 1, 0, 0, 5, 6, 2, p_knife, metal, 2.0, 2.0).
weapon(23, "knife", 1, 0, 20, 5, 4, 0, p_knife, iron, 2.0, 1.5).
weapon(24, "stiletto", 1, 0, 5, 5, 4, 0, p_knife, iron, 2.0, 1.5).
weapon(25, "worm tooth", 1, 0, 0, 20, 2, 0, p_knife, 0, 1.5, 1.5).
weapon(26, "crysknife", 1, 0, 0, 20, 100, 3, p_knife, mineral, 5.5, 5.5).
weapon(27, "axe", 0, 0, 40, 60, 8, 0, p_axe, iron, 3.5, 2.5).
weapon(28, "battle-axe", 0, 1, 10, 120, 40, 0, p_axe, iron, 7, 8.5).
weapon(29, "short sword", 0, 0, 8, 30, 10, 0, p_short_sword, iron, 3.5, 4.5).
weapon(30, "elven short sword", 0, 0, 2, 30, 10, 0, p_short_sword, wood, 4.5, 4.5).
weapon(31, "orcish short sword", 0, 0, 3, 30, 10, 0, p_short_sword, iron, 3.0, 4.5).
weapon(32, "dwarvish short sword", 0, 0, 2, 30, 10, 0, p_short_sword, iron, 4.0, 4.5).
weapon(33, "scimitar", 0, 0, 15, 40, 15, 0, p_scimitar, iron, 4.5, 4.5).
weapon(34, "silver saber", 0, 0, 6, 40, 75, 0, p_saber, silver, 4.5, 4.5).
weapon(35, "broadsword", 0, 0, 8, 70, 10, 0, p_broad_sword, iron, 5.0, 4.5).
weapon(36, "elven broadsword", 0, 0, 4, 70, 10, 0, p_broad_sword, wood, 6.0, 4.5).
weapon(37, "long sword", 0, 0, 50, 40, 15, 0, p_long_sword, iron, 4.5, 6.5).
weapon(38, "two-handed sword", 0, 1, 22, 150, 50, 0, p_two_handed_sword, iron, 6.5, 10.5).
weapon(39, "katana", 0, 0, 4, 40, 80, 1, p_long_sword, iron, 5.5, 6.5).
weapon(40, "tsurugi", 0, 1, 0, 60, 500, 2, p_two_handed_sword, metal, 8.5, 11.5).
weapon(41, "runesword", 0, 0, 0, 40, 300, 0, p_broad_sword, iron, 5.0, 4.5).
weapon(42, "partisan", 0, 1, 5, 80, 10, 0, p_polearms, iron, 3.5, 4.5).
weapon(43, "ranseur", 0, 1, 5, 50, 6, 0, p_polearms, iron, 5.0, 5.0).
weapon(44, "spetum", 0, 1, 5, 50, 5, 0, p_polearms, iron, 4.5, 7.0).
weapon(45, "glaive", 0, 1, 8, 75, 6, 0, p_polearms, iron, 3.5, 5.5).
weapon(46, "lance", 0, 0, 4, 180, 10, 0, p_lance, iron, 3.5, 4.5).
weapon(47, "halberd", 0, 1, 8, 150, 10, 0, p_polearms, iron, 5.5, 7.0).
weapon(48, "bardiche", 0, 1, 4, 120, 7, 0, p_polearms, iron, 5.0, 7.5).
weapon(49, "voulge", 0, 1, 4, 125, 5, 0, p_polearms, iron, 5.0, 5.0).
weapon(50, "dwarvish mattock", 0, 1, 13, 120, 50, -1, p_pick_axe, iron, 6.5, 11.5).
weapon(51, "fauchard", 0, 1, 6, 60, 5, 0, p_polearms, iron, 3.5, 4.5).
weapon(52, "guisarme", 0, 1, 6, 80, 5, 0, p_polearms, iron, 5.0, 4.5).
weapon(53, "bill-guisarme", 0, 1, 4, 120, 7, 0, p_polearms, iron, 5.0, 5.5).
weapon(54, "lucern hammer", 0, 1, 5, 150, 7, 0, p_polearms, iron, 5.0, 3.5).
weapon(55, "bec de corbin", 0, 1, 4, 100, 8, 0, p_polearms, iron, 4.5, 3.5).
weapon(56, "mace", 0, 0, 40, 30, 5, 0, p_mace, iron, 4.5, 3.5).
weapon(57, "morning star", 0, 0, 12, 120, 10, 0, p_morning_star, iron, 5.0, 4.5).
weapon(58, "war hammer", 0, 0, 15, 50, 5, 0, p_hammer, iron, 3.5, 2.5).
weapon(59, "club", 0, 0, 12, 30, 3, 0, p_club, wood, 3.5, 2.0).
weapon(60, "rubber hose", 0, 0, 0, 20, 3, 0, p_whip, plastic, 2.5, 2.0).
weapon(61, "quarterstaff", 0, 1, 11, 40, 5, 0, p_quarterstaff, wood, 3.5, 3.5).
weapon(62, "aklys", 0, 0, 8, 15, 4, 0, p_club, iron, 3.5, 2.0).
weapon(63, "flail", 0, 0, 40, 15, 4, 0, p_flail, iron, 4.5, 5.0).
weapon(64, "bullwhip", 0, 0, 2, 20, 4, 0, p_whip, leather, 1.5, 1.0).
% launcher(APPEARENCE, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL, SUB)
launcher(65, "bow", 24, 30, 60, wood, p_bow).
launcher(66, "elven bow", 12, 30, 60, wood, p_bow).
launcher(67, "orcish bow", 12, 30, 60, wood, p_bow).
launcher(68, "yumi", 0, 30, 60, wood, p_bow).
launcher(69, "sling", 40, 3, 20, leather, p_sling).
launcher(70, "crossbow", 45, 50, 40, wood, p_crossbow).
% helm(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL)
helm(71, "elven leather helm", 0, 0, 6, 1, 3, 8, 1, 0, leather).
helm(72, "orcish helm", 0, 0, 6, 1, 30, 10, 1, 0, iron).
helm(73, "dwarvish iron helm", 0, 0, 6, 1, 40, 20, 2, 0, iron).
helm(74, "fedora", 0, 0, 0, 0, 3, 1, 0, 0, cloth).
helm(75, "cornuthaum", 1, clairvoyant, 3, 1, 4, 80, 0, 1, cloth).
helm(76, "dunce cap", 1, 0, 3, 1, 4, 1, 0, 0, cloth).
helm(77, "dented pot", 0, 0, 2, 0, 10, 8, 1, 0, iron).
helm(rnd_helm, "helmet", 0, 0, 10, 1, 30, 10, 1, 0, iron).
helm(rnd_helm, "helm of brilliance", 1, 0, 6, 1, 50, 50, 1, 0, iron).
helm(rnd_helm, "helm of opposite alignment", 1, 0, 6, 1, 50, 50, 1, 0, iron).
helm(rnd_helm, "helm of telepathy", 1, telepat, 2, 1, 50, 50, 1, 0, iron).
% drgn_armr(APPEARENCE, NAME, MAGICAL, POWER, BASE_PRICE, AC)
drgn_armr(82, "gray dragon scale mail", 1, antimagic, 1200, 9).
drgn_armr(83, "silver dragon scale mail", 1, reflecting, 1200, 9).
drgn_armr(84, "red dragon scale mail", 1, fire_res, 900, 9).
drgn_armr(85, "white dragon scale mail", 1, cold_res, 900, 9).
drgn_armr(86, "orange dragon scale mail", 1, sleep_res, 900, 9).
drgn_armr(87, "black dragon scale mail", 1, disint_res, 1200, 9).
drgn_armr(88, "blue dragon scale mail", 1, shock_res, 900, 9).
drgn_armr(89, "green dragon scale mail", 1, poison_res, 900, 9).
drgn_armr(90, "yellow dragon scale mail", 1, acid_res, 900, 9).
drgn_armr(91, "gray dragon scales", 0, antimagic, 700, 3).
drgn_armr(92, "silver dragon scales", 0, reflecting, 700, 3).
drgn_armr(93, "red dragon scales", 0, fire_res, 500, 3).
drgn_armr(94, "white dragon scales", 0, cold_res, 500, 3).
drgn_armr(95, "orange dragon scales", 0, sleep_res, 500, 3).
drgn_armr(96, "black dragon scales", 0, disint_res, 700, 3).
drgn_armr(97, "blue dragon scales", 0, shock_res, 500, 3).
drgn_armr(98, "green dragon scales", 0, poison_res, 500, 3).
drgn_armr(99, "yellow dragon scales", 0, acid_res, 500, 3).
% body_armr(APPEARENCE, NAME, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, SUB, MATERIAL)
body_armr(100, "plate mail", 44, 450, 600, 7, 2, arm_suit, iron).
body_armr(101, "crystal plate mail", 10, 450, 820, 7, 2, arm_suit, glass).
body_armr(102, "bronze plate mail", 25, 450, 400, 6, 1, arm_suit, copper).
body_armr(103, "splint mail", 62, 400, 80, 6, 1, arm_suit, iron).
body_armr(104, "banded mail", 72, 350, 90, 6, 1, arm_suit, iron).
body_armr(105, "dwarvish mithril-coat", 10, 150, 240, 6, 2, arm_suit, mithril).
body_armr(106, "elven mithril-coat", 15, 150, 240, 5, 2, arm_suit, mithril).
body_armr(107, "chain mail", 72, 300, 75, 5, 1, arm_suit, iron).
body_armr(108, "orcish chain mail", 20, 300, 75, 4, 1, arm_suit, iron).
body_armr(109, "scale mail", 72, 250, 45, 4, 1, arm_suit, iron).
body_armr(110, "studded leather armor", 72, 200, 15, 3, 1, arm_suit, leather).
body_armr(111, "ring mail", 72, 250, 100, 3, 1, arm_suit, iron).
body_armr(112, "orcish ring mail", 20, 250, 80, 2, 1, arm_suit, iron).
body_armr(113, "leather armor", 82, 150, 5, 2, 1, arm_suit, leather).
body_armr(114, "leather jacket", 12, 30, 10, 1, 0, arm_suit, leather).
body_armr(115, "Hawaiian shirt", 8, 5, 3, 0, 0, arm_shirt, cloth).
body_armr(116, "T-shirt", 2, 5, 2, 0, 0, arm_shirt, cloth).
% cloak(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL)
cloak(117, "mummy wrapping", 0, 0, 0, 0, 3, 2, 0, 1, cloth).
cloak(118, "elven cloak", 1, stealth, 8, 0, 10, 60, 1, 1, cloth).
cloak(119, "orcish cloak", 0, 0, 8, 0, 10, 40, 0, 1, cloth).
cloak(120, "dwarvish cloak", 0, 0, 8, 0, 10, 50, 0, 1, cloth).
cloak(121, "oilskin cloak", 0, 0, 8, 0, 10, 50, 1, 2, cloth).
cloak(122, "robe", 1, 0, 3, 0, 15, 50, 2, 2, cloth).
cloak(123, "alchemy smock", 1, poison_res, 9, 0, 10, 50, 1, 1, cloth).
cloak(124, "leather cloak", 0, 0, 8, 0, 15, 40, 1, 1, leather).
cloak(rnd_cloak, "cloak of protection", 1, protection, 9, 0, 10, 50, 3, 3, cloth).
cloak(rnd_cloak, "cloak of invisibility", 1, invis, 10, 0, 10, 60, 1, 1, cloth).
cloak(rnd_cloak, "cloak of magic resistance", 1, antimagic, 2, 0, 10, 60, 1, 1, cloth).
cloak(rnd_cloak, "cloak of displacement", 1, displaced, 10, 0, 10, 50, 1, 1, cloth).
% shield(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL)
shield(129, "small shield", 0, 0, 6, 0, 30, 3, 1, 0, wood).
shield(130, "elven shield", 0, 0, 2, 0, 40, 7, 2, 0, wood).
shield(131, "uruk-hai shield", 0, 0, 2, 0, 50, 7, 1, 0, iron).
shield(132, "orcish shield", 0, 0, 2, 0, 50, 7, 1, 0, iron).
shield(133, "large shield", 0, 0, 7, 0, 100, 10, 2, 0, iron).
shield(134, "dwarvish roundshield", 0, 0, 4, 0, 100, 10, 2, 0, iron).
shield(135, "shield of reflection", 1, reflecting, 3, 0, 50, 50, 2, 0, silver).
% gloves(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL)
gloves(rnd_gloves, "leather gloves", 0, 0, 16, 1, 10, 8, 1, 0, leather).
gloves(rnd_gloves, "gauntlets of fumbling", 1, fumbling, 8, 1, 10, 50, 1, 0, leather).
gloves(rnd_gloves, "gauntlets of power", 1, 0, 8, 1, 30, 50, 1, 0, iron).
gloves(rnd_gloves, "gauntlets of dexterity", 1, 0, 8, 1, 10, 50, 1, 0, leather).
% boots(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, DELAY, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL)
boots(140, "low boots", 0, 0, 25, 2, 10, 8, 1, 0, leather).
boots(141, "iron shoes", 0, 0, 7, 2, 50, 16, 2, 0, iron).
boots(142, "high boots", 0, 0, 15, 2, 20, 12, 2, 0, leather).
boots(rnd_boots, "speed boots", 1, fast, 12, 2, 20, 50, 1, 0, leather).
boots(rnd_boots, "water walking boots", 1, wwalking, 12, 2, 15, 50, 1, 0, leather).
boots(rnd_boots, "jumping boots", 1, jumping, 12, 2, 20, 50, 1, 0, leather).
boots(rnd_boots, "elven boots", 1, stealth, 12, 2, 15, 8, 1, 0, leather).
boots(rnd_boots, "kicking boots", 1, 0, 12, 2, 50, 8, 1, 0, iron).
boots(rnd_boots, "fumble boots", 1, fumbling, 12, 2, 20, 30, 1, 0, leather).
boots(rnd_boots, "levitation boots", 1, levitation, 12, 2, 15, 30, 1, 0, leather).
% ring(NAME, POWER, BASE_PRICE, MAGICAL, SPEC, MOHS)
ring("adornment", adorned, 100, 1, 1, 2).
ring("gain strength", 0, 150, 1, 1, 7).
ring("gain constitution", 0, 150, 1, 1, 7).
ring("increase accuracy", 0, 150, 1, 1, 4).
ring("increase damage", 0, 150, 1, 1, 4).
ring("protection", protection, 100, 1, 1, 7).
ring("regeneration", regeneration, 200, 1, 0, 6).
ring("searching", searching, 200, 1, 0, 6).
ring("stealth", stealth, 100, 1, 0, 6).
ring("sustain ability", fixed_abil, 100, 1, 0, 4).
ring("levitation", levitation, 200, 1, 0, 7).
ring("hunger", hunger, 100, 1, 0, 8).
ring("aggravate monster", aggravate_monster, 150, 1, 0, 9).
ring("conflict", conflict, 300, 1, 0, 9).
ring("warning", warning, 100, 1, 0, 10).
ring("poison resistance", poison_res, 150, 1, 0, 4).
ring("fire resistance", fire_res, 200, 1, 0, 5).
ring("cold resistance", cold_res, 150, 1, 0, 4).
ring("shock resistance", shock_res, 150, 1, 0, 3).
ring("free action", free_action, 200, 1, 0, 6).
ring("slow digestion", slow_digestion, 200, 1, 0, 8).
ring("teleportation", teleport, 200, 1, 0, 3).
ring("teleport control", teleport_control, 300, 1, 0, 3).
ring("polymorph", polymorph, 300, 1, 0, 4).
ring("polymorph control", polymorph_control, 300, 1, 0, 8).
ring("invisibility", invis, 150, 1, 0, 5).
ring("see invisible", see_invis, 150, 1, 0, 5).
ring("protection from shape changers", prot_from_shape_changers, 100, 1, 0, 5).
% amulet(NAME, POWER, ABOUNDANCE)
amulet("amulet of esp", telepat, 175).
amulet("amulet of life saving", lifesaved, 75).
amulet("amulet of strangulation", strangled, 135).
amulet("amulet of restful sleep", sleepy, 135).
amulet("amulet versus poison", poison_res, 165).
amulet("amulet of change", 0, 130).
amulet("amulet of unchanging", unchanging, 45).
amulet("amulet of reflection", reflecting, 75).
amulet("amulet of magical breathing", magical_breathing, 65).
% Containers and weptools are TOOL_CLASS

% container(APPEARENCE, NAME, MAGICAL, CHG, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL)
container(189, "large box", 0, 0, 40, 350, 8, wood).
container(190, "chest", 0, 0, 35, 600, 16, wood).
container(191, "ice box", 0, 0, 5, 900, 42, plastic).
container(192, "sack", 0, 0, 35, 15, 2, cloth).
container(193, "oilskin sack", 0, 0, 5, 15, 100, cloth).
container(194, "bag of holding", 1, 0, 20, 15, 100, cloth).
container(195, "bag of tricks", 1, 1, 20, 15, 100, cloth).
% weptool(APPEARENCE, NAME, MAGICAL, BI, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, SUB, MATERIAL, DAMAGE_TO_SMALL_MONSTERS, DAMAGE_TO_LARGE_MONSTERS)
weptool(234, "pick-axe", 0, 0, 20, 100, 50, 0, p_pick_axe, iron, 3.5, 2.0).
weptool(235, "grappling hook", 0, 0, 5, 30, 50, 0, p_flail, iron, 1.5, 3.5).
weptool(236, "unicorn horn", 1, 1, 0, 20, 100, 1, p_unicorn_horn, bone, 6.5, 6.5).
% tool(APPEARENCE, NAME, MRG, MAGICAL, CHG, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL)
tool(196, "skeleton key", 0, 0, 0, 80, 3, 10, iron).
tool(197, "lock pick", 0, 0, 0, 60, 4, 20, iron).
tool(198, "credit card", 0, 0, 0, 15, 1, 10, plastic).
tool(199, "tallow candle", 1, 0, 0, 20, 2, 10, wax).
tool(200, "wax candle", 1, 0, 0, 5, 2, 20, wax).
tool(201, "brass lantern", 0, 0, 0, 30, 30, 12, copper).
tool(202, "oil lamp", 0, 0, 0, 45, 20, 10, copper).
tool(203, "magic lamp", 0, 1, 0, 15, 20, 50, copper).
tool(204, "expensive camera", 0, 0, 1, 15, 12, 200, plastic).
tool(205, "mirror", 0, 0, 0, 45, 13, 10, glass).
tool(206, "crystal ball", 0, 1, 1, 15, 150, 60, glass).
tool(207, "lenses", 0, 0, 0, 5, 3, 80, glass).
tool(208, "blindfold", 0, 0, 0, 50, 2, 20, cloth).
tool(209, "towel", 0, 0, 0, 50, 2, 50, cloth).
tool(210, "saddle", 0, 0, 0, 5, 200, 150, leather).
tool(211, "leash", 0, 0, 0, 65, 12, 20, leather).
tool(212, "stethoscope", 0, 0, 0, 25, 4, 75, iron).
tool(213, "tinning kit", 0, 0, 1, 15, 100, 30, iron).
tool(214, "tin opener", 0, 0, 0, 35, 4, 30, iron).
tool(215, "can of grease", 0, 0, 1, 15, 15, 20, iron).
tool(216, "figurine", 0, 1, 0, 25, 50, 80, mineral).
tool(217, "magic marker", 0, 1, 1, 15, 2, 50, plastic).
tool(218, "land mine", 0, 0, 0, 0, 300, 180, iron).
tool(219, "beartrap", 0, 0, 0, 0, 200, 60, iron).
tool(220, "tin whistle", 0, 0, 0, 100, 3, 10, metal).
tool(221, "magic whistle", 0, 1, 0, 30, 3, 10, metal).
tool(222, "wooden flute", 0, 0, 0, 4, 5, 12, wood).
tool(223, "magic flute", 0, 1, 1, 2, 5, 36, wood).
tool(224, "tooled horn", 0, 0, 0, 5, 18, 15, bone).
tool(225, "frost horn", 0, 1, 1, 2, 18, 50, bone).
tool(226, "fire horn", 0, 1, 1, 2, 18, 50, bone).
tool(227, "horn of plenty", 0, 1, 1, 2, 18, 50, bone).
tool(228, "wooden harp", 0, 0, 0, 4, 30, 50, wood).
tool(229, "magic harp", 0, 1, 1, 2, 30, 50, wood).
tool(230, "bell", 0, 0, 0, 2, 30, 50, copper).
tool(231, "bugle", 0, 0, 0, 4, 10, 15, copper).
tool(232, "leather drum", 0, 0, 0, 4, 25, 25, leather).
tool(233, "drum of earthquake", 0, 1, 1, 2, 25, 25, leather).
% questitem(APPEARENCE, NAME, WEIGHT)
questitem(237, "candelabrum of invocation", 10).
questitem(238, "bell of opening", 10).
% food(APPEARENCE, NAME, ABOUNDANCE, DELAY, WEIGHT, UNK, TIN, NUTRITION)
food(239, "tripe ration", 140, 2, 10, 0, flesh, 200).
food(240, "corpse", 0, 1, none, 0, flesh, 0).
food(241, "egg", 85, 1, 1, 1, flesh, 80).
food(242, "meatball", 0, 1, 1, 0, flesh, 5).
food(243, "meat stick", 0, 1, 1, 0, flesh, 5).
food(244, "huge chunk of meat", 0, 20, 400, 0, flesh, 2000).
food(245, "meat ring", 0, 1, 5, 0, flesh, 5).
food(246, "glob of gray ooze", 0, 2, 20, 0, flesh, 20).
food(247, "glob of brown pudding", 0, 2, 20, 0, flesh, 20).
food(248, "glob of green slime", 0, 2, 20, 0, flesh, 20).
food(249, "glob of black pudding", 0, 2, 20, 0, flesh, 20).
food(250, "kelp frond", 0, 1, 1, 0, veggy, 30).
food(251, "eucalyptus leaf", 3, 1, 1, 0, veggy, 30).
food(252, "apple", 15, 1, 2, 0, veggy, 50).
food(253, "orange", 10, 1, 2, 0, veggy, 80).
food(254, "pear", 10, 1, 2, 0, veggy, 50).
food(255, "melon", 10, 1, 5, 0, veggy, 100).
food(256, "banana", 10, 1, 2, 0, veggy, 80).
food(257, "carrot", 15, 1, 2, 0, veggy, 50).
food(258, "sprig of wolfsbane", 7, 1, 1, 0, veggy, 40).
food(259, "clove of garlic", 7, 1, 1, 0, veggy, 40).
food(260, "slime mold", 75, 1, 5, 0, veggy, 250).
food(261, "lump of royal jelly", 0, 1, 2, 0, veggy, 200).
food(262, "cream pie", 25, 1, 10, 0, veggy, 100).
food(263, "candy bar", 13, 1, 2, 0, veggy, 100).
food(264, "fortune cookie", 55, 1, 1, 0, veggy, 40).
food(265, "pancake", 25, 2, 2, 0, veggy, 200).
food(266, "lembas wafer", 20, 2, 5, 0, veggy, 800).
food(267, "cram ration", 20, 3, 15, 0, veggy, 600).
food(268, "food ration", 380, 5, 20, 0, veggy, 800).
food(269, "K-ration", 0, 1, 10, 0, veggy, 400).
food(270, "C-ration", 0, 1, 10, 0, veggy, 300).
food(271, "tin", 75, 0, 10, 1, metal, 0).
% potion(APPEARENCE, NAME, MAGICAL, POWER, ABOUNDANCE, BASE_PRICE)
potion(297, "water", 0, 0, 92, 100).
potion(rnd_potion, "gain ability", 1, 0, 42, 300).
potion(rnd_potion, "restore ability", 1, 0, 40, 100).
potion(rnd_potion, "confusion", 1, confusion, 42, 100).
potion(rnd_potion, "blindness", 1, blinded, 40, 150).
potion(rnd_potion, "paralysis", 1, 0, 42, 300).
potion(rnd_potion, "speed", 1, fast, 42, 200).
potion(rnd_potion, "levitation", 1, levitation, 42, 200).
potion(rnd_potion, "hallucination", 1, halluc, 40, 100).
potion(rnd_potion, "invisibility", 1, invis, 40, 150).
potion(rnd_potion, "see invisible", 1, see_invis, 42, 50).
potion(rnd_potion, "healing", 1, 0, 57, 100).
potion(rnd_potion, "extra healing", 1, 0, 47, 100).
potion(rnd_potion, "gain level", 1, 0, 20, 300).
potion(rnd_potion, "enlightenment", 1, 0, 20, 200).
potion(rnd_potion, "monster detection", 1, 0, 40, 150).
potion(rnd_potion, "object detection", 1, 0, 42, 150).
potion(rnd_potion, "gain energy", 1, 0, 42, 150).
potion(rnd_potion, "sleeping", 1, 0, 42, 100).
potion(rnd_potion, "full healing", 1, 0, 10, 200).
potion(rnd_potion, "polymorph", 1, 0, 10, 200).
potion(rnd_potion, "booze", 0, 0, 42, 50).
potion(rnd_potion, "sickness", 0, 0, 42, 50).
potion(rnd_potion, "fruit juice", 0, 0, 42, 50).
potion(rnd_potion, "acid", 0, 0, 10, 250).
potion(rnd_potion, "oil", 0, 0, 30, 250).
% scroll(APPEARENCE, NAME, MAGICAL, ABOUNDANCE, BASE_PRICE)
scroll(rnd_scroll, "enchant armor", 1, 63, 80).
scroll(rnd_scroll, "destroy armor", 1, 45, 100).
scroll(rnd_scroll, "confuse monster", 1, 53, 100).
scroll(rnd_scroll, "scare monster", 1, 35, 100).
scroll(rnd_scroll, "remove curse", 1, 65, 80).
scroll(rnd_scroll, "enchant weapon", 1, 80, 60).
scroll(rnd_scroll, "create monster", 1, 45, 200).
scroll(rnd_scroll, "taming", 1, 15, 200).
scroll(rnd_scroll, "genocide", 1, 15, 300).
scroll(rnd_scroll, "light", 1, 90, 50).
scroll(rnd_scroll, "teleportation", 1, 55, 100).
scroll(rnd_scroll, "gold detection", 1, 33, 100).
scroll(rnd_scroll, "food detection", 1, 25, 100).
scroll(rnd_scroll, "identify", 1, 180, 20).
scroll(rnd_scroll, "magic mapping", 1, 45, 100).
scroll(rnd_scroll, "amnesia", 1, 35, 200).
scroll(rnd_scroll, "fire", 1, 30, 100).
scroll(rnd_scroll, "earth", 1, 18, 200).
scroll(rnd_scroll, "punishment", 1, 15, 300).
scroll(rnd_scroll, "charging", 1, 15, 300).
scroll(rnd_scroll, "stinking cloud", 1, 15, 300).
scroll(339, "blank paper", 0, 28, 60).
% spell(APPEARENCE, NAME, SUB, ABOUNDANCE, DELAY, LEVEL, MAGICAL, DIR)
spell(rnd_spell, "dig", p_matter_spell, 20, 6, 5, 1, ray).
spell(rnd_spell, "magic missile", p_attack_spell, 45, 2, 2, 1, ray).
spell(rnd_spell, "fireball", p_attack_spell, 20, 4, 4, 1, ray).
spell(rnd_spell, "cone of cold", p_attack_spell, 10, 7, 4, 1, ray).
spell(rnd_spell, "sleep", p_enchantment_spell, 50, 1, 1, 1, ray).
spell(rnd_spell, "finger of death", p_attack_spell, 5, 10, 7, 1, ray).
spell(rnd_spell, "light", p_divination_spell, 45, 1, 1, 1, nodir).
spell(rnd_spell, "detect monsters", p_divination_spell, 43, 1, 1, 1, nodir).
spell(rnd_spell, "healing", p_healing_spell, 40, 2, 1, 1, immediate).
spell(rnd_spell, "knock", p_matter_spell, 35, 1, 1, 1, immediate).
spell(rnd_spell, "force bolt", p_attack_spell, 35, 2, 1, 1, immediate).
spell(rnd_spell, "confuse monster", p_enchantment_spell, 30, 2, 2, 1, immediate).
spell(rnd_spell, "cure blindness", p_healing_spell, 25, 2, 2, 1, immediate).
spell(rnd_spell, "drain life", p_attack_spell, 10, 2, 2, 1, immediate).
spell(rnd_spell, "slow monster", p_enchantment_spell, 30, 2, 2, 1, immediate).
spell(rnd_spell, "wizard lock", p_matter_spell, 30, 3, 2, 1, immediate).
spell(rnd_spell, "create monster", p_cleric_spell, 35, 3, 2, 1, nodir).
spell(rnd_spell, "detect food", p_divination_spell, 30, 3, 2, 1, nodir).
spell(rnd_spell, "cause fear", p_enchantment_spell, 25, 3, 3, 1, nodir).
spell(rnd_spell, "clairvoyance", p_divination_spell, 15, 3, 3, 1, nodir).
spell(rnd_spell, "cure sickness", p_healing_spell, 32, 3, 3, 1, nodir).
spell(rnd_spell, "charm monster", p_enchantment_spell, 20, 3, 3, 1, immediate).
spell(rnd_spell, "haste self", p_escape_spell, 33, 4, 3, 1, nodir).
spell(rnd_spell, "detect unseen", p_divination_spell, 20, 4, 3, 1, nodir).
spell(rnd_spell, "levitation", p_escape_spell, 20, 4, 4, 1, nodir).
spell(rnd_spell, "extra healing", p_healing_spell, 27, 5, 3, 1, immediate).
spell(rnd_spell, "restore ability", p_healing_spell, 25, 5, 4, 1, nodir).
spell(rnd_spell, "invisibility", p_escape_spell, 25, 5, 4, 1, nodir).
spell(rnd_spell, "detect treasure", p_divination_spell, 20, 5, 4, 1, nodir).
spell(rnd_spell, "remove curse", p_cleric_spell, 25, 5, 3, 1, nodir).
spell(rnd_spell, "magic mapping", p_divination_spell, 18, 7, 5, 1, nodir).
spell(rnd_spell, "identify", p_divination_spell, 20, 6, 3, 1, nodir).
spell(rnd_spell, "turn undead", p_cleric_spell, 16, 8, 6, 1, immediate).
spell(rnd_spell, "polymorph", p_matter_spell, 10, 8, 6, 1, immediate).
spell(rnd_spell, "teleport away", p_escape_spell, 15, 6, 6, 1, immediate).
spell(rnd_spell, "create familiar", p_cleric_spell, 10, 7, 6, 1, nodir).
spell(rnd_spell, "cancellation", p_matter_spell, 15, 8, 7, 1, immediate).
spell(rnd_spell, "protection", p_cleric_spell, 18, 3, 1, 1, nodir).
spell(rnd_spell, "jumping", p_escape_spell, 20, 3, 1, 1, immediate).
spell(rnd_spell, "stone to flesh", p_healing_spell, 15, 1, 3, 1, immediate).
spell(380, "blank paper", p_none, 18, 0, 0, 0, 0).

% wand(NAME, ABOUNDANCE, BASE_PRICE, MAGICAL, DIR)
wand("light", 95, 100, 1, nodir).
wand("secret door detection", 50, 150, 1, nodir).
wand("enlightenment", 15, 150, 1, nodir).
wand("create monster", 45, 200, 1, nodir).
wand("wishing", 5, 500, 1, nodir).
wand("nothing", 25, 100, 0, immediate).
wand("striking", 75, 150, 1, immediate).
wand("make invisible", 45, 150, 1, immediate).
wand("slow monster", 50, 150, 1, immediate).
wand("speed monster", 50, 150, 1, immediate).
wand("undead turning", 50, 150, 1, immediate).
wand("polymorph", 45, 200, 1, immediate).
wand("cancellation", 45, 200, 1, immediate).
wand("teleportation", 45, 200, 1, immediate).
wand("opening", 25, 150, 1, immediate).
wand("locking", 25, 150, 1, immediate).
wand("probing", 30, 150, 1, immediate).
wand("digging", 55, 150, 1, ray).
wand("magic missile", 50, 150, 1, ray).
wand("fire", 40, 175, 1, ray).
wand("cold", 40, 175, 1, ray).
wand("sleep", 50, 175, 1, ray).
wand("death", 5, 500, 1, ray).
wand("lightning", 40, 175, 1, ray).

% gem(APPEARENCE, NAME, ABOUNDANCE, WEIGHT, GVAL, NUTR, MOHS, MATERIAL)
gem(411, "dilithium crystal", 2, 1, 4500, 15, 5, gemstone).
gem(412, "diamond", 3, 1, 4000, 15, 10, gemstone).
gem(413, "ruby", 4, 1, 3500, 15, 9, gemstone).
gem(414, "jacinth", 3, 1, 3250, 15, 9, gemstone).
gem(415, "sapphire", 4, 1, 3000, 15, 9, gemstone).
gem(416, "black opal", 3, 1, 2500, 15, 8, gemstone).
gem(417, "emerald", 5, 1, 2500, 15, 8, gemstone).
gem(rnd_turquoise, "turquoise", 6, 1, 2000, 15, 6, gemstone).
gem(419, "citrine", 4, 1, 1500, 15, 6, gemstone).
gem(rnd_aquamarine, "aquamarine", 6, 1, 1500, 15, 8, gemstone).
gem(421, "amber", 8, 1, 1000, 15, 2, gemstone).
gem(422, "topaz", 10, 1, 900, 15, 8, gemstone).
gem(423, "jet", 6, 1, 850, 15, 7, gemstone).
gem(424, "opal", 12, 1, 800, 15, 6, gemstone).
gem(425, "chrysoberyl", 8, 1, 700, 15, 5, gemstone).
gem(426, "garnet", 12, 1, 700, 15, 7, gemstone).
gem(427, "amethyst", 14, 1, 600, 15, 7, gemstone).
gem(428, "jasper", 15, 1, 500, 15, 7, gemstone).
gem(rnd_fluorite, "fluorite", 15, 1, 400, 15, 4, gemstone).
gem(430, "obsidian", 9, 1, 200, 15, 6, gemstone).
gem(431, "agate", 12, 1, 200, 15, 6, gemstone).
gem(432, "jade", 10, 1, 300, 15, 6, gemstone).
gem(433, "worthless piece of white glass", 77, 1, 0, 6, 5, glass).
gem(434, "worthless piece of blue glass", 77, 1, 0, 6, 5, glass).
gem(435, "worthless piece of red glass", 77, 1, 0, 6, 5, glass).
gem(436, "worthless piece of yellowish brown glass", 77, 1, 0, 6, 5, glass).
gem(437, "worthless piece of orange glass", 76, 1, 0, 6, 5, glass).
gem(438, "worthless piece of yellow glass", 77, 1, 0, 6, 5, glass).
gem(439, "worthless piece of black glass", 76, 1, 0, 6, 5, glass).
gem(440, "worthless piece of green glass", 77, 1, 0, 6, 5, glass).
gem(441, "worthless piece of violet glass", 77, 1, 0, 6, 5, glass).
% rock(APPEARENCE, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, MAGICAL, NUTR, MOHS)
rock(442, "luckstone", 10, 10, 60, 1, 10, 7).
rock(443, "loadstone", 10, 500, 1, 1, 10, 6).
rock(444, "touchstone", 8, 10, 45, 1, 10, 6).
rock(445, "flint", 10, 10, 1, 0, 10, 7).
rock(446, "rock", 100, 10, 0, 0, 10, 7).
% coin(NAME, ABOUNDANCE, MATERIAL, WORTH, WEIGHT)
coin("gold piece", 1000, gold, 1, 0.01).
% object/7 is a unified view of all objects
% object(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID)
object(amulet, NAME, ABOUNDANCE, 150, 20, iron, APPEARENCE_ID) :-
    amulet(NAME, _, ABOUNDANCE),
    % all amulet have random appearence
    can_be(rnd_amulet, APPEARENCE_ID).
object(ring, NAME, 1, BASE_PRICE, 3, MATERIAL, APPEARENCE_ID) :-
    ring(NAME, _, BASE_PRICE, _, _, _),
    can_be(rnd_ring, APPEARENCE_ID),
    % material depends on appearence
    material(APPEARENCE_ID, MATERIAL).
object(potion, NAME, ABOUNDANCE, BASE_PRICE, 20, glass, APPEARENCE_ID) :-
    potion(APPEARENCE, NAME, _, _, ABOUNDANCE, BASE_PRICE),
    can_be(APPEARENCE, APPEARENCE_ID).
object(spell, NAME, ABOUNDANCE, BASE_PRICE, 50, MATERIAL, APPEARENCE_ID) :-
    spell(APPEARENCE, NAME, _, ABOUNDANCE, _, LEVEL, _, _),
    can_be(APPEARENCE, APPEARENCE_ID),
    material(APPEARENCE_ID, MATERIAL),
    BASE_PRICE is LEVEL*100.
object(scroll, NAME, ABOUNDANCE, BASE_PRICE, 5, paper, APPEARENCE_ID) :-
    scroll(APPEARENCE, NAME, _, ABOUNDANCE, BASE_PRICE),
    can_be(APPEARENCE, APPEARENCE_ID).
object(wand, NAME, ABOUNDANCE, BASE_PRICE, 7, MATERIAL, APPEARENCE_ID) :-
    wand(NAME, ABOUNDANCE, BASE_PRICE, _, _),
    % all wands have random appearence
    can_be(rnd_wand, APPEARENCE_ID),
    material(APPEARENCE_ID, MATERIAL).
object(gem, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :- 
    gem(APPEARENCE, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, _, _, MATERIAL),
    can_be(APPEARENCE, APPEARENCE_ID).
object(launcher, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :- 
    launcher(APPEARENCE_ID, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL, _).
object(container, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :- 
    container(APPEARENCE_ID, NAME, _, _, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL).
object(tool, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :- 
    tool(APPEARENCE_ID, NAME, _, _, _, ABOUNDANCE, WEIGHT, BASE_PRICE, MATERIAL).
object(food, NAME, ABOUNDANCE, 0/*TODO*/, WEIGHT, MATERIAL, APPEARENCE_ID) :- 
    food(APPEARENCE_ID, NAME, ABOUNDANCE, _, WEIGHT, _, MATERIAL, _).
object(rock, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, mineral, APPEARENCE_ID) :- 
    rock(APPEARENCE_ID, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, _, _, _).
object(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :-
    armor(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, _, _).
object(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID) :-
    damaging_object(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, _, _, _, _).
% armor/9 is a unified view of all defensive objects that provide armor class
% armor(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, ARMOR_CLASS, MAGIC_CANCELLATION)
armor(ARMOR, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, AC, CAN) :-
    member(ARMOR, [helm, gloves, cloak, boots]),
    call(ARMOR, APPEARENCE, NAME, _, _, ABOUNDANCE, _, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL),
    can_be(APPEARENCE, APPEARENCE_ID).
armor(body_armr, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, AC, CAN) :-
    body_armr(APPEARENCE_ID, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, AC, CAN, _, MATERIAL).
armor(shield, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, AC, CAN) :- 
    shield(APPEARENCE_ID, NAME, _, _, ABOUNDANCE, _, WEIGHT, BASE_PRICE, AC, CAN, MATERIAL).
armor(drgn_armr, NAME, 0, BASE_PRICE, 40, dragon_hide, APPEARENCE_ID, AC, 0) :- 
    drgn_armr(APPEARENCE_ID, NAME, _, _, BASE_PRICE, AC).
% damaging_object/11 is a unified view of all objects that can be used to deal damage by throwing, firing and melee
% damaging_object(CATEGORY, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, SKILL, HITBONUS, DMG_SMALL, DMG_LARGE)
damaging_object(projectile, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, SKILL, HITBONUS, DMG_SMALL, DMG_LARGE) :- 
    projectile(APPEARENCE_ID, NAME, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, MATERIAL, SKILL, DMG_SMALL, DMG_LARGE).
damaging_object(weapon, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, SKILL, HITBONUS, DMG_SMALL, DMG_LARGE) :- 
    weapon(APPEARENCE_ID, NAME, _, _, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, SKILL, MATERIAL, DMG_SMALL, DMG_LARGE).
damaging_object(weptool, NAME, ABOUNDANCE, BASE_PRICE, WEIGHT, MATERIAL, APPEARENCE_ID, SKILL, HITBONUS, DMG_SMALL, DMG_LARGE) :- 
    weptool(APPEARENCE_ID, NAME, _, _, ABOUNDANCE, WEIGHT, BASE_PRICE, HITBONUS, SKILL, MATERIAL, DMG_SMALL, DMG_LARGE).
% charisma affects the price of the items you buy in a shop
% price_multiplier(CHARISMA_RANGE, MULTIPLIER/DIVISOR)
price_multiplier(0-5, 2/1).
price_multiplier(6-7, 3/2).
price_multiplier(8-10, 4/3).
price_multiplier(11-15, 1/1).
price_multiplier(16-17, 3/4).
price_multiplier(18-18, 2/3).
price_multiplier(19-25, 1/2).

% buy_price(APPEARENCE_ID, CHARISMA, OBJ, COST, EXPENSIVE)
buy_price(APPEARENCE_ID, CHARISMA, OBJ, COST, EXPENSIVE) :- 
    price_multiplier(MIN-MAX, M/D),
    between(MIN, MAX, CHARISMA),
    object(_, OBJ, _, BASE_PRICE, _, _, APPEARENCE_ID),
    between(0, 2, EXPENSIVE),
    COST is (
	(BASE_PRICE * M * 4**EXPENSIVE * 10)
	div
	(D * 3**EXPENSIVE)
	+ 5) div 10.
% sell_price(APPEARENCE_ID, OBJ, OFFER, DISCOUNT)
sell_price(APPEARENCE_ID, OBJ, OFFER, DISCOUNT) :-
    object(_, OBJ, _, BASE_PRICE, _, _, APPEARENCE_ID),
    between(0, 1, DISCOUNT),
    OFFER is (
	(BASE_PRICE * 3**DISCOUNT * 10)
	div
	(2 * 4**DISCOUNT)
	+ 5) div 10.
% rnd_range(RND_APPEARENCE, APPEARECE_RANGE)
rnd_range(rnd_potion, 272-296).
rnd_range(rnd_scroll, 298-338).
rnd_range(rnd_spell, 340-379).
rnd_range(rnd_wand, 383-409).
rnd_range(rnd_ring, 150-177).
rnd_range(rnd_helm, 78-81).
rnd_range(rnd_cloak, 125-128).
rnd_range(rnd_gloves, 136-139).
rnd_range(rnd_boots, 143-149).
rnd_range(rnd_amulet, 178-186).
% can_be(APPEARENCE, APPEARENCE_ID)
can_be(ID, ID) :- integer(ID).
can_be(RND, ID) :- rnd_range(RND, MIN-MAX), between(MIN, MAX, ID).
% gems random appearences
can_be(rnd_turquoise, 415).
can_be(rnd_turquoise, 418).
can_be(rnd_aquamarine, 415).
can_be(rnd_aquamarine, 420).
can_be(rnd_fluorite, 412).
can_be(rnd_fluorite, 415).
can_be(rnd_fluorite, 417).
can_be(rnd_fluorite, 429).
% description(APPEARENCE_ID, DESC)
% only unknown object need a description
description(2, "runed arrow").
description(3, "crude arrow").
description(5, "bamboo arrow").
description(8, "throwing star").
description(11, "runed spear").
description(12, "crude spear").
description(13, "stout spear").
description(15, "throwing spear").
description(18, "runed dagger").
description(19, "crude dagger").
description(28, "double-headed axe").
description(30, "runed short sword").
description(31, "crude short sword").
description(32, "broad short sword").
description(33, "curved sword").
description(36, "runed broadsword").
description(39, "samurai sword").
description(40, "long samurai sword").
description(41, "runed broadsword").
description(42, "vulgar polearm").
description(43, "hilted polearm").
description(44, "forked polearm").
description(45, "single-edged polearm").
description(47, "angled poleaxe").
description(48, "long poleaxe").
description(49, "pole cleaver").
description(50, "broad pick").
description(51, "pole sickle").
description(52, "pruning hook").
description(53, "hooked polearm").
description(54, "pronged polearm").
description(55, "beaked polearm").
description(61, "staff").
description(62, "thonged club").
description(66, "runed bow").
description(67, "crude bow").
description(68, "long bow").
description(71, "leather hat").
description(72, "iron skull cap").
description(73, "hard hat").
description(75, "conical hat").
description(76, "conical hat").
% rnd_helm start
description(78, "plumed helmet").
description(79, "etched helmet").
description(80, "crested helmet").
description(81, "visored helmet").
% rnd_helm end
description(108, "crude chain mail").
description(112, "crude ring mail").
description(118, "faded pall").
description(119, "coarse mantelet").
description(120, "hooded cloak").
description(121, "slippery cloak").
description(123, "apron").
% rnd_cloak start
description(125, "tattered cape").
description(126, "opera cloak").
description(127, "ornamental cope").
description(128, "piece of cloth").
% rnd_cloak end
description(130, "blue and green shield").
description(131, "white-handed shield").
description(132, "red-eyed shield").
description(134, "large round shield").
description(135, "polished silver shield").
% rnd_gloves start
description(136, "old gloves").
description(137, "padded gloves").
description(138, "riding gloves").
description(139, "fencing gloves").
% rnd_gloves end
description(140, "walking shoes").
description(141, "hard shoes").
description(142, "jackboots").
% rnd_boots start
description(143, "combat boots").
description(144, "jungle boots").
description(145, "hiking boots").
description(146, "mud boots").
description(147, "buckled boots").
description(148, "riding boots").
description(149, "snow boots").
% rnd_boots end
% rnd_ring start
description(150, "wooden").
description(151, "granite").
description(152, "opal").
description(153, "clay").
description(154, "coral").
description(155, "black onyx").
description(156, "moonstone").
description(157, "tiger eye").
description(158, "jade").
description(159, "bronze").
description(160, "agate").
description(161, "topaz").
description(162, "sapphire").
description(163, "ruby").
description(164, "diamond").
description(165, "pearl").
description(166, "iron").
description(167, "brass").
description(168, "copper").
description(169, "twisted").
description(170, "steel").
description(171, "silver").
description(172, "gold").
description(173, "ivory").
description(174, "emerald").
description(175, "wire").
description(176, "engagement").
description(177, "shiny").
% rnd_ring end
% rnd_amulet start
description(178, "circular").
description(179, "spherical").
description(180, "oval").
description(181, "triangular").
description(182, "pyramidal").
description(183, "square").
description(184, "concave").
description(185, "hexagonal").
description(186, "octagonal").
% rnd_amulet end
description(187, "Amulet of Yendor").
description(188, "Amulet of Yendor").
description(192, "bag").
description(193, "bag").
description(194, "bag").
description(195, "bag").
description(196, "key").
description(199, "candle").
description(200, "candle").
description(202, "lamp").
description(203, "lamp").
description(205, "looking glass").
description(206, "glass orb").
description(220, "whistle").
description(221, "whistle").
description(222, "flute").
description(223, "flute").
description(224, "horn").
description(225, "horn").
description(226, "horn").
description(227, "horn").
description(228, "harp").
description(229, "harp").
description(232, "drum").
description(233, "drum").
description(235, "iron hook").
description(237, "candelabrum").
description(238, "silver bell").
% rnd_potion start
description(272, "ruby").
description(273, "pink").
description(274, "orange").
description(275, "yellow").
description(276, "emerald").
description(277, "dark green").
description(278, "cyan").
description(279, "sky blue").
description(280, "brilliant blue").
description(281, "magenta").
description(282, "purple-red").
description(283, "puce").
description(284, "milky").
description(285, "swirly").
description(286, "bubbly").
description(287, "smoky").
description(288, "cloudy").
description(289, "effervescent").
description(290, "black").
description(291, "golden").
description(292, "brown").
description(293, "fizzy").
description(294, "dark").
description(295, "white").
description(296, "murky").
% rnd_potion end
description(297, "clear").
% rnd_scroll start
description(298, "ZELGO MER").
description(299, "JUYED AWK YACC").
description(300, "NR 9").
description(301, "XIXAXA XOXAXA XUXAXA").
description(302, "PRATYAVAYAH").
description(303, "DAIYEN FOOELS").
description(304, "LEP GEX VEN ZEA").
description(305, "PRIRUTSENIE").
description(306, "ELBIB YLOH").
description(307, "VERR YED HORRE").
description(308, "VENZAR BORGAVVE").
description(309, "THARR").
description(310, "YUM YUM").
description(311, "KERNOD WEL").
description(312, "ELAM EBOW").
description(313, "DUAM XNAHT").
description(314, "ANDOVA BEGARIN").
description(315, "KIRJE").
description(316, "VE FORBRYDERNE").
description(317, "HACKEM MUCHE").
description(318, "VELOX NEB").
description(319, "FOOBIE BLETCH").
description(320, "TEMOV").
description(321, "GARVEN DEH").
description(322, "READ ME").
description(323, "ETAOIN SHRDLU").
description(324, "LOREM IPSUM").
description(325, "FNORD").
description(326, "KO BATE").
description(327, "ABRA KA DABRA").
description(328, "ASHPD SODALG").
description(329, "ZLORFIK").
description(330, "GNIK SISI VLE").
description(331, "HAPAX LEGOMENON").
description(332, "EIRIS SAZUN IDISI").
description(333, "PHOL ENDE WODAN").
description(334, "GHOTI").
description(335, "MAPIRO MAHAMA DIROMAT").
description(336, "VAS CORP BET MANI").
description(337, "XOR OTA").
description(338, "STRC PRST SKRZ KRK").
% rnd_scroll end
description(339, "unlabeled").
% rnd_spell start
description(340, "parchment").
description(341, "vellum").
description(342, "ragged").
description(343, "dog eared").
description(344, "mottled").
description(345, "stained").
description(346, "cloth").
description(347, "leathery").
description(348, "white").
description(349, "pink").
description(350, "red").
description(351, "orange").
description(352, "yellow").
description(353, "velvet").
description(354, "light green").
description(355, "dark green").
description(356, "turquoise").
description(357, "cyan").
description(358, "light blue").
description(359, "dark blue").
description(360, "indigo").
description(361, "magenta").
description(362, "purple").
description(363, "violet").
description(364, "tan").
description(365, "plaid").
description(366, "light brown").
description(367, "dark brown").
description(368, "gray").
description(369, "wrinkled").
description(370, "dusty").
description(371, "bronze").
description(372, "copper").
description(373, "silver").
description(374, "gold").
description(375, "glittering").
description(376, "shining").
description(377, "dull").
description(378, "thin").
description(379, "thick").
% rnd_spell end
description(380, "plain").
description(381, "paperback").
description(382, "papyrus").
% rnd_wand start
description(383, "glass").
description(384, "balsa").
description(385, "crystal").
description(386, "maple").
description(387, "pine").
description(388, "oak").
description(389, "ebony").
description(390, "marble").
description(391, "tin").
description(392, "brass").
description(393, "copper").
description(394, "silver").
description(395, "platinum").
description(396, "iridium").
description(397, "zinc").
description(398, "aluminum").
description(399, "uranium").
description(400, "iron").
description(401, "steel").
description(402, "hexagonal").
description(403, "short").
description(404, "runed").
description(405, "long").
description(406, "curved").
description(407, "forked").
description(408, "spiked").
description(409, "jeweled").
% rnd_wand end
description(411, "white").
description(412, "white").
description(413, "red").
description(414, "orange").
description(415, "blue").
description(416, "black").
description(417, "green").
description(418, "green").
description(419, "yellow").
description(420, "green").
description(421, "yellowish brown").
description(422, "yellowish brown").
description(423, "black").
description(424, "white").
description(425, "yellow").
description(426, "red").
description(427, "violet").
description(428, "red").
description(429, "violet").
description(430, "black").
description(431, "orange").
description(432, "green").
description(433, "white").
description(434, "blue").
description(435, "red").
description(436, "yellowish brown").
description(437, "orange").
description(438, "yellow").
description(439, "black").
description(440, "green").
description(441, "violet").
description(442, "gray").
description(443, "gray").
description(444, "gray").
description(445, "gray").
description(451, "splash of venom").
description(452, "splash of venom").
% material(APPEARENCE_ID, MATERIAL)
material(150, wood).
material(151, mineral).
material(152, mineral).
material(153, mineral).
material(154, mineral).
material(155, mineral).
material(156, mineral).
material(157, gemstone).
material(158, gemstone).
material(159, copper).
material(160, gemstone).
material(161, gemstone).
material(162, gemstone).
material(163, gemstone).
material(164, gemstone).
material(165, bone).
material(166, iron).
material(167, copper).
material(168, copper).
material(169, iron).
material(170, iron).
material(171, silver).
material(172, gold).
material(173, bone).
material(174, gemstone).
material(175, iron).
material(176, iron).
material(177, iron).
material(340, leather). % parchment spellbook
material(341, leather). % vellum spellbook
material(ID, paper) :- between(342, 380, ID). % paper spellbooks
material(383, glass).
material(384, wood).
material(385, glass).
material(386, wood).
material(387, wood).
material(388, wood).
material(389, wood).
material(390, mineral).
material(391, metal).
material(392, copper).
material(393, copper).
material(394, silver).
material(395, platinum).
material(396, metal).
material(397, metal).
material(398, metal).
material(399, metal).
material(400, iron).
material(401, iron).
material(402, iron).
material(403, iron).
material(404, iron).
material(405, iron).
material(406, iron).
material(407, wood).
material(408, iron).
material(409, iron).
% parse_item(TEXT, CATEGORY, NAME, APPEAERENCE_ID, QUANTITY, BUC, ENCHANTMENT, EFFECTS, CALLED, NAMED, ...)
