local mType = Game.createMonsterType("Sopping Corpus")
local monster = {}

<<<<<<< HEAD
monster.description = "a Sopping Corpus"
monster.experience = 21600
=======
monster.description = "a sopping corpus"
monster.experience = 22465
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1659,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
=======
monster.raceId = 2397
monster.Bestiary = {
	class = "Undead",
	race = BESTY_RACE_UNDEAD,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Jaded Roots.",
}

>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.health = 33400
monster.maxHealth = 33400
monster.race = "undead"
monster.corpse = 43836
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
<<<<<<< HEAD
	chance = 10,
}

monster.raceId = 2397
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

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
=======
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
	{ name = "ripper lance", chance = 8304, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_ICEDAMAGE, minDamage = -450, maxDamage = -1000, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_BIGCLOUDS, target = true },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_HOLYDAMAGE, minDamage = -550, maxDamage = -900, radius = 4, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -750, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -900, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
=======
monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "*Lessshhh!*", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 6961, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 10285, maxCount = 2 },
	{ name = "crimson sword", chance = 10090, maxCount = 3 },
	{ name = "ultimate health potion", chance = 10285, maxCount = 2 },
	{ name = "organic acid", chance = 7678, maxCount = 1 },
	{ name = "rotten roots", chance = 13133, maxCount = 1 },
	{ name = "emerald bangle", chance = 8558, maxCount = 1 },
	{ name = "underworld rod", chance = 8380, maxCount = 1 },
	{ name = "violet gem", chance = 5084, maxCount = 1 },
	{ name = "blue gem", chance = 9808, maxCount = 1 },
	{ name = "relic sword", chance = 6964, maxCount = 1 },
	{ name = "skullcracker armor", chance = 7270, maxCount = 1 },
	{ name = "ring of green plasma", chance = 3073, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1600 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -1300, maxDamage = -1600, length = 8, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1200, maxDamage = -1500, effect = CONST_ME_BIG_SCRATCH, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1600, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1200, maxDamage = -1500, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "largepoisonring", interval = 2000, chance = 10, minDamage = -1000, maxDamage = -1200, target = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 112,
	armor = 112,
<<<<<<< HEAD
=======
	mitigation = 3.25,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 40 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 50 },
	{ type = COMBAT_FIREDAMAGE, percent = 30 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
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
