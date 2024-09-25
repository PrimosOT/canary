local addonBonus = CreatureEvent("AddonBonus")

function addonBonus.onLogin(player)
	-- Define different conditions
	local conditions = {
		mage1 = Condition(CONDITION_ATTRIBUTES), -- Condition for mage addon 1
		mage2 = Condition(CONDITION_ATTRIBUTES), -- Condition for mage addon 2
		mage3 = Condition(CONDITION_ATTRIBUTES), -- Condition for mage addon 3
		noble1 = Condition(CONDITION_ATTRIBUTES), -- Condition for nobleman/noblewoman addon 1
		noble2 = Condition(CONDITION_ATTRIBUTES), -- Condition for nobleman/noblewoman addon 2
		noble3 = Condition(CONDITION_ATTRIBUTES), -- Condition for nobleman/noblewoman addon 3
		forestWarden1 = Condition(CONDITION_ATTRIBUTES), -- Condition for forest warden addon 1
		forestWarden2 = Condition(CONDITION_ATTRIBUTES), -- Condition for forest warden addon 2
		forestWarden3 = Condition(CONDITION_ATTRIBUTES), -- Condition for forest warden addon 3
		hunter1 = Condition(CONDITION_ATTRIBUTES), -- Condition for hunter addon 1
		hunter2 = Condition(CONDITION_ATTRIBUTES), -- Condition for hunter addon 2
		hunter3 = Condition(CONDITION_ATTRIBUTES)  -- Condition for hunter addon 3
	}

	-- Set parameters for each condition
	-- CONDITION_PARAM_TICKS -1 for the entire time player is logged in

	--- Noble 
	conditions.noble1:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.noble1:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, 5)
	conditions.noble1:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE, 25)

	conditions.noble2:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.noble2:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, 10)
	conditions.noble2:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE, 35)

	conditions.noble3:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.noble3:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, 15)
	conditions.noble3:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_DAMAGE, 50)

	--- Mage 	
	conditions.mage1:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.mage1:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 1)
	conditions.mage1:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 25)
	conditions.mage1:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 25)

	conditions.mage2:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.mage2:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 2)
	conditions.mage2:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 50)
	conditions.mage2:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 35)

	conditions.mage3:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.mage3:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 3)
	conditions.mage3:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 100)
	conditions.mage3:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 50)

	--- Forest Warden	
	conditions.forestWarden1:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_ABSORB_DEATHPERCENT, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 50)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 50)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_MELEE, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_FIST, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_CLUB, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_SWORD, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_AXE, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_SHIELD, 1)
	conditions.forestWarden1:setParameter(CONDITION_PARAM_SKILL_FISHING, 1)

	conditions.forestWarden2:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_ABSORB_DEATHPERCENT, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 100)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 100)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_MELEE, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_FIST, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_CLUB, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_SWORD, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_AXE, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_SHIELD, 2)
	conditions.forestWarden2:setParameter(CONDITION_PARAM_SKILL_FISHING, 2)

	conditions.forestWarden3:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_ABSORB_DEATHPERCENT, 1)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_AMOUNT, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_LIFE_LEECH_CHANCE, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 200)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_CHANCE, 5)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_MANA_LEECH_AMOUNT, 5)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 200)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_MELEE, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_FIST, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_CLUB, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_SWORD, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_AXE, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_SHIELD, 3)
	conditions.forestWarden3:setParameter(CONDITION_PARAM_SKILL_FISHING, 3)
	
	--- Hunter
	conditions.hunter1:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.hunter1:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 1)
	conditions.hunter1:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 300)
	conditions.hunter1:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 300)

	conditions.hunter2:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.hunter2:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 2)
	conditions.hunter2:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 600)
	conditions.hunter2:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 600)

	conditions.hunter3:setParameter(CONDITION_PARAM_TICKS, -1)
	conditions.hunter3:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 5)
	conditions.hunter3:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTS, 900)
	conditions.hunter3:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTS, 900)
	conditions.hunter3:setParameter(CONDITION_PARAM_SKILL_CRITICAL_HIT_CHANCE, 1000)

	-- Getting the player id
	local playerId = player:getGuid()

	-- Query for looktype
	local lookTypeQuery = db.storeQuery('SELECT `looktype` FROM `players` WHERE `id` =' .. playerId .. ' LIMIT 1;')
	local lookType = Result.getNumber(lookTypeQuery, "looktype")

	-- Query for lookaddons
	local lookAddonsQuery = db.storeQuery('SELECT `lookaddons` FROM `players` WHERE `id` =' .. playerId .. ' LIMIT 1;')
	local lookAddons = Result.getNumber(lookAddonsQuery, "lookaddons")

-- if the player has the outfit set, male or female, then we'll look if the player has any addon for it
-- if so, we'll then send a custom message to the player and give the bonus that we previously set
if lookType == 140 or lookType == 132 then -- Noblewoman or Nobleman outfit
    if lookAddons == 1 then -- if player is using the first addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[CRIT CHANCE] 5%\n[CRIT DAMAGE] 25%")
        player:addCondition(conditions.noble1)
    elseif lookAddons == 2 then -- if player is using the second addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[CRIT CHANCE] 10%\n[CRIT DAMAGE] 35%")
        player:addCondition(conditions.noble2)
    elseif lookAddons == 3 then -- if player is using both first and second addons
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[CRIT CHANCE] 15%\n[CRIT DAMAGE] 50%")
        player:addCondition(conditions.noble3)
    else -- player isn't using any addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are not eligible for a bonus addon")
    end
elseif lookType == 137 or lookType == 129 then -- Hunter outfit
    if lookAddons == 1 then -- if player is using the first addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Distance Skill] +1\n[Max Mana Points] 300\n[Max Hitpoints] 300")
        player:addCondition(conditions.hunter1)
    elseif lookAddons == 2 then -- if player is using the second addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Distance Skill] +2\n[Max Mana Points] 600\n[Max Hitpoints] 600")
        player:addCondition(conditions.hunter2)
    elseif lookAddons == 3 then -- if player is using both first and second addons
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Distance Skill] +5\n[Max Mana Points] 900\n[Max Hitpoints] 900\n[Critical Hit Chance] +1000%")
        player:addCondition(conditions.hunter3)
    else -- player isn't using any addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are not eligible for a bonus addon")
    end
elseif lookType == 138 or lookType == 130 then -- Mage outfit
    if lookAddons == 1 then -- if player is using the first addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Magic Level] +1\n[MANA LEECH CHANCE] 25%\n[MANA LEECH] 25%")
        player:addCondition(conditions.mage1)
    elseif lookAddons == 2 then -- if player is using the second addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Magic Level] +2\n[MANA LEECH CHANCE] 50%\n[MANA LEECH] 35%")
        player:addCondition(conditions.mage2)
    elseif lookAddons == 3 then -- if player is using both first and second addons
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[Magic Level] +3\n[MANA LEECH CHANCE] 100%\n[MANA LEECH] 50%")
        player:addCondition(conditions.mage3)
    else -- player isn't using any addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are not eligible for a bonus addon")
    end
elseif lookType == 1415 or lookType == 1416 then -- Forest Warden outfit
    if lookAddons == 1 then -- if player is using the first addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[LIFE LEECH CHANCE] 1%\n[LIFE LEECH AMOUNT] 100\n[Max Hitpoints] 50\n[MANA LEECH CHANCE] 100%\n[MANA LEECH AMOUNT] 100\n[Max Mana Points] 50\n[All Skills] +100")
        player:addCondition(conditions.forestWarden1)
    elseif lookAddons == 2 then -- if player is using the second addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[LIFE LEECH CHANCE] 2%\n[LIFE LEECH AMOUNT] 200\n[Max Hitpoints] 100\n[MANA LEECH CHANCE] 200%\n[MANA LEECH AMOUNT] 200\n[Max Mana Points] 100\n[All Skills] +200")
        player:addCondition(conditions.forestWarden2)
    elseif lookAddons == 3 then -- if player is using both first and second addons
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are eligible for a bonus addon..\n[LIFE LEECH CHANCE] 3%\n[LIFE LEECH AMOUNT] 300\n[Max Hitpoints] 200\n[MANA LEECH CHANCE] 500%\n[MANA LEECH AMOUNT] 500\n[Max Mana Points] 200\n[All Skills] +300")
        player:addCondition(conditions.forestWarden3)
    else -- player isn't using any addon
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are not eligible for a bonus addon")
    end
else -- if player is using any outfit that isn't set
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You are not eligible for a bonus addon")
	end
	return true
end

addonBonus:register()


