local mType = Game.createMonsterType("Meandering Mushroom")
local monster = {}

<<<<<<< HEAD
monster.description = "a Meandering Mushroom"
monster.experience = 19800
=======
monster.description = "a meandering mushroom"
monster.experience = 21980
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1621,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2376
monster.Bestiary = {
<<<<<<< HEAD
	class = "Plant",
	race = BESTY_RACE_PLANT,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary.",
=======
	class = "Slime",
	race = BESTY_RACE_SLIME,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Putrefactory.",
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.health = 29100
monster.maxHealth = 29100
monster.race = "undead"
monster.corpse = 43559
monster.speed = 205
monster.manaCost = 0

monster.changeTarget = {
<<<<<<< HEAD
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
=======
	interval = 5000,
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
	canWalkOnFire = true,
=======
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 0,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

<<<<<<< HEAD
monster.voices = {}

monster.loot = {
	{ name = "crystal coin", chance = 6415, maxCount = 1 },
=======
monster.loot = {
	{ name = "crystal coin", chance = 11755, maxCount = 1 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ name = "lichen gobbler", chance = 9121, maxCount = 1 },
	{ name = "white mushroom", chance = 12998, maxCount = 3 },
	{ name = "rotten roots", chance = 9791, maxCount = 1 },
	{ name = "wand of decay", chance = 14668, maxCount = 1 },
	{ id = 3039, chance = 10406, maxCount = 1 }, -- red gem
	{ name = "worm sponge", chance = 10697, maxCount = 1 },
	{ name = "dark mushroom", chance = 12313, maxCount = 3 },
	{ name = "yellow gem", chance = 13520, maxCount = 1 },
	{ name = "brown mushroom", chance = 6422, maxCount = 3 },
	{ name = "terra amulet", chance = 13122, maxCount = 1 },
}

monster.attacks = {
<<<<<<< HEAD
	{ name = "melee", interval = 2000, chance = 100, minDamage = -850, maxDamage = -1200 },
	{ name = "combat", interval = 3000, chance = 24, type = COMBAT_EARTHDAMAGE, minDamage = -900, maxDamage = -1300, range = 7, radius = 3, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -1100, maxDamage = -1400, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1100, radius = 4, effect = CONST_ME_FIREAREA, target = false },
}

monster.defenses = {
	defense = 100,
	armor = 115,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 50 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE, percent = -30 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
=======
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1150 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1800, maxDamage = -1900, radius = 5, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1700, maxDamage = -1700, radius = 5, effect = CONST_ME_INSECTS, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -1100, maxDamage = -1300, length = 8, spread = 5, effect = CONST_ME_BLACKSMOKE, target = false },
	{ name = "largeblackring", interval = 2000, chance = 10, minDamage = -900, maxDamage = -1500, target = false },
}

monster.defenses = {
	defense = 115,
	armor = 115,
	mitigation = 3.19,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = -20 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 40 },
	{ type = COMBAT_HOLYDAMAGE, percent = -15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 50 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = "bleed", condition = false },
}

mType:register(monster)
