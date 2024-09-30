local internalNpcName = "[BOSSES]"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookMount = 0,
	lookAddons = 0
}

npcConfig.flags = {
	floorchange = false,
}

-- Removemos o KeywordHandler e o NpcHandler relacionados a diálogo
-- Remover ou desativar as seguintes partes relacionadas ao diálogo
-- local keywordHandler = KeywordHandler:new()
-- local npcHandler = NpcHandler:new(keywordHandler)

-- Mantém o comportamento de movimento e outras interações, mas sem diálogos
npcType.onThink = function(npc, interval)
	-- Pode adicionar comportamentos que não envolvam diálogos aqui
end

npcType.onAppear = function(npc, creature)
	-- NPC aparece, sem diálogo
end

npcType.onDisappear = function(npc, creature)
	-- NPC desaparece, sem diálogo
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	-- Movimento do NPC, sem diálogos
end

-- Removido o método onSay para impedir diálogos
-- npcType.onSay = nil

-- Removido o onCloseChannel, já que não há canal de conversação
-- npcType.onCloseChannel = nil

-- Shop configuration
npcConfig.currency = 44905
npcConfig.currency = 44873

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
