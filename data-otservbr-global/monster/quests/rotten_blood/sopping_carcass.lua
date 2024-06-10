local mType = Game.createMonsterType("Sopping Carcass")
local monster = {}

<<<<<<< HEAD
monster.description = "a Sopping Carcass"
monster.experience = 21100
=======
monster.description = "a sopping carcass"
monster.experience = 23425
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1658,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
=======
monster.raceId = 2396
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
monster.health = 32700
monster.maxHealth = 32700
monster.race = "undead"
monster.corpse = 43832
monster.speed = 210
monster.manaCost = 0

<<<<<<< HEAD
monster.raceId = 2396
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
	targetDistance = 0,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

<<<<<<< HEAD
monster.voices = {}

monster.loot = {
	{ name = "crystal coin", chance = 6961, maxCount = 1 },
	{ name = "soul orb", chance = 10090, maxCount = 3 },
	{ name = "lichen gobbler", chance = 8558, maxCount = 1 },
	{ name = "decayed finger bone", chance = 10309, maxCount = 1 },
	{ name = "rotten roots", chance = 7678, maxCount = 1 },
	{ name = "yellow gem", chance = 12992, maxCount = 1 },
	{ name = "underworld rod", chance = 12980, maxCount = 1 },
	{ id = 3039, chance = 11333, maxCount = 1 }, -- red gem
	{ name = "ripper lance", chance = 8304, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800 },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -900, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -900, radius = 3, effect = CONST_ME_ICEATTACK, target = false },
=======
monster.loot = {}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100 },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_DEATHDAMAGE, minDamage = -1400, maxDamage = -1500, radius = 5, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1200, maxDamage = -1400,  radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1400, radius = 5, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -1100, maxDamage = -1550, length = 8, spread = 5, effect = CONST_ME_BLACKSMOKE, target = false },
	{ name = "ice chain", interval = 3000, chance = 15, minDamage = -1200, maxDamage = -1500, target = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 109,
	armor = 109,
<<<<<<< HEAD
=======
	mitigation = 3.28,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE, percent = -20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 60 },
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
