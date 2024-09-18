local mType = Game.createMonsterType("Mycobiontic Beetle")
local monster = {}

<<<<<<< HEAD
monster.description = "a Mycobiontic Beetle"
monster.experience = 20360
=======
monster.description = "a mycobiontic beetle"
monster.experience = 21175
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1620,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2375
monster.Bestiary = {
	class = "Vermin",
	race = BESTY_RACE_VERMIN,
	toKill = 5000,
<<<<<<< HEAD
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary.",
=======
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Jaded roots",
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.health = 30200
monster.maxHealth = 30200
monster.race = "undead"
monster.corpse = 43555
monster.speed = 230
monster.manaCost = 0

monster.changeTarget = {
<<<<<<< HEAD
	interval = 4000,
=======
	interval = 5000,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	chance = 10,
}

monster.strategiesTarget = {
<<<<<<< HEAD
	nearest = 80,
	health = 10,
	damage = 10,
=======
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
	canPushCreatures = true,
	staticAttackChance = 90,
<<<<<<< HEAD
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
=======
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
	{ name = "crystal coin", chance = 70540 },
	{ name = "serpent sword", chance = 81920 },
	{ id = 3029, chance = 64560, maxcount = 3 },
	{ name = "glacier mask", chance = 31920 },
	{ name = "ultimate health potion", chance = 71920, maxCount = 5 },
	{ name = "Organic Acid", chance = 44560, maxcount = 3 },
	{ name = "Rotten Roots", chance = 25920, maxcoutn = 2 },
	{ name = "scarab coin", chance = 22920, maxcount = 3 },
	{ name = "violet gem", chance = 18920 },
	{ name = "blue gem", chance = 15920 },
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -650, maxDamage = -1100, range = 7, radius = 4, effect = CONST_ME_ENERGYAREA, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 116,
=======
monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "crystal coin", chance = 15540 },
	{ name = "ultimate health potion", chance = 43253, maxCount = 5 },
	{ name = "serpent sword", chance = 32253 },
	{ name = "glacier mask", chance = 21920 },
	{ name = "small sapphire", chance = 34560, maxCount = 3 },
	{ name = "organic acid", chance = 11678, maxCount = 1 },
	{ name = "rotten roots", chance = 25920, maxCount = 1 },
	{ name = "scarab coin", chance = 22920, maxCount = 3 },
	{ name = "buckle", chance = 22920, maxCount = 1 },
	{ name = "rotten vermin ichor", chance = 22920, maxCount = 1 },
	{ name = "violet gem", chance = 18920 },
	{ name = "blue gem", chance = 15920 },
	{ name = "small ruby", chance = 24560, maxCount = 3 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1600 },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1100, maxDamage = -1400, radius = 5, effect = CONST_ME_GREEN_RINGS, target = true },
	{ name = "combat", intervall = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -1200, maxDamage = -1600, length = 8, spread = 3, effect = CONST_ME_GREEN_RINGS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1700, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1200, maxDamage = -1400, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "largepoisonring", interval = 2000, chance = 10, minDamage = -900, maxDamage = -1300 },
}

monster.defenses = {
	defense = 116,
	armor = 116,
	mitigation = 2.92,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 25 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 60 },
	{ type = COMBAT_FIREDAMAGE, percent = 35 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -25 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
<<<<<<< HEAD
	{ type = "paralyze", condition = true },
=======
	{ type = "paralyze", condition = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
