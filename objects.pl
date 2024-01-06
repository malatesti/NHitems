
% Projectile(name, aboundance, weight, cost, hitbonus, metal, sub, damage_to_small_monsters, damage_to_large_monsters)
projectile("arrow", 55, 1, 2, 0, iron, p_bow, 3.5, 3.5).
projectile("elven arrow", 20, 1, 2, 0, wood, p_bow, 4.0, 3.5).
projectile("orcish arrow", 20, 1, 2, 0, iron, p_bow, 3.0, 3.5).
projectile("silver arrow", 12, 1, 5, 0, silver, p_bow, 3.5, 3.5).
projectile("ya", 15, 1, 4, 1, metal, p_bow, 4.0, 4.0).
projectile("crossbow bolt", 55, 1, 2, 0, iron, p_crossbow, 3.5, 4.5).
% Weapon(name, magical, bi, aboundance, weight, cost, hitbonus, type, sub, material, damage_to_small_monsters, damage_to_large_monsters)
weapon("dart", 1, 0, 60, 1, 2, 0, p, p_dart, iron, 2.0, 1.5).
weapon("shuriken", 1, 0, 35, 1, 5, 2, p, p_shuriken, iron, 4.5, 3.5).
weapon("boomerang", 1, 0, 15, 5, 20, 0, 0, p_boomerang, wood, 5.0, 5.0).
weapon("spear", 1, 0, 50, 30, 3, 0, p, p_spear, iron, 3.5, 4.5).
weapon("elven spear", 1, 0, 10, 30, 3, 0, p, p_spear, wood, 4.0, 4.5).
weapon("orcish spear", 1, 0, 13, 30, 3, 0, p, p_spear, iron, 3.0, 4.5).
weapon("dwarvish spear", 1, 0, 12, 35, 3, 0, p, p_spear, iron, 4.5, 4.5).
weapon("silver spear", 1, 0, 2, 36, 40, 0, p, p_spear, silver, 3.5, 4.5).
weapon("javelin", 1, 0, 10, 20, 3, 0, p, p_spear, iron, 3.5, 3.5).
weapon("trident", 0, 0, 8, 25, 5, 0, p, p_trident, iron, 4.5, 7.5).
weapon("dagger", 1, 0, 30, 10, 4, 2, p, p_dagger, iron, 2.5, 2.0).
weapon("elven dagger", 1, 0, 10, 10, 4, 2, p, p_dagger, wood, 3.0, 2.0).
weapon("orcish dagger", 1, 0, 12, 10, 4, 2, p, p_dagger, iron, 2.0, 2.0).
weapon("silver dagger", 1, 0, 3, 12, 40, 2, p, p_dagger, silver, 2.5, 2.0).
weapon("athame", 1, 0, 0, 10, 4, 2, s, p_dagger, iron, 2.5, 2.0).
weapon("scalpel", 1, 0, 0, 5, 6, 2, s, p_knife, metal, 2.0, 2.0).
weapon("knife", 1, 0, 20, 5, 4, 0, p | s, p_knife, iron, 2.0, 1.5).
weapon("stiletto", 1, 0, 5, 5, 4, 0, p | s, p_knife, iron, 2.0, 1.5).
weapon("worm tooth", 1, 0, 0, 20, 2, 0, 0, p_knife, 0, 1.5, 1.5).
weapon("crysknife", 1, 0, 0, 20, 100, 3, p, p_knife, mineral, 5.5, 5.5).
weapon("axe", 0, 0, 40, 60, 8, 0, s, p_axe, iron, 3.5, 2.5).
weapon("battle-axe", 0, 1, 10, 120, 40, 0, s, p_axe, iron, 7, 8.5).
weapon("short sword", 0, 0, 8, 30, 10, 0, p, p_short_sword, iron, 3.5, 4.5).
weapon("elven short sword", 0, 0, 2, 30, 10, 0, p, p_short_sword, wood, 4.5, 4.5).
weapon("orcish short sword", 0, 0, 3, 30, 10, 0, p, p_short_sword, iron, 3.0, 4.5).
weapon("dwarvish short sword", 0, 0, 2, 30, 10, 0, p, p_short_sword, iron, 4.0, 4.5).
weapon("scimitar", 0, 0, 15, 40, 15, 0, s, p_scimitar, iron, 4.5, 4.5).
weapon("silver saber", 0, 0, 6, 40, 75, 0, s, p_saber, silver, 4.5, 4.5).
weapon("broadsword", 0, 0, 8, 70, 10, 0, s, p_broad_sword, iron, 5.0, 4.5).
weapon("elven broadsword", 0, 0, 4, 70, 10, 0, s, p_broad_sword, wood, 6.0, 4.5).
weapon("long sword", 0, 0, 50, 40, 15, 0, s, p_long_sword, iron, 4.5, 6.5).
weapon("two-handed sword", 0, 1, 22, 150, 50, 0, s, p_two_handed_sword, iron, 6.5, 10.5).
weapon("katana", 0, 0, 4, 40, 80, 1, s, p_long_sword, iron, 5.5, 6.5).
weapon("tsurugi", 0, 1, 0, 60, 500, 2, s, p_two_handed_sword, metal, 8.5, 11.5).
weapon("runesword", 0, 0, 0, 40, 300, 0, s, p_broad_sword, iron, 5.0, 4.5).
weapon("partisan", 0, 1, 5, 80, 10, 0, p, p_polearms, iron, 3.5, 4.5).
weapon("ranseur", 0, 1, 5, 50, 6, 0, p, p_polearms, iron, 5.0, 5.0).
weapon("spetum", 0, 1, 5, 50, 5, 0, p, p_polearms, iron, 4.5, 7.0).
weapon("glaive", 0, 1, 8, 75, 6, 0, s, p_polearms, iron, 3.5, 5.5).
weapon("lance", 0, 0, 4, 180, 10, 0, p, p_lance, iron, 3.5, 4.5).
weapon("halberd", 0, 1, 8, 150, 10, 0, p | s, p_polearms, iron, 5.5, 7.0).
weapon("bardiche", 0, 1, 4, 120, 7, 0, s, p_polearms, iron, 5.0, 7.5).
weapon("voulge", 0, 1, 4, 125, 5, 0, s, p_polearms, iron, 5.0, 5.0).
weapon("dwarvish mattock", 0, 1, 13, 120, 50, -1, b, p_pick_axe, iron, 6.5, 11.5).
weapon("fauchard", 0, 1, 6, 60, 5, 0, p | s, p_polearms, iron, 3.5, 4.5).
weapon("guisarme", 0, 1, 6, 80, 5, 0, s, p_polearms, iron, 5.0, 4.5).
weapon("bill-guisarme", 0, 1, 4, 120, 7, 0, p | s, p_polearms, iron, 5.0, 5.5).
weapon("lucern hammer", 0, 1, 5, 150, 7, 0, b | p, p_polearms, iron, 5.0, 3.5).
weapon("bec de corbin", 0, 1, 4, 100, 8, 0, b | p, p_polearms, iron, 4.5, 3.5).
weapon("mace", 0, 0, 40, 30, 5, 0, b, p_mace, iron, 4.5, 3.5).
weapon("morning star", 0, 0, 12, 120, 10, 0, b, p_morning_star, iron, 5.0, 4.5).
weapon("war hammer", 0, 0, 15, 50, 5, 0, b, p_hammer, iron, 3.5, 2.5).
weapon("club", 0, 0, 12, 30, 3, 0, b, p_club, wood, 3.5, 2.0).
weapon("rubber hose", 0, 0, 0, 20, 3, 0, b, p_whip, plastic, 2.5, 2.0).
weapon("quarterstaff", 0, 1, 11, 40, 5, 0, b, p_quarterstaff, wood, 3.5, 3.5).
weapon("aklys", 0, 0, 8, 15, 4, 0, b, p_club, iron, 3.5, 2.0).
weapon("flail", 0, 0, 40, 15, 4, 0, b, p_flail, iron, 4.5, 5.0).
weapon("bullwhip", 0, 0, 2, 20, 4, 0, 0, p_whip, leather, 1.5, 1.0).
% Bow(name, aboundance, weight, cost, hitbon, metal, sub, damage_to_small_monsters, damage_to_large_monsters)
bow("bow", 24, 30, 60, 0, wood, p_bow, 1.5, 1.5).
bow("elven bow", 12, 30, 60, 0, wood, p_bow, 1.5, 1.5).
bow("orcish bow", 12, 30, 60, 0, wood, p_bow, 1.5, 1.5).
bow("yumi", 0, 30, 60, 0, wood, p_bow, 1.5, 1.5).
bow("sling", 40, 3, 20, 0, leather, p_sling, 1.5, 1.5).
bow("crossbow", 45, 50, 40, 0, wood, p_crossbow, 1.5, 1.5).
% Helm(name, magical, power, aboundance, delay, weight, cost, ac, can, metal)
helm("elven leather helm", 0, 0, 6, 1, 3, 8, 9, 0, leather).
helm("orcish helm", 0, 0, 6, 1, 30, 10, 9, 0, iron).
helm("dwarvish iron helm", 0, 0, 6, 1, 40, 20, 8, 0, iron).
helm("fedora", 0, 0, 0, 0, 3, 1, 10, 0, cloth).
helm("cornuthaum", 1, clairvoyant, 3, 1, 4, 80, 10, 1, cloth).
helm("dunce cap", 1, 0, 3, 1, 4, 1, 10, 0, cloth).
helm("dented pot", 0, 0, 2, 0, 10, 8, 9, 0, iron).
helm("helmet", 0, 0, 10, 1, 30, 10, 9, 0, iron).
helm("helm of brilliance", 1, 0, 6, 1, 50, 50, 9, 0, iron).
helm("helm of opposite alignment", 1, 0, 6, 1, 50, 50, 9, 0, iron).
helm("helm of telepathy", 1, telepat, 2, 1, 50, 50, 9, 0, iron).
% Drgn_armr(name, magical, power, cost, ac)
drgn_armr("gray dragon scale mail", 1, antimagic, 1200, 1).
drgn_armr("silver dragon scale mail", 1, reflecting, 1200, 1).
drgn_armr("red dragon scale mail", 1, fire_res, 900, 1).
drgn_armr("white dragon scale mail", 1, cold_res, 900, 1).
drgn_armr("orange dragon scale mail", 1, sleep_res, 900, 1).
drgn_armr("black dragon scale mail", 1, disint_res, 1200, 1).
drgn_armr("blue dragon scale mail", 1, shock_res, 900, 1).
drgn_armr("green dragon scale mail", 1, poison_res, 900, 1).
drgn_armr("yellow dragon scale mail", 1, acid_res, 900, 1).
drgn_armr("gray dragon scales", 0, antimagic, 700, 7).
drgn_armr("silver dragon scales", 0, reflecting, 700, 7).
drgn_armr("red dragon scales", 0, fire_res, 500, 7).
drgn_armr("white dragon scales", 0, cold_res, 500, 7).
drgn_armr("orange dragon scales", 0, sleep_res, 500, 7).
drgn_armr("black dragon scales", 0, disint_res, 700, 7).
drgn_armr("blue dragon scales", 0, shock_res, 500, 7).
drgn_armr("green dragon scales", 0, poison_res, 500, 7).
drgn_armr("yellow dragon scales", 0, acid_res, 500, 7).
% Armor(name, magical, blk, power, aboundance, delay, weight, cost, ac, can, sub, metal)
armor("plate mail", 0, 1, 0, 44, 5, 450, 600, 3, 2, arm_suit, iron).
armor("crystal plate mail", 0, 1, 0, 10, 5, 450, 820, 3, 2, arm_suit, glass).
armor("bronze plate mail", 0, 1, 0, 25, 5, 450, 400, 4, 1, arm_suit, copper).
armor("splint mail", 0, 1, 0, 62, 5, 400, 80, 4, 1, arm_suit, iron).
armor("banded mail", 0, 1, 0, 72, 5, 350, 90, 4, 1, arm_suit, iron).
armor("dwarvish mithril-coat", 0, 0, 0, 10, 1, 150, 240, 4, 2, arm_suit, mithril).
armor("elven mithril-coat", 0, 0, 0, 15, 1, 150, 240, 5, 2, arm_suit, mithril).
armor("chain mail", 0, 0, 0, 72, 5, 300, 75, 5, 1, arm_suit, iron).
armor("orcish chain mail", 0, 0, 0, 20, 5, 300, 75, 6, 1, arm_suit, iron).
armor("scale mail", 0, 0, 0, 72, 5, 250, 45, 6, 1, arm_suit, iron).
armor("studded leather armor", 0, 0, 0, 72, 3, 200, 15, 7, 1, arm_suit, leather).
armor("ring mail", 0, 0, 0, 72, 5, 250, 100, 7, 1, arm_suit, iron).
armor("orcish ring mail", 0, 0, 0, 20, 5, 250, 80, 8, 1, arm_suit, iron).
armor("leather armor", 0, 0, 0, 82, 3, 150, 5, 8, 1, arm_suit, leather).
armor("leather jacket", 0, 0, 0, 12, 0, 30, 10, 9, 0, arm_suit, leather).
armor("hawaiian shirt", 0, 0, 0, 8, 0, 5, 3, 10, 0, arm_shirt, cloth).
armor("t-shirt", 0, 0, 0, 2, 0, 5, 2, 10, 0, arm_shirt, cloth).
% Cloak(name, magical, power, aboundance, delay, weight, cost, ac, can, metal)
cloak("mummy wrapping", 0, 0, 0, 0, 3, 2, 10, 1, cloth).
cloak("elven cloak", 1, stealth, 8, 0, 10, 60, 9, 1, cloth).
cloak("orcish cloak", 0, 0, 8, 0, 10, 40, 10, 1, cloth).
cloak("dwarvish cloak", 0, 0, 8, 0, 10, 50, 10, 1, cloth).
cloak("oilskin cloak", 0, 0, 8, 0, 10, 50, 9, 2, cloth).
cloak("robe", 1, 0, 3, 0, 15, 50, 8, 2, cloth).
cloak("alchemy smock", 1, poison_res, 9, 0, 10, 50, 9, 1, cloth).
cloak("leather cloak", 0, 0, 8, 0, 15, 40, 9, 1, leather).
cloak("cloak of protection", 1, protection, 9, 0, 10, 50, 7, 3, cloth).
cloak("cloak of invisibility", 1, invis, 10, 0, 10, 60, 9, 1, cloth).
cloak("cloak of magic resistance", 1, antimagic, 2, 0, 10, 60, 9, 1, cloth).
cloak("cloak of displacement", 1, displaced, 10, 0, 10, 50, 9, 1, cloth).
% Shield(name, magical, blk, power, aboundance, delay, weight, cost, ac, can, metal):
shield("small shield", 0, 0, 0, 6, 0, 30, 3, 9, 0, wood).
shield("elven shield", 0, 0, 0, 2, 0, 40, 7, 8, 0, wood).
shield("uruk-hai shield", 0, 0, 0, 2, 0, 50, 7, 9, 0, iron).
shield("orcish shield", 0, 0, 0, 2, 0, 50, 7, 9, 0, iron).
shield("large shield", 0, 1, 0, 7, 0, 100, 10, 8, 0, iron).
shield("dwarvish roundshield", 0, 0, 0, 4, 0, 100, 10, 8, 0, iron).
shield("shield of reflection", 1, 0, reflecting, 3, 0, 50, 50, 8, 0, silver).
% Gloves(name, magical, power, aboundance, delay, weight, cost, ac, can, metal):
gloves("leather gloves", 0, 0, 16, 1, 10, 8, 9, 0, leather).
gloves("gauntlets of fumbling", 1, fumbling, 8, 1, 10, 50, 9, 0, leather).
gloves("gauntlets of power", 1, 0, 8, 1, 30, 50, 9, 0, iron).
gloves("gauntlets of dexterity", 1, 0, 8, 1, 10, 50, 9, 0, leather).
boots("low boots", 0, 0, 25, 2, 10, 8, 9, 0, leather).
boots("iron shoes", 0, 0, 7, 2, 50, 16, 8, 0, iron).
boots("high boots", 0, 0, 15, 2, 20, 12, 8, 0, leather).
boots("speed boots", 1, fast, 12, 2, 20, 50, 9, 0, leather).
boots("water walking boots", 1, wwalking, 12, 2, 15, 50, 9, 0, leather).
boots("jumping boots", 1, jumping, 12, 2, 20, 50, 9, 0, leather).
boots("elven boots", 1, stealth, 12, 2, 15, 8, 9, 0, leather).
boots("kicking boots", 1, 0, 12, 2, 50, 8, 9, 0, iron).
boots("fumble boots", 1, fumbling, 12, 2, 20, 30, 9, 0, leather).
boots("levitation boots", 1, levitation, 12, 2, 15, 30, 9, 0, leather).
% Ring(name,power,cost,magical,spec,mohs,material)
ring("adornment", adorned, 100, 1, 1, 2, wood).
ring("gain strength", 0, 150, 1, 1, 7, mineral).
ring("gain constitution", 0, 150, 1, 1, 7, mineral).
ring("increase accuracy", 0, 150, 1, 1, 4, mineral).
ring("increase damage", 0, 150, 1, 1, 4, mineral).
ring("protection", protection, 100, 1, 1, 7, mineral).
ring("regeneration", regeneration, 200, 1, 0, 6, mineral).
ring("searching", searching, 200, 1, 0, 6, gemstone).
ring("stealth", stealth, 100, 1, 0, 6, gemstone).
ring("sustain ability", fixed_abil, 100, 1, 0, 4, copper).
ring("levitation", levitation, 200, 1, 0, 7, gemstone).
ring("hunger", hunger, 100, 1, 0, 8, gemstone).
ring("aggravate monster", aggravate_monster, 150, 1, 0, 9, gemstone).
ring("conflict", conflict, 300, 1, 0, 9, gemstone).
ring("warning", warning, 100, 1, 0, 10, gemstone).
ring("poison resistance", poison_res, 150, 1, 0, 4, bone).
ring("fire resistance", fire_res, 200, 1, 0, 5, iron).
ring("cold resistance", cold_res, 150, 1, 0, 4, copper).
ring("shock resistance", shock_res, 150, 1, 0, 3, copper).
ring("free action", free_action, 200, 1, 0, 6, iron).
ring("slow digestion", slow_digestion, 200, 1, 0, 8, iron).
ring("teleportation", teleport, 200, 1, 0, 3, silver).
ring("teleport control", teleport_control, 300, 1, 0, 3, gold).
ring("polymorph", polymorph, 300, 1, 0, 4, bone).
ring("polymorph control", polymorph_control, 300, 1, 0, 8, gemstone).
ring("invisibility", invis, 150, 1, 0, 5, iron).
ring("see invisible", see_invis, 150, 1, 0, 5, iron).
ring("protection from shape changers", prot_from_shape_changers, 100, 1, 0, 5, iron).
% Amulet(name,power,aboundance)
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

% Container(name,magical,chg,aboundance,weight,cost,material)
container("large box", 0, 0, 40, 350, 8, wood).
container("chest", 0, 0, 35, 600, 16, wood).
container("ice box", 0, 0, 5, 900, 42, plastic).
container("sack", 0, 0, 35, 15, 2, cloth).
container("oilskin sack", 0, 0, 5, 15, 100, cloth).
container("bag of holding", 1, 0, 20, 15, 100, cloth).
container("bag of tricks", 1, 1, 20, 15, 100, cloth).
% WepTool(name,magical,bi,aboundance,weight,cost,sdam,ldam,hitbon,sub,mat,damage_to_small_monsters, damage_to_large_monsters)
weptool("pick-axe", 0, 0, 20, 100, 50, 6, 3, whack, p_pick_axe, iron, 3.5, 2.0).
weptool("grappling hook", 0, 0, 5, 30, 50, 2, 6, whack, p_flail, iron, 1.5, 3.5).
weptool("unicorn horn", 1, 1, 0, 20, 100, 12, 12, pierce, p_unicorn_horn, bone, 6.5, 6.5).
% Tool(name,mrg,magical,chg,aboundance,weight,cost,material)
tool("skeleton key", 0, 0, 0, 80, 3, 10, iron).
tool("lock pick", 0, 0, 0, 60, 4, 20, iron).
tool("credit card", 0, 0, 0, 15, 1, 10, plastic).
tool("tallow candle", 1, 0, 0, 20, 2, 10, wax).
tool("wax candle", 1, 0, 0, 5, 2, 20, wax).
tool("brass lantern", 0, 0, 0, 30, 30, 12, copper).
tool("oil lamp", 0, 0, 0, 45, 20, 10, copper).
tool("magic lamp", 0, 1, 0, 15, 20, 50, copper).
tool("expensive camera", 0, 0, 1, 15, 12, 200, plastic).
tool("mirror", 0, 0, 0, 45, 13, 10, glass).
tool("crystal ball", 0, 1, 1, 15, 150, 60, glass).
tool("lenses", 0, 0, 0, 5, 3, 80, glass).
tool("blindfold", 0, 0, 0, 50, 2, 20, cloth).
tool("towel", 0, 0, 0, 50, 2, 50, cloth).
tool("saddle", 0, 0, 0, 5, 200, 150, leather).
tool("leash", 0, 0, 0, 65, 12, 20, leather).
tool("stethoscope", 0, 0, 0, 25, 4, 75, iron).
tool("tinning kit", 0, 0, 1, 15, 100, 30, iron).
tool("tin opener", 0, 0, 0, 35, 4, 30, iron).
tool("can of grease", 0, 0, 1, 15, 15, 20, iron).
tool("figurine", 0, 1, 0, 25, 50, 80, mineral).
tool("magic marker", 0, 1, 1, 15, 2, 50, plastic).
tool("land mine", 0, 0, 0, 0, 300, 180, iron).
tool("beartrap", 0, 0, 0, 0, 200, 60, iron).
tool("tin whistle", 0, 0, 0, 100, 3, 10, metal).
tool("magic whistle", 0, 1, 0, 30, 3, 10, metal).
tool("wooden flute", 0, 0, 0, 4, 5, 12, wood).
tool("magic flute", 0, 1, 1, 2, 5, 36, wood).
tool("tooled horn", 0, 0, 0, 5, 18, 15, bone).
tool("frost horn", 0, 1, 1, 2, 18, 50, bone).
tool("fire horn", 0, 1, 1, 2, 18, 50, bone).
tool("horn of plenty", 0, 1, 1, 2, 18, 50, bone).
tool("wooden harp", 0, 0, 0, 4, 30, 50, wood).
tool("magic harp", 0, 1, 1, 2, 30, 50, wood).
tool("bell", 0, 0, 0, 2, 30, 50, copper).
tool("bugle", 0, 0, 0, 4, 10, 15, copper).
tool("leather drum", 0, 0, 0, 4, 25, 25, leather).
tool("drum of earthquake", 0, 1, 1, 2, 25, 25, leather).
% QuestItem(name,weight)
questitem("candelabrum of invocation", 10).
questitem("bell of opening", 10).
% questitem("book of the dead", "papyrus", wt=20).
% Food(name,aboundance,delay,weight,unk,tin,nutrition)
food("tripe ration", 140, 2, 10, 0, flesh, 200).
food("corpse", 0, 1, none, 0, flesh, 0).
food("egg", 85, 1, 1, 1, flesh, 80).
food("meatball", 0, 1, 1, 0, flesh, 5).
food("meat stick", 0, 1, 1, 0, flesh, 5).
food("huge chunk of meat", 0, 20, 400, 0, flesh, 2000).
food("meat ring", 0, 1, 5, 0, flesh, 5).
food("glob of gray ooze", 0, 2, 20, 0, flesh, 20).
food("glob of brown pudding", 0, 2, 20, 0, flesh, 20).
food("glob of green slime", 0, 2, 20, 0, flesh, 20).
food("glob of black pudding", 0, 2, 20, 0, flesh, 20).
food("kelp frond", 0, 1, 1, 0, veggy, 30).
food("eucalyptus leaf", 3, 1, 1, 0, veggy, 30).
food("apple", 15, 1, 2, 0, veggy, 50).
food("orange", 10, 1, 2, 0, veggy, 80).
food("pear", 10, 1, 2, 0, veggy, 50).
food("melon", 10, 1, 5, 0, veggy, 100).
food("banana", 10, 1, 2, 0, veggy, 80).
food("carrot", 15, 1, 2, 0, veggy, 50).
food("sprig of wolfsbane", 7, 1, 1, 0, veggy, 40).
food("clove of garlic", 7, 1, 1, 0, veggy, 40).
food("slime mold", 75, 1, 5, 0, veggy, 250).
food("lump of royal jelly", 0, 1, 2, 0, veggy, 200).
food("cream pie", 25, 1, 10, 0, veggy, 100).
food("candy bar", 13, 1, 2, 0, veggy, 100).
food("fortune cookie", 55, 1, 1, 0, veggy, 40).
food("pancake", 25, 2, 2, 0, veggy, 200).
food("lembas wafer", 20, 2, 5, 0, veggy, 800).
food("cram ration", 20, 3, 15, 0, veggy, 600).
food("food ration", 380, 5, 20, 0, veggy, 800).
food("k-ration", 0, 1, 10, 0, veggy, 400).
food("c-ration", 0, 1, 10, 0, veggy, 300).
food("tin", 75, 0, 10, 1, metal, 0).
% Potion(name,magical,power,aboundance,cost)
potion("water", 0, 0, 92, 100).
potion("gain ability", 1, 0, 42, 300).
potion("restore ability", 1, 0, 40, 100).
potion("confusion", 1, confusion, 42, 100).
potion("blindness", 1, blinded, 40, 150).
potion("paralysis", 1, 0, 42, 300).
potion("speed", 1, fast, 42, 200).
potion("levitation", 1, levitation, 42, 200).
potion("hallucination", 1, halluc, 40, 100).
potion("invisibility", 1, invis, 40, 150).
potion("see invisible", 1, see_invis, 42, 50).
potion("healing", 1, 0, 57, 100).
potion("extra healing", 1, 0, 47, 100).
potion("gain level", 1, 0, 20, 300).
potion("enlightenment", 1, 0, 20, 200).
potion("monster detection", 1, 0, 40, 150).
potion("object detection", 1, 0, 42, 150).
potion("gain energy", 1, 0, 42, 150).
potion("sleeping", 1, 0, 42, 100).
potion("full healing", 1, 0, 10, 200).
potion("polymorph", 1, 0, 10, 200).
potion("booze", 0, 0, 42, 50).
potion("sickness", 0, 0, 42, 50).
potion("fruit juice", 0, 0, 42, 50).
potion("acid", 0, 0, 10, 250).
potion("oil", 0, 0, 30, 250).
% Scroll(name,magical,aboundance,cost)
scroll("enchant armor", 1, 63, 80).
scroll("destroy armor", 1, 45, 100).
scroll("confuse monster", 1, 53, 100).
scroll("scare monster", 1, 35, 100).
scroll("remove curse", 1, 65, 80).
scroll("enchant weapon", 1, 80, 60).
scroll("create monster", 1, 45, 200).
scroll("taming", 1, 15, 200).
scroll("genocide", 1, 15, 300).
scroll("light", 1, 90, 50).
scroll("teleportation", 1, 55, 100).
scroll("gold detection", 1, 33, 100).
scroll("food detection", 1, 25, 100).
scroll("identify", 1, 180, 20).
scroll("magic mapping", 1, 45, 100).
scroll("amnesia", 1, 35, 200).
scroll("fire", 1, 30, 100).
scroll("earth", 1, 18, 200).
scroll("punishment", 1, 15, 300).
scroll("charging", 1, 15, 300).
scroll("stinking cloud", 1, 15, 300).
scroll("blank paper", 0, 28, 60).
 /* spellbook description normally refers to book covers (primarily color).
       parchment and vellum would never be used for such, but rather than
       eliminate those, finagle their definitions to refer to the pages
       rather than the cover.  they are made from animal skin (typically of
       a goat or sheep) and books using them for pages generally need heavy
       covers with straps or clamps to tightly close the book in order to
       keep the pages flat.  (however, a wooden cover might itself be covered
       by a sheet of parchment, making this become less of an exception.  also,
       changing the internal composition from paper to leather makes eating a
       parchment or vellum spellbook break vegetarian conduct, as it should.) */
% Spell(name,sub,aboundance,delay,level,magical,dir).
spell("dig", p_matter_spell, 20, 6, 5, 1, ray).
spell("magic missile", p_attack_spell, 45, 2, 2, 1, ray).
spell("fireball", p_attack_spell, 20, 4, 4, 1, ray).
spell("cone of cold", p_attack_spell, 10, 7, 4, 1, ray).
spell("sleep", p_enchantment_spell, 50, 1, 1, 1, ray).
spell("finger of death", p_attack_spell, 5, 10, 7, 1, ray).
spell("light", p_divination_spell, 45, 1, 1, 1, nodir).
spell("detect monsters", p_divination_spell, 43, 1, 1, 1, nodir).
spell("healing", p_healing_spell, 40, 2, 1, 1, immediate).
spell("knock", p_matter_spell, 35, 1, 1, 1, immediate).
spell("force bolt", p_attack_spell, 35, 2, 1, 1, immediate).
spell("confuse monster", p_enchantment_spell, 30, 2, 2, 1, immediate).
spell("cure blindness", p_healing_spell, 25, 2, 2, 1, immediate).
spell("drain life", p_attack_spell, 10, 2, 2, 1, immediate).
spell("slow monster", p_enchantment_spell, 30, 2, 2, 1, immediate).
spell("wizard lock", p_matter_spell, 30, 3, 2, 1, immediate).
spell("create monster", p_cleric_spell, 35, 3, 2, 1, nodir).
spell("detect food", p_divination_spell, 30, 3, 2, 1, nodir).
spell("cause fear", p_enchantment_spell, 25, 3, 3, 1, nodir).
spell("clairvoyance", p_divination_spell, 15, 3, 3, 1, nodir).
spell("cure sickness", p_healing_spell, 32, 3, 3, 1, nodir).
spell("charm monster", p_enchantment_spell, 20, 3, 3, 1, immediate).
spell("haste self", p_escape_spell, 33, 4, 3, 1, nodir).
spell("detect unseen", p_divination_spell, 20, 4, 3, 1, nodir).
spell("levitation", p_escape_spell, 20, 4, 4, 1, nodir).
spell("extra healing", p_healing_spell, 27, 5, 3, 1, immediate).
spell("restore ability", p_healing_spell, 25, 5, 4, 1, nodir).
spell("invisibility", p_escape_spell, 25, 5, 4, 1, nodir).
spell("detect treasure", p_divination_spell, 20, 5, 4, 1, nodir).
spell("remove curse", p_cleric_spell, 25, 5, 3, 1, nodir).
spell("magic mapping", p_divination_spell, 18, 7, 5, 1, nodir).
spell("identify", p_divination_spell, 20, 6, 3, 1, nodir).
spell("turn undead", p_cleric_spell, 16, 8, 6, 1, immediate).
spell("polymorph", p_matter_spell, 10, 8, 6, 1, immediate).
spell("teleport away", p_escape_spell, 15, 6, 6, 1, immediate).
spell("create familiar", p_cleric_spell, 10, 7, 6, 1, nodir).
spell("cancellation", p_matter_spell, 15, 8, 7, 1, immediate).
spell("protection", p_cleric_spell, 18, 3, 1, 1, nodir).
spell("jumping", p_escape_spell, 20, 3, 1, 1, immediate).
spell("stone to flesh", p_healing_spell, 15, 1, 3, 1, immediate).
spell("blank paper", p_none, 18, 0, 0, 0, 0).

% Wand(name,aboundance,cost,magical,dir)
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
% Rocks are GEM_CLASS

% Gem(name,aboundance,weight,gval,nutr,mohs,glass)
gem("dilithium crystal", 2, 1, 4500, 15, 5, gemstone).
gem("diamond", 3, 1, 4000, 15, 10, gemstone).
gem("ruby", 4, 1, 3500, 15, 9, gemstone).
gem("jacinth", 3, 1, 3250, 15, 9, gemstone).
gem("sapphire", 4, 1, 3000, 15, 9, gemstone).
gem("black opal", 3, 1, 2500, 15, 8, gemstone).
gem("emerald", 5, 1, 2500, 15, 8, gemstone).
gem("turquoise", 6, 1, 2000, 15, 6, gemstone).
gem("citrine", 4, 1, 1500, 15, 6, gemstone).
gem("aquamarine", 6, 1, 1500, 15, 8, gemstone).
gem("amber", 8, 1, 1000, 15, 2, gemstone).
gem("topaz", 10, 1, 900, 15, 8, gemstone).
gem("jet", 6, 1, 850, 15, 7, gemstone).
gem("opal", 12, 1, 800, 15, 6, gemstone).
gem("chrysoberyl", 8, 1, 700, 15, 5, gemstone).
gem("garnet", 12, 1, 700, 15, 7, gemstone).
gem("amethyst", 14, 1, 600, 15, 7, gemstone).
gem("jasper", 15, 1, 500, 15, 7, gemstone).
gem("fluorite", 15, 1, 400, 15, 4, gemstone).
gem("obsidian", 9, 1, 200, 15, 6, gemstone).
gem("agate", 12, 1, 200, 15, 6, gemstone).
gem("jade", 10, 1, 300, 15, 6, gemstone).
gem("worthless piece of white glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of blue glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of red glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of yellowish brown glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of orange glass", 76, 1, 0, 6, 5, glass).
gem("worthless piece of yellow glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of black glass", 76, 1, 0, 6, 5, glass).
gem("worthless piece of green glass", 77, 1, 0, 6, 5, glass).
gem("worthless piece of violet glass", 77, 1, 0, 6, 5, glass).
% rock(NAME, ABOUNDANCE, WEIGHT, GVAL, SDAM, LDAM, MAGICAL, NUTR, MOHS)
rock("luckstone", 10, 10, 60, 3, 3, 1, 10, 7).
rock("loadstone", 10, 500, 1, 3, 3, 1, 10, 6).
rock("touchstone", 8, 10, 45, 3, 3, 1, 10, 6).
rock("flint", 10, 10, 1, 6, 6, 0, 10, 7).
rock("rock", 100, 10, 0, 3, 3, 0, 10, 7).
% object(CAT, NAME, ABOUNDANCE, COST, WEIGHT, MATERIAL)
object(amulet, NAME, ABOUNDANCE, 150, 20, iron) :- amulet(NAME, _, ABOUNDANCE).
object(ring, NAME, 1, COST, 3, MATERIAL) :- ring(NAME, _, COST, _, _, _, MATERIAL).
object(potion, NAME, ABOUNDANCE, COST, 20, glass) :- potion(NAME, _, _, ABOUNDANCE, COST).
object(spell, NAME, ABOUNDANCE, COST, 50, paper) :- spell(NAME, _, ABOUNDANCE, _, LEVEL, _, _), COST is LEVEL*100. % vellum and parchment appearences have leather as material, but they are ignored
object(scroll, NAME, ABOUNDANCE, COST, 5, paper) :- scroll(NAME, _, ABOUNDANCE, COST).
object(wand, NAME, ABOUNDANCE, COST, 7, 0) :- wand(NAME, ABOUNDANCE, COST, _, _). % material depends from appearence, but is not that relevant for objects such as wands
object(ARMOR, NAME, ABOUNDANCE, COST, WEIGHT, MATERIAL) :- member(ARMOR, [helm, gloves, cloak, boots]), call(ARMOR, NAME, _, _, ABOUNDANCE, _, WEIGHT, COST, _, _, MATERIAL).
% what kind of randomized appearences does NAME have?
% kind(NAME, KIND)
kind(X, amulet) :- amulet(X, _, _).
kind(X, ring) :- ring(X, _, _, _, _, _, _).
kind(X, potion) :- potion(X, _, _, _, _), X \= "water". % water has fixed appearence
kind(X, scroll) :- scroll(X, _, _, _), X \= "blank paper".
kind(X, spell) :- spell(X, _, _, _, _, _, _), X \= "blank paper".
kind(X, wand) :- wand(X, _, _, _, _).
kind(X, helm) :- member(X, ["helmet", "helm of brilliance", "helm of opposite alignment", "helm of telepathy"]).
kind(X, gloves) :- gloves(X, _, _, _, _, _, _, _, _, _).
kind(X, cloak) :- member(X, ["cloak of protection", "cloak of invisibility", "cloak of magic resistance", "cloak of displacement"]).
kind(X, boots) :- boots(X, 1, _, _, _, _, _, _, _, _). % only magical ones have randomized appearence
% can_be(NAME, APPEARENCE, APPEARENCE_ID)
can_be(ring, "wooden", 150).
can_be(ring, "granite", 151).
can_be(ring, "opal", 152).
can_be(ring, "clay", 153).
can_be(ring, "coral", 154).
can_be(ring, "black onyx", 155).
can_be(ring, "moonstone", 156).
can_be(ring, "tiger eye", 157).
can_be(ring, "jade", 158).
can_be(ring, "bronze", 159).
can_be(ring, "agate", 160).
can_be(ring, "topaz", 161).
can_be(ring, "sapphire", 162).
can_be(ring, "ruby", 163).
can_be(ring, "diamond", 164).
can_be(ring, "pearl", 165).
can_be(ring, "iron", 166).
can_be(ring, "brass", 167).
can_be(ring, "copper", 168).
can_be(ring, "twisted", 169).
can_be(ring, "steel", 170).
can_be(ring, "silver", 171).
can_be(ring, "gold", 172).
can_be(ring, "ivory", 173).
can_be(ring, "emerald", 174).
can_be(ring, "wire", 175).
can_be(ring, "engagement", 176).
can_be(ring, "shiny", 177).
can_be(potion, "ruby", 272).
can_be(potion, "pink", 273).
can_be(potion, "orange", 274).
can_be(potion, "yellow", 275).
can_be(potion, "emerald", 276).
can_be(potion, "dark green", 277).
can_be(potion, "cyan", 278).
can_be(potion, "sky blue", 279).
can_be(potion, "brilliant blue", 280).
can_be(potion, "magenta", 281).
can_be(potion, "purple-red", 282).
can_be(potion, "puce", 283).
can_be(potion, "milky", 284).
can_be(potion, "swirly", 285).
can_be(potion, "bubbly", 286).
can_be(potion, "smoky", 287).
can_be(potion, "cloudy", 288).
can_be(potion, "effervescent", 289).
can_be(potion, "black", 290).
can_be(potion, "golden", 291).
can_be(potion, "brown", 292).
can_be(potion, "fizzy", 293).
can_be(potion, "dark", 294).
can_be(potion, "white", 295).
can_be(potion, "murky", 296).
can_be(scroll, "ZELGO MER", 298).
can_be(scroll, "JUYED AWK YACC", 299).
can_be(scroll, "NR 9", 300).
can_be(scroll, "XIXAXA XOXAXA XUXAXA", 301).
can_be(scroll, "PRATYAVAYAH", 302).
can_be(scroll, "DAIYEN FOOELS", 303).
can_be(scroll, "LEP GEX VEN ZEA", 304).
can_be(scroll, "PRIRUTSENIE", 305).
can_be(scroll, "ELBIB YLOH", 306).
can_be(scroll, "VERR YED HORRE", 307).
can_be(scroll, "VENZAR BORGAVVE", 308).
can_be(scroll, "THARR", 309).
can_be(scroll, "YUM YUM", 310).
can_be(scroll, "KERNOD WEL", 311).
can_be(scroll, "ELAM EBOW", 312).
can_be(scroll, "DUAM XNAHT", 313).
can_be(scroll, "ANDOVA BEGARIN", 314).
can_be(scroll, "KIRJE", 315).
can_be(scroll, "VE FORBRYDERNE", 316).
can_be(scroll, "HACKEM MUCHE", 317).
can_be(scroll, "VELOX NEB", 318).
can_be(scroll, "FOOBIE BLETCH", 319).
can_be(scroll, "TEMOV", 320).
can_be(scroll, "GARVEN DEH", 321).
can_be(scroll, "READ ME", 322).
can_be(scroll, "ETAOIN SHRDLU", 323).
can_be(scroll, "LOREM IPSUM", 324).
can_be(scroll, "FNORD", 325).
can_be(scroll, "KO BATE", 326).
can_be(scroll, "ABRA KA DABRA", 327).
can_be(scroll, "ASHPD SODALG", 328).
can_be(scroll, "ZLORFIK", 329).
can_be(scroll, "GNIK SISI VLE", 330).
can_be(scroll, "HAPAX LEGOMENON", 331).
can_be(scroll, "EIRIS SAZUN IDISI", 332).
can_be(scroll, "PHOL ENDE WODAN", 333).
can_be(scroll, "GHOTI", 334).
can_be(scroll, "MAPIRO MAHAMA DIROMAT", 335).
can_be(scroll, "VAS CORP BET MANI", 336).
can_be(scroll, "XOR OTA", 337).
can_be(scroll, "STRC PRST SKRZ KRK", 338).
can_be(spell, "parchment", 340).
can_be(spell, "vellum", 341).
can_be(spell, "ragged", 342).
can_be(spell, "dog eared", 343).
can_be(spell, "mottled", 344).
can_be(spell, "stained", 345).
can_be(spell, "cloth", 346).
can_be(spell, "leathery", 347).
can_be(spell, "white", 348).
can_be(spell, "pink", 349).
can_be(spell, "red", 350).
can_be(spell, "orange", 351).
can_be(spell, "yellow", 352).
can_be(spell, "velvet", 353).
can_be(spell, "light green", 354).
can_be(spell, "dark green", 355).
can_be(spell, "turquoise", 356).
can_be(spell, "cyan", 357).
can_be(spell, "light blue", 358).
can_be(spell, "dark blue", 359).
can_be(spell, "indigo", 360).
can_be(spell, "magenta", 361).
can_be(spell, "purple", 362).
can_be(spell, "violet", 363).
can_be(spell, "tan", 364).
can_be(spell, "plaid", 365).
can_be(spell, "light brown", 366).
can_be(spell, "dark brown", 367).
can_be(spell, "gray", 368).
can_be(spell, "wrinkled", 369).
can_be(spell, "dusty", 370).
can_be(spell, "bronze", 371).
can_be(spell, "copper", 372).
can_be(spell, "silver", 373).
can_be(spell, "gold", 374).
can_be(spell, "glittering", 375).
can_be(spell, "shining", 376).
can_be(spell, "dull", 377).
can_be(spell, "thin", 378).
can_be(spell, "thick", 379).
can_be(wand, "glass", 383).
can_be(wand, "balsa", 384).
can_be(wand, "crystal", 385).
can_be(wand, "maple", 386).
can_be(wand, "pine", 387).
can_be(wand, "oak", 388).
can_be(wand, "ebony", 389).
can_be(wand, "marble", 390).
can_be(wand, "tin", 391).
can_be(wand, "brass", 392).
can_be(wand, "copper", 393).
can_be(wand, "silver", 394).
can_be(wand, "platinum", 395).
can_be(wand, "iridium", 396).
can_be(wand, "zinc", 397).
can_be(wand, "aluminum", 398).
can_be(wand, "uranium", 399).
can_be(wand, "iron", 400).
can_be(wand, "steel", 401).
can_be(wand, "hexagonal", 402).
can_be(wand, "short", 403).
can_be(wand, "runed", 404).
can_be(wand, "long", 405).
can_be(wand, "curved", 406).
can_be(wand, "forked", 408).
can_be(wand, "spiked", 409).
can_be(wand, "jeweled", 410).
can_be("blank paper", "unlabeled", 339). % scroll
can_be("blank paper", "plain", 380). % spellbook
can_be("elven arrow", "runed arrow", 2).
can_be("orcish arrow", "crude arrow", 3).
can_be("ya", "bamboo arrow", 5).
can_be("shuriken", "throwing star", 8).
can_be("elven spear", "runed spear", 11).
can_be("orcish spear", "crude spear", 12).
can_be("dwarvish spear", "stout spear", 13).
can_be("javelin", "throwing spear", 15).
can_be("elven dagger", "runed dagger", 18).
can_be("orcish dagger", "crude dagger", 19).
can_be("battle-axe", "double-headed axe", 28).
can_be("elven short sword", "runed short sword", 30).
can_be("orcish short sword", "crude short sword", 31).
can_be("dwarvish short sword", "broad short sword", 32).
can_be("scimitar", "curved sword", 33).
can_be("elven broadsword", "runed broadsword", 36).
can_be("katana", "samurai sword", 39).
can_be("tsurugi", "long samurai sword", 40).
can_be("runesword", "runed broadsword", 41).
can_be("partisan", "vulgar polearm", 42).
can_be("ranseur", "hilted polearm", 43).
can_be("spetum", "forked polearm", 44).
can_be("glaive", "single-edged polearm", 45).
can_be("halberd", "angled poleaxe", 47).
can_be("bardiche", "long poleaxe", 48).
can_be("voulge", "pole cleaver", 49).
can_be("dwarvish mattock", "broad pick", 50).
can_be("fauchard", "pole sickle", 51).
can_be("guisarme", "pruning hook", 52).
can_be("bill-guisarme", "hooked polearm", 53).
can_be("lucern hammer", "pronged polearm", 54).
can_be("bec de corbin", "beaked polearm", 55).
can_be("quarterstaff", "staff", 61).
can_be("aklys", "thonged club", 62).
can_be("elven bow", "runed bow", 66).
can_be("orcish bow", "crude bow", 67).
can_be("yumi", "long bow", 68).
can_be("elven leather helm", "leather hat", 71).
can_be("orcish helm", "iron skull cap", 72).
can_be("dwarvish iron helm", "hard hat", 73).
can_be("cornuthaum", "conical hat", 75).
can_be("dunce cap", "conical hat", 76).
can_be(helm, "plumed helmet", 78).
can_be(helm, "etched helmet", 79).
can_be(helm, "crested helmet", 80).
can_be(helm, "visored helmet", 81).
can_be("orcish chain mail", "crude chain mail", 108).
can_be("orcish ring mail", "crude ring mail", 112).
can_be("elven cloak", "faded pall", 118).
can_be("orcish cloak", "coarse mantelet", 119).
can_be("dwarvish cloak", "hooded cloak", 120).
can_be("oilskin cloak", "slippery cloak", 121).
can_be("alchemy smock", "apron", 123).
can_be(cloak, "tattered cape", 125).
can_be(cloak, "opera cloak", 126).
can_be(cloak, "ornamental cope", 127).
can_be(cloak, "piece of cloth", 128).
can_be("elven shield", "blue and green shield", 130).
can_be("uruk-hai shield", "white-handed shield", 131).
can_be("orcish shield", "red-eyed shield", 132).
can_be("dwarvish roundshield", "large round shield", 134).
can_be("shield of reflection", "polished silver shield", 135).
can_be(gloves, "old gloves", 136).
can_be(gloves, "padded gloves", 137).
can_be(gloves, "riding gloves", 138).
can_be(gloves, "fencing gloves", 139).
can_be("low boots", "walking shoes", 140).
can_be("iron shoes", "hard shoes", 141).
can_be("high boots", "jackboots", 142).
can_be(boots, "combat boots", 143).
can_be(boots, "jungle boots", 144).
can_be(boots, "hiking boots", 145).
can_be(boots, "mud boots", 146).
can_be(boots, "buckled boots", 147).
can_be(boots, "riding boots", 148).
can_be(boots, "snow boots", 149).
can_be(amulet, "circular", 178).
can_be(amulet, "spherical", 179).
can_be(amulet, "oval", 180).
can_be(amulet, "triangular", 181).
can_be(amulet, "pyramidal", 182).
can_be(amulet, "square", 183).
can_be(amulet, "concave", 184).
can_be(amulet, "hexagonal", 185).
can_be(amulet, "octagonal", 186).
can_be("cheap plastic imitation of the amulet of yendor", "amulet of yendor", 187).
can_be("sack", "bag", 192).
can_be("oilskin sack", "bag", 193).
can_be("bag of holding", "bag", 194).
can_be("bag of tricks", "bag", 195).
can_be("skeleton key", "key", 196).
can_be("tallow candle", "candle", 199).
can_be("wax candle", "candle", 200).
can_be("oil lamp", "lamp", 202).
can_be("magic lamp", "lamp", 203).
can_be("mirror", "looking glass", 205).
can_be("crystal ball", "glass orb", 206).
can_be("tin whistle", "whistle", 220).
can_be("magic whistle", "whistle", 221).
can_be("wooden flute", "flute", 222).
can_be("magic flute", "flute", 223).
can_be("tooled horn", "horn", 224).
can_be("frost horn", "horn", 225).
can_be("fire horn", "horn", 226).
can_be("horn of plenty", "horn", 227).
can_be("wooden harp", "harp", 228).
can_be("magic harp", "harp", 229).
can_be("leather drum", "drum", 232).
can_be("drum of earthquake", "drum", 233).
can_be("grappling hook", "iron hook", 235).
can_be("candelabrum of invocation", "candelabrum", 237).
can_be("bell of opening", "silver bell", 238).
can_be("water", "clear", 297).
can_be("dilithium crystal", "white", 411).
can_be("diamond", "white", 412).
can_be("ruby", "red", 413).
can_be("jacinth", "orange", 414).
can_be("sapphire", "blue", 415).
can_be("black opal", "black", 416).
can_be("emerald", "green", 417).
can_be("turquoise", "green", 418).
can_be("turquoise", "blue", 415).
can_be("citrine", "yellow", 419).
can_be("aquamarine", "blue", 415).
can_be("aquamarine", "green", 420).
can_be("amber", "yellowish brown", 421).
can_be("topaz", "yellowish brown", 422).
can_be("jet", "black", 423).
can_be("opal", "white", 424).
can_be("chrysoberyl", "yellow", 425).
can_be("garnet", "red", 426).
can_be("amethyst", "violet", 427).
can_be("jasper", "red", 428).
can_be("fluorite", "blue", 415).
can_be("fluorite", "green", 417).
can_be("fluorite", "white", 412).
can_be("fluorite", "violet", 429).
can_be("obsidian", "black", 430).
can_be("agate", "orange", 431).
can_be("jade", "green", 432).
can_be("worthless piece of white glass", "white", 433).
can_be("worthless piece of blue glass", "blue", 434).
can_be("worthless piece of red glass", "red", 435).
can_be("worthless piece of yellowish brown glass", "yellowish brown", 436).
can_be("worthless piece of orange glass", "orange", 437).
can_be("worthless piece of yellow glass", "yellow", 438).
can_be("worthless piece of black glass", "black", 439).
can_be("worthless piece of green glass", "green", 440).
can_be("worthless piece of violet glass", "violet", 441).
can_be(X, App, Id) :- kind(X, K), can_be(K, App, Id).

%can_be(rock, "gray").
% Coin(name,aboundance,metal,worth,weight)
coin("gold piece", 1000, gold, 1, 0.01000001).
/* 
a special, one of a kind, spellbook
% Misc(name,desc,weight)
misc("novel", "paperback", 50).
*/
