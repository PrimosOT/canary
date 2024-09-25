local internalNpcName = "task seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType=132,
	lookHead=114,
	lookBody=88,
	lookLegs=94,
	lookFeet=114,
	lookAddons=3
}

npcConfig.flags = {
	floorchange = false,
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end


npcHandler:setMessage(MESSAGE_GREET, "Welcome, young |PLAYERNAME|!")
npcHandler:setMessage(MESSAGE_FAREWELL, "May Goku bless you, |PLAYERNAME|!")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)



npcConfig.currency = 49286


npcConfig.shop = {
	{ itemName = "spool of yarn", clientId = 5886, buy = 250 },
	{ itemName = "Legion Helmet", clientId = 3374, buy = 350 },
	{ itemName = "damaged steel helmet", clientId = 5924, buy = 300 },
	{ itemName = "winning lottery ticket", clientId = 5958, buy = 300 },
	{ itemName = "dragon claw", clientId = 5919, buy = 500 },
	{ itemName = "griffinclaw container", clientId = 5937, buy = 500 },
	{ itemName = "coral comb", clientId = 5945, buy = 500 },
	{ itemName = "Ron the Ripper's sabre", clientId = 6101, buy = 300 },
	{ itemName = "Deadeye Devious' eye patch", clientId = 6102, buy = 300 },
	{ itemName = "Lethal Lissy's shirt", clientId = 6100, buy = 300 },
	{ itemName = "Brutus Bloodbeard's hat", clientId = 6099, buy = 300 },
	{ itemName = "voodoo doll", clientId = 3002, buy = 250 },
	{ itemName = "nose ring", clientId = 5804, buy = 500 },
	{ itemName = "staff", clientId = 6107, buy = 200 },
	{ itemName = "plague mask", clientId = 12786, buy = 200 },
	{ itemName = "plague bell", clientId = 12787, buy = 200 },
	{ itemName = "dream warden claw", clientId = 20275, buy = 200 },
	{ itemName = "dream warden mask", clientId = 20276, buy = 200 },
	{ itemName = "deed of ownership", clientId = 7866, buy = 300 },
	{ itemName = "diapason", clientId = 12547, buy = 400 },
	{ itemName = "nightmare horn", clientId = 20274, buy = 400 },
	{ itemName = "jester hat", clientId = 894, buy = 300 },
	{ itemName = "jester staff", clientId = 895, buy = 300 },
	{ itemName = "brass button", clientId = 37604, buy = 300 },
	{ itemName = "decorative plume", clientId = 37605, buy = 300 },
	{ itemName = "porcelain mask", clientId = 25088, buy = 300 },
	{ itemName = "colourful feathers", clientId = 25089, buy = 15 },
	{ itemName = "Lasting Exercise Wand", clientId = 35290, buy = 250 },
	{ itemName = "Lasting Exercise Rod", clientId = 35289, buy = 250 },
	{ itemName = "Lasting Exercise Sword", clientId = 35285, buy = 250 },
	{ itemName = "Lasting Exercise Axe", clientId = 35286, buy = 250 },
	{ itemName = "Lasting Exercise Club", clientId = 35287, buy = 250 },
	{ itemName = "Lasting Exercise Bow", clientId = 35288, buy = 250 },

}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
