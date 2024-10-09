local effects = {

    {position = Position(32265, 34010, 7), text = 'Bem Vindo', effect = CONST_ME_STUN},--templo
	--{position = Position(32365, 32239, 7), text = 'HUNTES!', effect = 71}, -- editado novo
	{position = Position(32260, 34000, 7), text = 'HUNTES!', effect = 57}, -- editado novo
	--{position = Position(32357, 32218, 7), text = 'HUNTES VIP!', effect = 71},	--hub - editado novo
	--{position = Position(32373, 32236, 7), text = 'HUNTES VIP!', effect = 71},	--hub - editado novo
	--{position = Position(32540, 30939, 7), text = 'HUNTES VIP!', effect = 71},	--hub - editado novo
	{position = Position(32291, 34215, 7), text = 'GNOMPRONA HUNT!', effect = 71},	--hub - editado novo
	{position = Position(32292, 34215, 7), text = 'SOULWAR HUNT!', effect = 71},	--hub - editado novo
	--{position = Position(32537, 30943, 7), text = 'TRAINERS', effect = 62}, -- editado novo
	--{position = Position(32365, 32236, 7), text = 'TRAINERS', effect = 62}, -- editado novo
	--{position = Position(32341, 32220, 7), text = 'DOMINANTE', effect = 62}, -- editado novo
	--{position = Position(32342, 32220, 7), text = 'DOMINANTE', effect = 62}, -- editado novo
	{position = Position(32269, 34000, 7), text = 'BOSSES!', effect = 57}, -- editado novo
	--{position = Position(32539, 30940, 7), text = 'BOSSES!', effect = 74}, -- editado novo
	{position = Position(32258, 34015, 7), text = 'Task Roleta!', effect = 38}, -- editado novo
	{position = Position(32282, 34006, 7), text = 'Roleta!', effect = 40}, -- editado novo
	{position = Position(32275, 33999, 7), text = 'Remove Bags!', effect = 38}, -- editado novo
	--{position = Position(32544, 30936, 7), text = 'Remove Bags!', effect = 38}, -- editado novo
	{position = Position(32267, 34000, 7), text = 'FORGE!', effect = 31}, -- editado novo
	--{position = Position(32356, 32225, 7), text = 'FORGE!', effect = 54}, -- editado novo
	--{position = Position(32373, 32239, 7), text = 'Boss!', effect = 40}, -- editado novo
	--{position = Position(32356, 32226, 7), text = 'Boss Room!', effect = 40}, -- editado novo
    --{position = Position(32538, 30932, 7), text = 'TEMPLO', effect = CONST_ME_FIREAREA},	--miner area
	{position = Position(32272, 33999, 7), text = 'TASK SYSTEM', effect = CONST_ME_FIREAREA},
	{position = Position(32238, 34209, 8), text = 'EASY', effect = 57}, -- hunts
	{position = Position(32242, 34206, 8), text = 'MEDIUM', effect = 57}, -- hunts
	{position = Position(32246, 34209, 8), text = 'HARD', effect = 57}, -- hunts
	{position = Position(32242, 34211, 8), text = 'SAIDA', effect = 57}, -- saida hunts
	{position = Position(32273, 33999, 7), text = 'TASK SYSTEM', effect = CONST_ME_FIREAREA},
	{position = Position(32260, 34006, 7), text = 'PACK IMBUI', effect = CONST_ME_CRITICAL_DAMAGE},
	--{position = Position(32542, 30936, 7), text = 'TASK SYSTEM', effect = CONST_ME_FIREAREA},
	-- {position = Position(32791, 32329, 10), text = 'Use " !libropoi " para conseguir el libro', effect = CONST_ME_FIREAREA},

}



local animatedText = GlobalEvent("AnimatedText") 

function animatedText.onThink(interval)

    for i = 1, #effects do

        local settings = effects[i]

        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)

        if #spectators > 0 then

            if settings.text then

                for i = 1, #spectators do

                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)

                end

            end

            if settings.effect then

                settings.position:sendMagicEffect(settings.effect)

            end

        end

    end

   return true

end



animatedText:interval(5000)

animatedText:register()