local mType = Game.createMonsterType("Darklight Matter")
local monster = {}

monster.description = "a darklight matter"
<<<<<<< HEAD
monster.experience = 20600
=======
monster.experience = 22250
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.outfit = {
	lookType = 1624,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2380
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
	class = "Slime",
	race = BESTY_RACE_SLIME,
	toKill = 5000,
	FirstUnlock = 200,
	SecondUnlock = 2000,
	CharmsPoints = 100,
	Stars = 5,
	Occurrence = 0,
	Locations = "Darklight Core.",
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.health = 30150
monster.maxHealth = 30150
<<<<<<< HEAD
monster.race = "undead"
=======
monster.race = "venom"
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
monster.corpse = 43571
monster.speed = 230
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
	targetDistance = 1,
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
	{ name = "crystal coin", chance = 5704, maxCount = 1 },
	{ name = "unstable darklight matter", chance = 6566, maxCount = 1 },
=======
monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "*twiggle*", yell = false },
	{ text = "SSSSHRRR...", yell = false },
}

monster.loot = {
	{ name = "crystal coin", chance = 11755, maxCount = 1 },
	{ name = "unstable darklight matter", chance = 9060, maxCount = 1 },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ name = "darklight core", chance = 12887, maxCount = 1 },
	{ name = "ultimate health potion", chance = 6553, maxCount = 6 },
	{ id = 3039, chance = 5852, maxCount = 1 }, -- red gem
	{ name = "darklight matter", chance = 8849, maxCount = 1 },
	{ name = "rubber cap", chance = 7180, maxCount = 1 },
<<<<<<< HEAD
	{ id = 23544, chance = 11667, maxCount = 1 }, -- collar of red plasma
	{ name = "green gem", chance = 9395, maxCount = 1 },
	{ name = "shadow sceptre", chance = 12788, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -800 },
	{ name = "combat", interval = 4000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1300, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 3000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -750, radius = 4, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SPECTRALBOLT, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_HOLYDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_GROUNDSHAKER, target = true },
}

monster.defenses = {
	defense = 100,
	armor = 98,
=======
	{ id = 23544, chance = 3500, maxCount = 1 }, -- collar of red plasma
	{ name = "green gem", chance = 3500, maxCount = 1 },
	{ name = "shadow sceptre", chance = 3500, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1100 },
	{ name = "combat", interval = 2500, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -1800, radius = 5, effect = CONST_ME_PURPLESMOKE, target = true },
	{ name = "combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -1500, maxDamage = -1600, radius = 5, effect = CONST_ME_GHOSTLY_BITE, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -1400, maxDamage = -1650, length = 8, spread = 3, effect = CONST_ME_ELECTRICALSPARK, target = false },
	{ name = "largeredring", interval = 2000, chance = 15, minDamage = -800, maxDamage = -1500, target = false },
}

monster.defenses = {
	defense = 98,
	armor = 98,
	mitigation = 3.28,
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 40 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = -25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
<<<<<<< HEAD
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
=======
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
>>>>>>> e940fa3c9cdf2da47d28c0257556857857fcdac7
	{ type = "bleed", condition = false },
}

mType:register(monster)
