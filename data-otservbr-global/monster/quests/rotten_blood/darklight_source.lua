local mType = Game.createMonsterType("Darklight Source")
local monster = {}

<<<<<<< HEAD
monster.description = "a Darklight Source"
=======
monster.description = "a darklight source"
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.experience = 22465
monster.outfit = {
	lookType = 1660,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2398
monster.Bestiary = {
<<<<<<< HEAD
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary.",
=======
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Darklight Core",
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.health = 31550
monster.maxHealth = 31550
monster.race = "undead"
monster.corpse = 43840
monster.speed = 220
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

<<<<<<< HEAD
monster.voices = {}

=======
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.loot = {
	{ name = "crystal coin", chance = 5214, maxCount = 1 },
	{ name = "yellow darklight matter", chance = 9397, maxCount = 1 },
	{ name = "dark obsidian splinter", chance = 13215, maxCount = 1 },
	{ name = "darklight core", chance = 7570, maxCount = 1 },
	{ name = "small sapphire", chance = 5644, maxCount = 2 },
	{ name = "blue gem", chance = 12909, maxCount = 1 },
	{ name = "twiceslicer", chance = 11596, maxCount = 1 },
	{ name = "white gem", chance = 13964, maxCount = 1 },
}

monster.attacks = {
<<<<<<< HEAD
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000 },
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1100, radius = 4, shootEffect = CONST_ANI_ETHEREALSPEAR, effect = CONST_ME_ENERGYAREA, target = true },
	{ name = "combat", interval = 3000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1100, radius = 4, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -550, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
=======
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200 },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -1650, length = 8, spread = 3, effect = CONST_ME_BLUE_ENERGY_SPARK, target = false },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -1500, maxDamage = -1600, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1300, maxDamage = -1500, radius = 5, effect = CONST_ME_ELECTRICALSPARK, target = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 115,
	armor = 115,
<<<<<<< HEAD
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 55 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = -11 },
=======
	mitigation = 3.19,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 55 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = -15 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 40 },
<<<<<<< HEAD
	{ type = COMBAT_HOLYDAMAGE, percent = 30 },
	{ type = COMBAT_DEATHDAMAGE, percent = 30 },
=======
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
