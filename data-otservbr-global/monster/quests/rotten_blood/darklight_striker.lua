local mType = Game.createMonsterType("Darklight Striker")
local monster = {}

<<<<<<< HEAD
monster.description = "a Darklight Striker"
monster.experience = 20550
=======
monster.description = "a darklight striker"
monster.experience = 22200
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1661,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

<<<<<<< HEAD
=======
monster.raceId = 2399
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Darklight Core",
}

>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.health = 29700
monster.maxHealth = 29700
monster.race = "undead"
monster.corpse = 43844
<<<<<<< HEAD
monster.speed = 220
monster.manaCost = 0

monster.raceId = 2399
monster.Bestiary = {
	class = "Construct",
	race = BESTY_RACE_CONSTRUCT,
	toKill = 5000,
	FirstUnlock = 25,
	SecondUnlock = 3394,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Sanctuary.",
}

=======
monster.speed = 210
monster.manaCost = 0

>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
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
	{ name = "crystal coin", chance = 14380, maxCount = 1 },
	{ name = "unstable darklight matter", chance = 14492, maxCount = 1 },
	{ name = "darklight core", chance = 9783, maxCount = 1 },
	{ name = "small topaz", chance = 11140, maxCount = 3 },
	{ name = "ice rapier", chance = 5104, maxCount = 1 },
	{ name = "dark obsidian splinter", chance = 14185, maxCount = 1 },
	{ name = "blue gem", chance = 7355, maxCount = 1 },
	{ name = "crystal mace", chance = 8812, maxCount = 1 },
	{ name = "zaoan helmet", chance = 5572, maxCount = 1 },
}

monster.attacks = {
<<<<<<< HEAD
	{ name = "combat", interval = 2000, chance = 17, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_GROUNDSHAKER, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -700, maxDamage = -1100, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -650, maxDamage = -900, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO, target = true },
=======
	{ name = "melee", interval = 2500, chance = 100, minDamage = 0, maxDamage = -1100 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -1650, length = 8, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -1100, maxDamage = -1600, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = false },
	{ name = "combat", interval = 2500, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -1300, maxDamage = -1500, radius = 5, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "extended holy chain", interval = 2000, chance = 15, minDamage = -800, maxDamage = -1200 },
	{ name = "largepinkring", interval = 2500, chance = 10, minDamage = -1500, maxDamage = -1900, target = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.defenses = {
	defense = 112,
	armor = 112,
<<<<<<< HEAD
=======
	mitigation = 3.10,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 35 },
<<<<<<< HEAD
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
=======
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = COMBAT_FIREDAMAGE, percent = -25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 30 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
<<<<<<< HEAD
	{ type = COMBAT_DEATHDAMAGE, percent = 5 },
=======
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
