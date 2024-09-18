local mType = Game.createMonsterType("Converter")
local monster = {}

<<<<<<< HEAD
monster.description = "a Converter"
=======
monster.description = "a converter"
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.experience = 21425
monster.outfit = {
	lookType = 1623,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2379
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
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
	Locations = "Gloom Pillars.",
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.health = 29600
monster.maxHealth = 29600
monster.race = "undead"
monster.corpse = 43567
monster.speed = 250
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
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
<<<<<<< HEAD
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
=======
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
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

=======
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.loot = {
	{ name = "crystal coin", chance = 5230, maxCount = 1 },
	{ name = "darklight obsidian axe", chance = 6963, maxCount = 1 },
	{ name = "darklight matter", chance = 6927, maxCount = 1 },
	{ name = "darklight core", chance = 10715, maxCount = 1 },
	{ name = "wand of starstorm", chance = 8797, maxCount = 1 },
	{ name = "blue gem", chance = 9372, maxCount = 1 },
	{ name = "ultimate health potion", chance = 9851, maxCount = 5 },
	{ name = "focus cape", chance = 6945, maxCount = 1 },
	{ name = "white gem", chance = 14533, maxCount = 1 },
}

monster.attacks = {
<<<<<<< HEAD
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -700, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 18, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -900, radius = 3, effect = CONST_ME_FIREAREA, target = false },
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -900, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -1000, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1150, length = 8, effect = CONST_ME_EXPLOSIONHIT, target = false },
=======
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -900 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -1900, length = 7, spread = 0, effect = CONST_ME_PINK_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -1500, maxDamage = -1600, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "largeholyring", interval = 2000, chance = 15, minDamage = -1400, maxDamage = -1900 },
	{ name = "energy chain", interval = 3200, chance = 20, minDamage = -800, maxDamage = -1200 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 100,
	armor = 100,
<<<<<<< HEAD
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -9 },
	{ type = COMBAT_EARTHDAMAGE, percent = 90 },
	{ type = COMBAT_FIREDAMAGE, percent = 75 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 90 },
	{ type = COMBAT_HOLYDAMAGE, percent = 65 },
	{ type = COMBAT_DEATHDAMAGE, percent = -9 },
=======
	mitigation = 3.31,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 35 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
