local mType = Game.createMonsterType("Oozing Corpus")
local monster = {}

<<<<<<< HEAD
monster.description = "a Oozing Corpus"
monster.experience = 19800
=======
monster.description = "an oozing corpus"
monster.experience = 20600
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1625,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
=======
monster.raceId = 2381
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
monster.health = 28700
monster.maxHealth = 28700
monster.race = "undead"
monster.corpse = 43575
monster.speed = 220
monster.manaCost = 0

<<<<<<< HEAD
monster.raceId = 2381
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
<<<<<<< HEAD
	level = 0,
	color = 0,
}

monster.voices = {}

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
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1050 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -750, maxDamage = -1000, radius = 4, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1250, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
=======
	level = 4,
	color = 143,
}

monster.loot = {
	{ name = "crystal coin", chance = 9000, maxCount = 1 },
	{ name = "organic acid", chance = 7678, maxCount = 1 },
	{ name = "terra boots", chance = 12369, maxCount = 1 },
	{ name = "small amethyst", chance = 12859, maxCount = 1 },
	{ name = "rotten roots", chance = 13133, maxCount = 1 },
	{ name = "blue gem", chance = 9808, maxCount = 1 },
	{ name = "dragonbone staff", chance = 6964, maxCount = 1 },
	{ name = "worm sponge", chance = 7270, maxCount = 1 },
	{ name = "violet gem", chance = 5084, maxCount = 1 },
	{ name = "jade hammer", chance = 3073, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1600 },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1300, maxDamage = -1700, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1550, length = 8, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1100, maxDamage = -1550, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "death chain", interval = 3000, chance = 15, minDamage = -900, maxDamage = -1300, target = true },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 100,
<<<<<<< HEAD
	armor = 117,
=======
	armor = 107,
	mitigation = 3.25,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 30 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -25 },
	{ type = COMBAT_EARTHDAMAGE, percent = 40 },
	{ type = COMBAT_FIREDAMAGE, percent = 25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
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
