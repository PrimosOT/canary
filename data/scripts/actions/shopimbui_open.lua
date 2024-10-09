local shop = {}
local modalWindow = ModalWindow(99999, "~ Shop Item List ~", "List of items available in the shop.")
modalWindow:addButton(1, "Buy")
modalWindow:addButton(2, "Close")
modalWindow:setDefaultEscapeButton(2)
modalWindow:setDefaultEnterButton(2)

-- Função para adicionar itens à loja
local function addItemsToShop()
    local index = 1
    for name, item in pairs({
        ["Mana Leech"] = {
            items = {
                { id = 11492, quantity = 25 },
                { id = 20200, quantity = 25 },
                { id = 22730, quantity = 5 },
            },
            price = 3000
        },
        ["Venom"] = {
            items = {
                { id = 9686, quantity = 25 },
                { id = 9640, quantity = 20 },
                { id = 21194, quantity = 2 },
            },
            price = 3000
        },
        ["Frost"] = {
            items = {
                { id = 9661, quantity = 25 },
                { id = 21801, quantity = 10 },
                { id = 9650, quantity = 5 },
            },
            price = 3000
        },
        ["Electrify"] = {
            items = {
                { id = 18993, quantity = 25 },
                { id = 21975, quantity = 5 },
                { id = 23508, quantity = 1 },
            },
            price = 3000
        },
        ["Reap"] = {
            items = {
                { id = 11484, quantity = 25 },
                { id = 9647, quantity = 20 },
                { id = 10420, quantity = 5 },
            },
            price = 3000
        },
        ["Vampirism"] = {
            items = {
                { id = 9685, quantity = 25 },
                { id = 9633, quantity = 15 },
                { id = 9663, quantity = 5 },
            },
            price = 3000
        },
        ["Void"] = {
            items = {
                { id = 11492, quantity = 25 },
                { id = 20200, quantity = 25 },
                { id = 22730, quantity = 5 },
            },
            price = 3000
        },
        ["Strike"] = {
            items = {
                { id = 11444, quantity = 20 },
                { id = 10311, quantity = 25 },
                { id = 22728, quantity = 5 },
            },
            price = 3000
        },
        ["Lich Shroud"] = {
            items = {
                { id = 11466, quantity = 25 },
                { id = 22007, quantity = 20 },
                { id = 9660, quantity = 5 },
            },
            price = 3000
        },
        ["Snake Skin"] = {
            items = {
                { id = 17823, quantity = 25 },
                { id = 9694, quantity = 20 },
                { id = 11702, quantity = 10 },
            },
            price = 3000
        },
        ["Dragon Hide"] = {
            items = {
                { id = 5877, quantity = 20 },
                { id = 16131, quantity = 10 },
                { id = 11658, quantity = 5 },
            },
            price = 3000
        },
        ["Quara Scale"] = {
            items = {
                { id = 10295, quantity = 25 },
                { id = 10307, quantity = 15 },
                { id = 14012, quantity = 10 },
            },
            price = 3000
        },
        ["Cloud Fabric"] = {
            items = {
                { id = 9644, quantity = 20 },
                { id = 14079, quantity = 15 },
                { id = 9665, quantity = 10 },
            },
            price = 3000
        },
        ["Demon Presence"] = {
            items = {
                { id = 9639, quantity = 25 },
                { id = 9638, quantity = 25 },
                { id = 10304, quantity = 20 },
            },
            price = 3000
        },
        ["Swiftness"] = {
            items = {
                { id = 17458, quantity = 15 },
                { id = 10302, quantity = 25 },
                { id = 14081, quantity = 20 },
            },
            price = 3000
        },
        ["Chop"] = {
            items = {
                { id = 10196, quantity = 20 },
                { id = 11447, quantity = 25 },
                { id = 21200, quantity = 20 },
            },
            price = 3000
        },
        ["Slash"] = {
            items = {
                { id = 9691, quantity = 25 },
                { id = 21202, quantity = 25 },
                { id = 9654, quantity = 5 },
            },
            price = 3000
        },
        ["Bash"] = {
            items = {
                { id = 9657, quantity = 20 },
                { id = 22189, quantity = 15 },
                { id = 10405, quantity = 10 },
            },
            price = 3000
        },
        ["Precision"] = {
            items = {
                { id = 11464, quantity = 25 },
                { id = 18994, quantity = 20 },
                { id = 10298, quantity = 10 },
            },
            price = 3000
        },
        ["Blockade"] = {
            items = {
                { id = 9641, quantity = 20 },
                { id = 11703, quantity = 25 },
                { id = 20199, quantity = 25 },
            },
            price = 3000
        },
        ["Epiphany"] = {
            items = {
                { id = 9635, quantity = 25 },
                { id = 11452, quantity = 15 },
                { id = 10309, quantity = 15 },
            },
            price = 3000
        },
        ["Featherweight"] = {
            items = {
                { id = 25694, quantity = 20 },
                { id = 25702, quantity = 10 },
                { id = 20205, quantity = 5 },
            },
            price = 3000
        },
        -- Continue adicionando itens conforme necessário...
    }) do
        local lowerCaseName = name:lower()
        if index <= 255 then
            modalWindow:addChoice(index, string.format("[ %s ]: %d gold coins.", lowerCaseName, item.price))
            shop[index] = lowerCaseName -- Armazena o nome do item para ajudar na ModalWindow
            index = index + 1
        end
        shop[lowerCaseName] = item
    end
end

-- Chama a função para adicionar os itens ao modal na inicialização do script
addItemsToShop()

-- Ação que será executada ao usar o item
local function onUseItem(player, item, fromPosition, target, toPosition, isHotkey)
    modalWindow:sendToPlayer(player)  -- Envia a ModalWindow ao jogador
    return true
end

-- Função para lidar com a compra de itens
local function buyItem(player, param)
    local item = shop[param:lower()] -- Certifique-se de que 'param' é o nome correto
    if not item then
        player:sendCancelMessage(string.format("Item with name %s not found!", param))
        return false
    end

    local money = player:getMoney()
    local bankBalance = player:getBankBalance()
    local totalMoney = money + bankBalance

    -- Verifica se o jogador tem dinheiro suficiente para comprar
    if totalMoney < item.price then
        player:sendCancelMessage(string.format("You don't have enough gold coins, You need %d gold coins.", item.price))
        return false
    end

    -- Criação dos itens usando os IDs e quantidades diferentes
    local totalItemsBought = 0
    for _, itemData in ipairs(item.items) do
        local buyedItem = Game.createItem(itemData.id, itemData.quantity) -- Cria o item com a quantidade especificada
        if not buyedItem or not buyedItem:getType():isMovable() then
            player:sendCancelMessage(string.format("Warning: The shop item with ID: %d is invalid.", itemData.id))
            return false
        end

        local addResult = player:addItemEx(buyedItem)
        if addResult ~= RETURNVALUE_NOERROR then
            player:sendCancelMessage("You do not have enough capacity in your inventory to hold these items.")
            buyedItem:remove()  -- Remove o item se não puder ser adicionado ao jogador
            return false
        end
        totalItemsBought = totalItemsBought + itemData.quantity  -- Conta o total de itens comprados
    end

    -- Remove o dinheiro do jogador
    player:removeMoney(item.price)

    player:getPosition():sendMagicEffect(CONST_ME_FIREWORK_YELLOW)
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("Your purchase was successful! You bought %d items of %s.\nYou now have %d gold coins and %d on the bank balance.", totalItemsBought, param, money - item.price, bankBalance))
    return true -- Retorne true após a compra ser bem-sucedida
end

-- Criar a ação
local itemID = 43277  -- ID do item que abrirá a loja
local shopAction = Action()

function shopAction.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    return onUseItem(player, item, fromPosition, target, toPosition, isHotkey)
end

shopAction:id(itemID)  -- Define o ID do item que abrirá a loja
shopAction:register()  -- Registra a ação

-- Evento para lidar com a seleção de opções da ModalWindow
local creatureEvent = CreatureEvent("shopModalWindow")

function creatureEvent.onModalWindow(player, modalWindowId, buttonId, choiceId)
    if modalWindowId == 99999 then
        if buttonId == 1 then  -- Botão "Buy"
            local param = shop[choiceId] -- Obtém o nome do item correspondente ao índice
            if not param then
                return true
            end
            buyItem(player, param)  -- Chama a função de compra
            return true
        end
    end
    return true
end

creatureEvent:register()

-- Evento para registrar a ModalWindow quando o jogador faz login
local creatureEventLogin = CreatureEvent("shopRegister")

function creatureEventLogin.onLogin(player)
    player:registerEvent("shopModalWindow")  -- Registra o evento da ModalWindow
    return true
end

creatureEventLogin:register()
