local mType = Game.createMonsterType("Oozing Carcass")
local monster = {}

<<<<<<< HEAD
monster.description = "a Oozing Carcass"
monster.experience = 18900
=======
monster.description = "an oozing carcass"
monster.experience = 20980
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1626,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
=======
monster.raceId = 2377
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Putrefactory.",
}

>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.health = 27500
monster.maxHealth = 27500
monster.race = "undead"
monster.corpse = 43579
monster.speed = 215
monster.manaCost = 0

<<<<<<< HEAD
monster.raceId = 2377
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary.",
}

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
=======
monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
<<<<<<< HEAD
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
=======
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
<<<<<<< HEAD
	level = 0,
	color = 0,
}

monster.voices = {}

=======
	level = 4,
	color = 143,
}

>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.loot = {
	{ name = "crystal coin", chance = 9000, maxCount = 1 },
	{ name = "lichen gobbler", chance = 12369, maxCount = 1 },
	{ name = "small emerald", chance = 12859, maxCount = 1 },
	{ id = 3039, chance = 9808, maxCount = 1 }, -- red gem
	{ name = "skull staff", chance = 12316, maxCount = 1 },
	{ name = "bone shield", chance = 6752, maxCount = 1 },
	{ name = "yellow gem", chance = 8634, maxCount = 1 },
	{ name = "rotten roots", chance = 13133, maxCount = 1 },
	{ name = "decayed finger bone", chance = 6964, maxCount = 1 },
	{ name = "ultimate health potion", chance = 10285, maxCount = 2 },
	{ name = "bloody edge", chance = 12270, maxCount = 1 },
	{ name = "spellbook of warding", chance = 5084, maxCount = 1 },
}

monster.attacks = {
<<<<<<< HEAD
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", interval = 6000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -950, length = 8, spread = 3, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2750, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2500, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -600, maxDamage = -800, radius = 3, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 3300, chance = 24, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -700, length = 4, spread = 0, effect = CONST_ME_ICEATTACK, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 102,
=======
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -1600, radius = 5, effect = CONST_ME_BLACKSMOKE, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -1400, maxDamage = -1500, radius = 5, effect = CONST_ME_ICEAREA, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -1400, maxDamage = -1550, length = 8, spread = 5, effect = CONST_ME_ICEAREA, target = false },
	{ name = "largedeathring", interval = 2000, chance = 20, minDamage = -850, maxDamage = -1400, target = false },
	{ name = "energy chain", interval = 3000, chance = 20, minDamage = -1050, maxDamage = -1400, target = false },
}

monster.defenses = {
	defense = 102,
	armor = 102,
	mitigation = 3.10,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = -20 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 35 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 40 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
<<<<<<< HEAD
	{ type = "outfit", condition = false },
=======
	{ type = "outfit", condition = true },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
