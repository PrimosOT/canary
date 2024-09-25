if not Karin then Karin = {} end
local localSetBonus = function (self, player, bonus)
    if bonus == 'instaexp' then
        local xp = math.floor(player:getExperience() * (self.bonus[bonus] / 100000))
        player:addExperience(xp, true)
        player:sendTextMessage(MESSAGE_LOOK, 'Voce ganhou '.. xp ..' experiencia extra!')
        
    else
        local playerBuffs = self:getPlayerData(player)
        if playerBuffs then
            player:sendTextMessage(MESSAGE_LOOK, 'Voce ativou o bonus '.. bonus .. ' por ' .. self.time .. ' minutos.')
            playerBuffs[bonus] = os.time() + (self.time * 60)
            if bonus == 'critical' then
                player:addCondition(criticalBuff)
            end
        end
    end
end


Karin.Orbs = {
    chance = 100, -- 3% chance to drop
    customItemBonus = 43738, -- item id bonus
    chanceBonus = 0, -- 5% chance to drop with item bonus
    time = 5, -- minutes
    bonus = {
        ['loot'] = 10, -- 20% loot bonus
        ['exp'] = 15, -- 15% exp bonus
        ['critical'] = 15, --% critical bonnus
        ['instaexp'] = 5, -- %
    },
    players = {},
    spells = {
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_MORTAREA, 32, min, max, COMBAT_DEATHDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_MORTAREA, 32, min, max, COMBAT_DEATHDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, 44, 29, min, max, COMBAT_ICEDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_HITAREA, CONST_ANI_POWERBOLT, min, max, COMBAT_PHYSICALDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, 44, 29, min, max, COMBAT_ICEDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_HITAREA, CONST_ANI_POWERBOLT, min, max, COMBAT_PHYSICALDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_MORTAREA, 32, min, max, COMBAT_DEATHDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_MORTAREA, 32, min, max, COMBAT_DEATHDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, 44, 29, min, max, COMBAT_ICEDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_HITAREA, CONST_ANI_POWERBOLT, min, max, COMBAT_PHYSICALDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, 44, 29, min, max, COMBAT_ICEDAMAGE)
        end,
        function(position, min, max) 
            Karin:rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType(position, 4, 4, CONST_ME_HITAREA, CONST_ANI_POWERBOLT, min, max, COMBAT_PHYSICALDAMAGE)
        end,
    },
    effects = {
        [222] = function (self, player, cb)
            self:setBonus(player, 'loot')
            cb()
        end,
        [223] = function (self, player, cb)
            self:setBonus(player, 'exp')
            cb()
        end,
        [224] = function (self, player, cb)
            self:setBonus(player, 'critical')
            cb()
        end,
        [225] = function (self, player, cb)
            local base = player:getMaxHealth() * 0.1
            local min, max = math.floor(base), math.floor(base * 1.5)
         
            local position = player:getPosition()
        
            local randomSpell = self.spells[math.random(#self.spells)]
            randomSpell(position, min, max)
            cb()
        end,
        [226] = function (self, player, cb)
            self:setBonus(player, 'instaexp')
            cb()
        end,
    }
 }
 
local criticalBuff = Condition(CONDITION_ATTRIBUTES)
criticalBuff:setParameter(CONDITION_PARAM_TICKS, Karin.Orbs.time * 60 * 1000)
criticalBuff:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, Karin.Orbs.bonus['critical'])
criticalBuff:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

function Karin.Orbs:setBonus(player, bonus)
    localSetBonus(Karin.Orbs, player, bonus)
end

 __SystemFunctions = {
    getPlayerData = function (self, player)
        local pid = player:getId()
        if not self.players[pid] then
            self.players[pid] = {}
        end
        return self.players[pid]
    end,
    setBonus = function (self, player, bonus)
        localSetBonus(self, player, bonus)
    end,
    getBonus = function (self, player, bonus)
        local playerBuffs = self:getPlayerData(player)
        if playerBuffs[bonus] and playerBuffs[bonus] > os.time() then
            return self.bonus[bonus]
        end
    end,
    drop = function (self, creature)
        local pos = Karin:getFreePosition(creature:getPosition(), 4, true)
        local from = creature:getPosition()
        from:sendDistanceEffect(pos, CONST_ANI_SMALLHOLY)
        addEvent(function ()
            self:enqueue(pos, 150)
        end, 200)
    end,
    enqueue = function (self, pos, index)
        index = index - 1
        if index > 0 then
            if self:checkPlayer(pos) then
                return true
            end
            addEvent(self.enqueue, 200, self, pos, index)
        end
    end,
    checkPlayer = function (self, pos)
        local tile = Tile(pos)
        if tile then
            local effect, action = self:getRandomEffect()
            local player = tile:getTopCreature()
        
            if player and player:isPlayer() then
                action(self, player, function ()
                    addEvent(function() pos:sendMagicEffect(effect) end, 100)
                    addEvent(function() pos:sendMagicEffect(effect) end, 100 * 2)
                    addEvent(function() pos:sendMagicEffect(effect) end, 100 * 3)
                    addEvent(function() pos:sendMagicEffect(effect) end, 100 * 4)
                end)
                return true
            end
            pos:sendMagicEffect(effect)
        end
    end,
    getRandomEffect = function(self)
        local keys = {}
        for key, func in pairs(self.effects) do
            table.insert(keys, key)
        end
        return keys[math.random(#keys)], self.effects[keys[math.random(#keys)]]
    end

 }
 
 Karin.Orbs = setmetatable(
     Karin.Orbs,
     { __index = __SystemFunctions }
 )

local Karin_Orb_OnDeath = CreatureEvent("Karin_Orb_OnDeath")

function Karin_Orb_OnDeath.onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified)
    local target = creature
    local creature = killer
	if not creature or not creature:isPlayer() then return true end
    
    local chance = Karin.Orbs.chance
    local slotItemAmmo = creature:getSlotItem(CONST_SLOT_AMMO)
    if slotItemAmmo and slotItemAmmo:getId() == Karin.Orbs.customItemBonus then
        creature:getPosition():sendMagicEffect(203)
        chance = Karin.Orbs.chanceBonus
    end
    
    if math.random(100) < chance then
        Karin.Orbs:drop(target)
    end
	return true
end

Karin_Orb_OnDeath:register()