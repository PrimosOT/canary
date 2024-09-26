local internalNpcName = "Crazy Online"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 512,
	lookHead = 95,
	lookBody = 0,
	lookLegs = 56,
	lookFeet = 0,
	lookMount = 0,
	lookAddons = 3
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



npcConfig.currency = 44905


npcConfig.currency = 44873

npcConfig.shop = {
	{ itemName = "lasting exercise rod", clientId = 35289, buy = 100},
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 100, },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 100, },
	{ itemName = "lasting exercise club", clientId = 35287, buy = 100, },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 100, },
	{ itemName = "lasting exercise wand", clientId = 35290, buy = 100, },
	{ itemName = "lasting exercise fist", clientId = 44916, buy = 100, },
	{ itemName = "Roulette Big Coin", clientId = 44784, buy = 200, },
	{ itemName = "Roulette Box Coin", clientId = 44853, buy = 200, },
	{ itemName = "Big Lion Box", clientId = 44863, buy = 200 },
	{ itemName = "Big Falcon box", clientId = 44860, buy = 200 },
	{ itemName = "Big Gnome box", clientId = 44862, buy = 200},
	{ itemName = "Big Random Box", clientId = 44861, buy = 200},
	{ itemName = "Big Cobra box", clientId = 44864, buy = 200},
	{ itemName = "Stamina Refill", clientId = 28495, buy = 200, },
	{ itemName = "exalted core", clientId = 37110, buy = 10 },
	{ itemName = "squeezing gear of girlpower", clientId = 9596, buy = 50 }


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
