taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 2, -- rate bonus reward
	taskBoardPositions = {
		{x = 32272, y = 33999, z = 7},
		{x = 32273, y = 33999, z = 7},
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = false, -- do one task at a time
	uniqueTaskStorage = 65002
}

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Quadro De Missões",
	missionError = "Missão esta em andamento ou ela já foi concluída.",
	uniqueMissionError = "Você só pode fazer uma missão por vez.",
	missionErrorTwo = "Você concluiu a missão",
	missionErrorTwoo = "\nAqui estão suas recompensas:",
	choiceText = "- Experiência: ",
	messageAcceptedText = "Você aceitou essa missão!",
	messageDetailsText = "Detalhes da missão:",
	choiceMonsterName = "Missão: ",
	choiceMonsterRace = "Raças: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repetição: Todos os dias",
	choiceRepeatable = "Repetição: Sempre",
	choiceOnce = "Repetição: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Você já concluiu essa missão.",
	choiceCancelTask = "Você cancelou essa missão",
	choiceCancelTaskError = "Você não pode cancelar essa missão, porque ela já foi concluída ou não foi iniciada.",
	choiceBoardText = "Escolha uma missão e use os botões abaixo:",
	choiceRewardOnHold = "Resgatar Prêmio",
	choiceDailyConclued = "Diária Concluída",
	choiceConclued = "Concluída",
	messageTaskBoardError = "O quadro de missões esta muito longe ou esse não é o quadro de missões correto.",
	messageCompleteTask = "Você terminou essa missão! \nRetorne para o quadro de missões e pegue sua recompensa.",
}

taskConfiguration = {
	{name = "Amazon", color = 40, total = 500, type = "repeatable", storage = 190000, storagecount = 190001, 
		rewards = {
			{3043, 7},
			{"exp", 100000},
		},
		races = {
			"Amazon",
			"Valkyrie",
		},
	},

	{name = "Stonerefiner", color = 40, total = 500, type = "once", storage = 190002, storagecount = 190003, 
		rewards = {
			{3043, 1},
			{"exp", 100000},
		},
		races = {
			"Stonerefiner",
		},
	},

	{name = "Dragon", color = 40, total = 1000, type = "once", storage = 190004, storagecount = 190005, 
		rewards = {
			{10326, 1},
			{"exp", 300000},
		},
		races = {
			"Dragon",
		},
	},

	{name = "Dragon Lord", color = 40, total = 6000, type = "once", storage = 190006, storagecount = 190007, 
		rewards = {
			{5919, 1},
		},
		races = {
			"Dragon Lord",
		},
	},

	{name = "Frost Dragon", color = 40, total = 2500, type = "once", storage = 190008, storagecount = 190009, 
		rewards = {
			{7290, 5},
			{"exp", 36737},
		},
		races = {
			"Frost Dragon",
		},
	},

	{name = "Furys", color = 40, total = 1000, type = "daily", storage = 190010, storagecount = 190011, 
		rewards = {
			{19391, 1},
			{"exp", 36736},
		},
		races = {
			"Fury",
		},
	},

	{name = "Juggernauts", color = 40, total = 5000, type = "once", storage = 190012, storagecount = 190013, 
		rewards = {
			{3422, 1},
			{"exp", 36738},
		},
		races = {
			"Juggernaut",
		},
	},

	{name = "Wyrm", color = 40, total = 500, type = "once", storage = 190014, storagecount = 190015, 
		rewards = {
			{"exp", 350000},
			{25730, 1},
		},
		races = {
			"Wyrm",
			"Elder Wyrm",
		},
	},

	{name = "Hydra", color = 40, total = 1000, type = "once", storage = 190016, storagecount = 190017, 
		rewards = {
			{12045, 1},
		},
		races = {
			"Hydra",
		},
	},

	{name = "Medusa", color = 40, total = 2500, type = "once", storage = 190018, storagecount = 190019, 
		rewards = {
			{3043, 100},
		},
		races = {
			"Medusa",
		},
	},

	{name = "Grim Reaper", color = 40, total = 5000, type = "once", storage = 190020, storagecount = 190021, 
		rewards = {
			{"exp", 7000000},
		},
		races = {
			"Grim Reaper",
		},
	},

	{name = "Glooth Bandit", color = 40, total = 1000, type = "daily", storage = 190022, storagecount = 190023, 
		rewards = {
			{22721, 10},
			{22516, 10},
		},
		races = {
			"Glooth Bandit",
			"Glooth Brigand",
		},
	},

	{name = "Werelion", color = 40, total = 1000, type = "daily", storage = 190024, storagecount = 190025, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Werelion",
			"Werelioness",
		},
	},

	{name = "Burster Spectre", color = 40, total = 1000, type = "daily", storage = 190026, storagecount = 190027, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Burster Spectre",
			"Gazer Spectre",
			"Ripper Spectre",
		},
	},

	{name = "Lumbering Carnivor", color = 40, total = 1000, type = "daily", storage = 190028, storagecount = 190029, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Lumbering Carnivor",
			"Spiky Carnivor",
			"Menacing Carnivor",
		},
	},

	{name = "Priestess Of The Wild Sun", color = 40, total = 1000, type = "daily", storage = 190030, storagecount = 190031, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Priestess Of The Wild Sun",
			"Black Sphinx Acolyte",
			"Burning Gladiator",
		},
	},

	{name = "Girtablilu Warrior", color = 40, total = 1000, type = "daily", storage = 190032, storagecount = 190033, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Girtablilu Warrior",
			"Venerable Girtablilu",
		},
	},

	{name = "Falcon Paladin", color = 40, total = 1000, type = "daily", storage = 190034, storagecount = 190035, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Falcon Paladin",
			"Falcon Knight",
		},
	},

	{name = "Cobra Assassin", color = 40, total = 1000, type = "daily", storage = 190036, storagecount = 190037, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Cobra Assassin",
			"Cobra Vizier",
			"Cobra Scout",
		},
	},

	{name = "Draken Abomination", color = 40, total = 1000, type = "daily", storage = 190038, storagecount = 190039, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Draken Abomination",
			"Draken Elite",
			"Draken Spellweaver",
			"Draken Warmaster",
			"Lizard Legionnaire",
			"Lizard High Guard",
			"Lizard Dragon Priest",
			"Lizard Chosen",
			"Lizard Noble",
			"Lizard Magistratus",
		},
	},

	{name = "Dawnfire Asura", color = 40, total = 1000, type = "daily", storage = 190040, storagecount = 190041, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Dawnfire Asura",
			"Midnight Asura",
			"Frost Flower Asura",
		},
	},

	{name = "True Dawnfire Asura", color = 40, total = 1000, type = "daily", storage = 190042, storagecount = 190043, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"True Dawnfire Asura",
			"True Midnight Asura",
			"True Frost Flower Asura",
		},
	},

	{name = "Juvenile Bashmu", color = 40, total = 1000, type = "daily", storage = 190044, storagecount = 190045, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Juvenile Bashmu",
			"Bashmu",
		},
	},

	{name = "Chasm Spawn", color = 40, total = 1000, type = "daily", storage = 190046, storagecount = 190047, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Chasm Spawn",
			"Drillworm",
			"Cave Devourer",
			"Diremaw",
			"Deepworm",
			"Tunnel Tyrant",
		},
	},

	{name = "Afflicted Strider", color = 40, total = 1000, type = "daily", storage = 190048, storagecount = 190049, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Afflicted Strider",
			"Blemished Spawn",
			"Eyeless Devourer",
			"Lavafungus",
			"Lavaworm",
			"Streaked Devourer",
			"Cave Chimera",
			"Tremendous Tyrant",
			"Varnished Diremaw",
		},
	},

	{name = "Deepling Scout", color = 40, total = 1000, type = "daily", storage = 190050, storagecount = 190051, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Deepling Scout",
			"Deepling Warrior",
			"Deepling Guard",
			"Deathling Scout",
			"Deathling Spellsinger",
		},
	},

	{name = "Vexclaw", color = 40, total = 1000, type = "daily", storage = 190052, storagecount = 190053, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Vexclaw",
			"Grimeleech",
			"Hellflayer",
		},
	},

	{name = "Flimsy Lost Soul", color = 40, total = 1000, type = "daily", storage = 190054, storagecount = 190055, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Flimsy Lost Soul",
			"Mean Lost Soul",
			"Freakish Lost Soul",
			"Evil Prospector",
		},
	},

	{name = "Undead Elite Gladiator", color = 40, total = 1000, type = "daily", storage = 190056, storagecount = 190057, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Undead Elite Gladiator",
			"Skeleton Elite Warrior",
		},
	},

	{name = "Guzzlemaw", color = 40, total = 1000, type = "daily", storage = 190058, storagecount = 190059, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Guzzlemaw",
			"Frazzlemaw",
			"Silencer",
			"Choking Fear",
			"Retching Horror",
		},
	},

	{name = "Crazed Summer Rearguard", color = 40, total = 1000, type = "daily", storage = 190060, storagecount = 190061, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Crazed Summer Rearguard",
			"Crazed Summer Vanguard",
			"Crazed Winter Vanguard",
			"Crazed Winter Rearguard",
		},
	},

	{name = "Cursed Book", color = 40, total = 1000, type = "daily", storage = 190062, storagecount = 190063, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Cursed Book",
			"Ink Blob",
		},
	},

	{name = "Icecold Book", color = 40, total = 1000, type = "daily", storage = 190064, storagecount = 190065, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Icecold Book",
			"Squid Warden",
			"Animated Feather",
		},
	},

	{name = "Energetic Book", color = 40, total = 1000, type = "daily", storage = 190066, storagecount = 190067, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Energetic Book",
			"Brain Squid",
			"Energuardian Of Tales",
		},
	},

	{name = "Burning Book", color = 40, total = 1000, type = "daily", storage = 190068, storagecount = 190069, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Burning Book",
			"Rage Squid",
			"Guardian Of Tales",
			"Ink Blob",
		},
	},

	{name = "Soul War", color = 40, total = 1000, type = "daily", storage = 190070, storagecount = 190071, 
		rewards = {
			-- Adicione a recompensa desejada aqui
		},
		races = {
			"Infernal Phantom",
			"Infernal Demon",
			"Brachiodemon",
			"Courage Leech",
			"Vibrant Phantom",
			"Cloak Of Terror",
		},
	},
}


squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
local player = self
	if not player then
		return false
	end
local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
		if dataList:lower() == name:lower() then
			return data
		end
		end
	end
	return false
end

function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end