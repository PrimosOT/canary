local AutoBroadCast = GlobalEvent("text")
function AutoBroadCast.onThink(interval, lastExecution)
	local messages = {	

	"[DAILY REWARD]: Utilizando o comando !reward voce recebe sua recompensa diaria.",
	"[EMOTE SYSTEM]: Digite !emote on/off , para deixar Spells visiveis no Chat!",
	"[VIP SYSTEM]: Seja VIP e tenha varios beneficios e estar ajudando o Servidor!",
	"[INVASAO]: Todos os dias as 22:10 invasao do Crazy Boss.",
	"[TOKEN]: A cada 1h online voce receber Crazy token, utilizado para trocar por itens no NPC Crazy Online.",
	"[DOLLS]: Utilize o comando !addondoll e !mountdoll.",
	--"[TASK]: Para selecionar uma task utilize o comando !task.",
	"[COMMANDS]: Utilize o comando !commands para ficar por dentro de todos os comandos.",
	--"[COMMANDS]: Faca parte do nosso Discord https://discord.gg/wbNS6Zeceg",

}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_GAME_HIGHLIGHT) 
    return true
end
AutoBroadCast:interval(600000)
AutoBroadCast:register()

