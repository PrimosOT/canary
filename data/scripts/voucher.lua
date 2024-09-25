local voucher = TalkAction("!voucher")

local vouchers = {"experience", "bestiary", "skill"}

function voucher.onSay(player, words, param)
    local kvCooldown = player:kv():get("voucherCooldown") or 0 -- cooldown para usar o cmd
    local indiceAleatorio = math.random(1, #vouchers)
    
    if os.date("%A") == "Friday" then
        if kvCooldown < os.time() then    
            local voucherAleatorio = vouchers[indiceAleatorio]
            player:kv():set("voucherActive", voucherAleatorio)
            player:kv():set("voucherTime", os.time() + 2 * 60 * 60)
            player:kv():set("voucherCooldown", os.time() + 24 * 60 * 60)
            
            -- Adicionando o efeito ao receber o voucher
            player:getPosition():sendMagicEffect(CONST_ME_EXPLOSIONAREA)
            
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce recebeu 2 horas do voucher " .. voucherAleatorio .. ".")
        else
            player:sendCancelMessage("Voce ja utilizou o voucher hoje.")
        end
    else -- não é sexta
        player:sendCancelMessage("Voce pode usar o comando apenas na sexta-feira.")
    end
    
    return true
end

voucher:groupType("normal")
voucher:register()

------------------------------------------------------------------------------------------------------------------------------
local voucherCheck = TalkAction("!checkvoucher")

function voucherCheck.onSay(player, words, param)
    local msg = ""
    local tempo = player:kv():get("voucherTime") or 0
    
    if tempo > os.time() then
        -- ativo
        local segundosRestantes = tempo - os.time()
        local minutosRestantes = math.floor(segundosRestantes / 60)
        local voucherAtivo = player:kv():get("voucherActive") or ""
        msg = "Voce tem o voucher de " .. voucherAtivo .. ".\n" .. "Tempo restante: " .. minutosRestantes .. " minutos."
    else
        -- sem voucher
        msg = "Voce nao tem um voucher ativo no momento."
    end
    
    player:showTextDialog(34266, msg)
    
    return true
end

voucherCheck:groupType("normal")
voucherCheck:register()
------------------------------------------------------------------------------------------------------------------------------

local bestiaryVoucherKill = CreatureEvent("bestiaryVoucherKill")

function bestiaryVoucherKill.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
    if not killer or not creature or not killer:isPlayer() or not creature:isMonster() then
        return true
    end
		local playerKv = killer:kv()
		local bestVoucherActive = playerKv:get("voucherActive") or ""
		local bestVoucherTime = playerKv:get("voucherTime") or 0
		if bestVoucherActive == "bestiary" and bestVoucherTime > os.time() then
			killer:addBestiaryKill(creature:getName(), 4)
		end
    return true
end

bestiaryVoucherKill:register()

local serverstartupBestiary = GlobalEvent("BestiaryVoucherStart")
function serverstartupBestiary.onStartup()
	for _, boss in pairs(Game.getMonsterTypes()) do
		local bn = boss:name()
		local mType = MonsterType(bn)
		if not mType then
			logger.warn("[BestiaryVoucherStart] monster with name {} is not a valid MonsterType", bn)
		else
			mType:registerEvent("bestiaryVoucherKill")
		end
	end
end

serverstartupBestiary:register()
