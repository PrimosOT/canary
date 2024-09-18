local mType = Game.createMonsterType("Bloated Man-Maggot")
local monster = {}

<<<<<<< HEAD
monster.description = "a Bloated Man-Maggot"
=======
monster.description = "a bloated man-maggot"
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.experience = 21570
monster.outfit = {
	lookType = 1654,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
monster.health = 31700
monster.maxHealth = 31700
monster.race = "undead"
monster.corpse = 43816
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	health = 10,
	damage = 10,
}

=======
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.raceId = 2392
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
	Locations = "Jaded Roots",
}

monster.health = 31700
monster.maxHealth = 31700
monster.race = "undead"
monster.corpse = 43816
monster.speed = 195
monster.manaCost = 305

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
<<<<<<< HEAD
	convinceable = false,
=======
	convinceable = true,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
<<<<<<< HEAD
	runHealth = 800,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
=======
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

monster.voices = {}

monster.loot = {
<<<<<<< HEAD
	{ name = "crystal coin", chance = 70540 },
	{ name = "platinum coin", chance = 90540, maxCount = 32 },
	{ name = "ultimate health potion", chance = 72220, maxCount = 7 },
	{ name = "gold ingot", chance = 34920 },
	{ name = "glacier kilt", chance = 12920 },
	{ name = "northwind rod", chance = 11920 },
	{ name = "wand of voodoo", chance = 14000 },
	{ name = "glacial rod", chance = 13450 },
	{ name = "green crystal fragment", chance = 22920 },
	{ name = "onyx chip", chance = 20000 },
	{ name = "rainbow quartz", chance = 13660, maxCount = 2 },
	{ name = "skullcracker armor", chance = 1680 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -1100, length = 5, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -1000, radius = 7, effect = CONST_ME_BIGCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK, target = true },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -700, range = 7, radius = 5, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEAREA, target = true },
=======
	{ name = "crystal coin", chance = 12961, maxCount = 1 },
	{ name = "organic acid", chance = 11678, maxCount = 1 },
	{ name = "might ring", chance = 10020, maxCount = 1 },
	{ name = "small emerald", chance = 9133, maxCount = 5 },
	{ name = "rotten roots", chance = 8637, maxCount = 1 },
	{ name = "bloated maggot", chance = 8133, maxCount = 1 },
	{ name = "terra rod", chance = 8078, maxCount = 1 },
	{ name = "butcher's axe", chance = 7967, maxCount = 1 },
	{ name = "blue gem", chance = 7808, maxCount = 1 },
	{ name = "violet gem", chance = 7084, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500 },
	{ name = "combat", interval = 2500, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1700, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1400, maxDamage = -1900, radius = 5, effect = CONST_ME_BIGPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1400, maxDamage = -1550, length = 8, spread = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
	{ name = "largefirering", interval = 2500, chance = 15, minDamage = -1400, maxDamage = -1800, target = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 104,
	armor = 104,
<<<<<<< HEAD
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 55 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 60 },
	{ type = COMBAT_FIREDAMAGE, percent = 85 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 95 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
=======
	mitigation = 3.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 45 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 40 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -15 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
