if not Karin then
	Karin = {};
end
Karin.firstLetterUpper = function(v28, v29)
	local v30 = v29:split(" ");
	for v168, v169 in ipairs(v30) do
		v30[v168] = v169:gsub("^%l", string.upper);
	end
	return table.concat(v30, " ");
end;
Karin.setExhaustion = function(v31, v32, v33, v34)
	v32:setStorageValue(v33, v34 + os.time());
end;
Karin.getExhaustion = function(v35, v36, v37)
	local v38 = v36:getStorageValue(v37);
	if (not v38 or (v38 <= os.time())) then
		return 0 - 0;
	end
	return v38 - os.time();
end;
Karin.hasExhaustion = function(v39, v40, v41)
	return ((v39:getExhaustion(v40, v41) > (0 - 0)) and true) or false;
end;
Karin.handleExhaustion = function(v42, v43, v44, v45)
	if v42:hasExhaustion(v43, v44) then
		return true;
	else
		v42:setExhaustion(v43, 193035 - 93034, v45);
		return false;
	end
end;
Karin.sendNearSound = function(v46, v47, v48)
	v47:sendSingleSoundEffect(v48);
end;
Karin.isPlayerInPosRangeXY = function(v49, v50, v51, v52, v53, v54)
	for v171, v172 in pairs(Game.getSpectators(v51, v54, true, v52, v52, v53, v53)) do
		if (v172:getId() == v50:getId()) then
			return true;
		end
	end
	return false;
end;
Karin.getMonstersPosRangeXY = function(v55, v56, v57, v58, v59)
	local v60 = {};
	for v173, v174 in pairs(Game.getSpectators(v56, false, false, v57, v57, v58, v58)) do
		if (v174:isMonster() and ((not v59 and not v174:getMaster()) or v59)) then
			table.insert(v60, v174);
		end
	end
	return v60;
end;
Karin.getIdMonstersPosRangeXY = function(v61, v62, v63, v64, v65)
	local v66 = {};
	for v175, v176 in pairs(Game.getSpectators(v62, false, false, v63, v63, v64, v64)) do
		if (v176:isMonster() and ((not v65 and not v176:getMaster()) or v65)) then
			v66[v176:getId()] = v176;
		end
	end
	return v66;
end;
Karin.getPlayersPosRangeXY = function(v67, v68, v69, v70, v71)
	local v72 = {};
	for v177, v178 in pairs(Game.getSpectators(v68, v71, true, v69, v69, v70, v70)) do
		table.insert(v72, v178);
	end
	return v72;
end;
Karin.minimalTimers = function(v73, v74)
	local v75 = math.floor(v74 / (222557 - 136157));
	v74 = v74 - (v75 * (87019 - (555 + 64)));
	local v76 = math.floor(v74 / (4531 - (857 + 74)));
	v74 = v74 - (v76 * (4168 - (367 + 201)));
	local v77 = math.floor(v74 / (987 - (214 + 713)));
	v74 = v74 - (v77 * (16 + 44));
	if (v75 > (0 + 0)) then
		return string.format("%d days, %d hours", v75, v76);
	elseif (v76 > (877 - (282 + 595))) then
		return string.format("%d hours, %d minutes", v76, v77);
	elseif (v77 > (1637 - (1523 + 114))) then
		return string.format("%d minutes", v77);
	elseif (v74 > (1 + 0)) then
		return string.format("%d seconds", v74);
	elseif (v74 > (0 - 0)) then
		return string.format("%d second", v74);
	else
		return "0 seconds";
	end
end;
Karin.completeTimers = function(v78, v79)
	local v80 = math.floor(v79 / (87465 - (68 + 997)));
	v79 = v79 - (v80 * (87670 - (226 + 1044)));
	local v81 = math.floor(v79 / (15675 - 12075));
	v79 = v79 - (v81 * (3717 - (32 + 85)));
	local v82 = math.floor(v79 / (59 + 1));
	v79 = v79 - (v82 * (14 + 46));
	if (v80 > (957 - (892 + 65))) then
		return string.format("%d days, %d hours, %d minutes and %d seconds", v80, v81, v82, v79);
	elseif (v81 > (0 - 0)) then
		return string.format("%d hours, %d minutes and %d seconds", v81, v82, v79);
	elseif (v82 > (0 - 0)) then
		return string.format("%d minutes and %d seconds", v82, v79);
	elseif (v79 > (0 - 0)) then
		return string.format("%d seconds", v79);
	end
end;
Karin.isBadTileToDamage = function(v83, v84)
	return (v84 == nil) or (v84:getGround() == nil) or v84:hasProperty(TILESTATE_NONE) or (isItem(v84:getThing()) and not isMoveable(v84:getThing())) or v84:hasFlag(TILESTATE_PROTECTIONZONE);
end;
Karin.isBadTileWithoutPZ = function(v85, v86)
	return (v86 == nil) or (v86:getGround() == nil) or v86:hasProperty(TILESTATE_NONE) or (isItem(v86:getThing()) and not isMoveable(v86:getThing())) or v86:getTopCreature();
end;
Karin.isBadTile = function(v87, v88)
	return (v88 == nil) or (v88:getGround() == nil) or v88:hasProperty(TILESTATE_NONE) or (isItem(v88:getThing()) and not isMoveable(v88:getThing())) or v88:getTopCreature() or v88:hasFlag(TILESTATE_PROTECTIONZONE);
end;
Karin.getFreePosition = function(v89, v90, v91, v92)
	local v93 = 350 - (87 + 263);
	local v94 = v91;
	if (type(v91) == "table") then
		v94 = v91[182 - (67 + 113)];
		v91 = v91[1 + 0];
	end
	while true do
		local v179 = v90['x'] + math.random(-v91, v91);
		local v180 = v90['y'] + math.random(-v94, v94);
		local v181 = Position(v179, v180, v90.z);
		local v182 = v181:getTile();
		if ((not v92 and not Karin:isBadTile(v182)) or (v92 and not Karin:isBadTileWithoutPZ(v182))) then
			return v181;
		end
		v93 = v93 + (2 - 1);
		if (v93 >= (15 + 5)) then
			break;
		end
	end
	return v90;
end;
Karin.getFreePositionToDamage = function(v95, v96, v97)
	local v98 = 0 - 0;
	while true do
		local v183 = v96['x'] + math.random(-v97, v97);
		local v184 = v96['y'] + math.random(-v97, v97);
		local v185 = Position(v183, v184, v96.z);
		local v186 = v185:getTile();
		if not Karin:isBadTileToDamage(v186) then
			return v185;
		end
		v98 = v98 + (953 - (802 + 150));
		if (v98 >= (26 - 16)) then
			break;
		end
	end
	return v96;
end;
Karin.clearBossRoom = function(v99, v100, v101, v102)
	local v103 = Game.getSpectators(v99, false, false, v100, v100, v101, v101);
	for v187 = 1 - 0, #v103 do
		spectator = v103[v187];
		if spectator:isPlayer() then
			spectator:teleportTo(v102);
			v102:sendMagicEffect(CONST_ME_TELEPORT);
		end
		if spectator:isMonster() then
			spectator:remove();
		end
	end
end;
Karin.isPositionInSameArea = function(v104, v105, v106, v107, v108)
	local v109 = math.abs(v105['x'] - v106['x']);
	local v110 = math.abs(v105['y'] - v106['y']);
	return (v109 <= v107) and (v110 <= v108);
end;
Karin.rainDamageByPosRangeXYGroundFallEffectMinMaxDMGCombatType = function(v111, v112, v113, v114, v115, v116, v117, v118, v119)
	local v120 = math.floor((((v113 * (2 + 0)) + (998 - (915 + 82))) * ((v114 * (5 - 3)) + 1 + 0)) / (2 - 0));
	local function v121()
		local v189 = Karin:getFreePositionToDamage(v112, math.max(v113, v114));
		if not v189 then
			return;
		end
		local v190 = Position(v189['x'] - v113, v189['y'] - v114, v189.z);
		local v191 = Tile(v189);
		if v191 then
			if v116 then
				v190:sendDistanceEffect(v189, v116);
			end
			v189:sendMagicEffect(v115);
			local v213 = v191:getTopCreature();
			if v213 then
				if (v213:isPlayer() or v213:getMaster()) then
					doTargetCombatHealth(1187 - (1069 + 118), v213, v119, -v117, -v118, CONST_ME_NONE);
				end
			end
		end
	end
	for v192 = 2 - 1, v120 do
		addEvent(v121, v192 * (328 - 178));
	end
	local v122 = function(v193, v194)
		v111:sendNearSound(v193, v194);
	end;
	local v123;
	if (v119 == COMBAT_DEATHDAMAGE) then
		v123 = SOUND_EFFECT_TYPE_SPELL_SUDDENDEATH_RUNE;
	elseif (v119 == COMBAT_ICEDAMAGE) then
		v123 = SOUND_EFFECT_TYPE_SPELL_ULTIMATE_ICE_STRIKE;
	elseif (v116 == CONST_ANI_POWERBOLT) then
		v123 = SOUND_EFFECT_TYPE_DIST_ATK_CROSSBOW_SHOT;
	end
	if v123 then
		v122(v112, v123);
		for v214 = 1 + 0, 8 - 3 do
			addEvent(function()
				v122(v112, v123);
			end, v214 * (893 + 7));
		end
	end
end;
Karin.getPositionsInRange = function(v124, v125, v126, v127)
	local v128 = {};
	local v129 = v126 * v126;
	local v130 = v127 * v127;
	local v131 = v129 + v130;
	for v195 = -v126, v126 do
		for v204 = -v127, v127 do
			local v205 = (v195 * v195) + (v204 * v204);
			if (v205 <= v131) then
				local v228 = v125['x'] + v195;
				local v229 = v125['y'] + v204;
				table.insert(v128, {x=v228,y=v229,z=v125['z']});
			end
		end
	end
	return v128;
end;
Karin.getTilesFromPosition = function(v132, v133, v134, v135)
	local v136 = {};
	for v196 = v133['x'], v133['x'] + v134 do
		for v206 = v133['y'], v133['y'] + v135 do
			table.insert(v136, {x=v196,y=v206,z=v133['z']});
		end
	end
	return v136;
end;
Karin.getAllPositionsByPositionAndRangeXYUPRIGHT = function(v137, v138, v139, v140)
	local v141 = {};
	for v197 = v138['x'], v138['x'] + v139 do
		for v207 = v138['y'], v138['y'] + v140 do
			for v215 = v138['z'] - v139, v138['z'] + v139 do
				local v216 = v197 - v138['x'];
				local v217 = v207 - v138['y'];
				local v218 = v215 - v138['z'];
				local v219 = math.sqrt((v216 * v216) + (v217 * v217) + (v218 * v218));
				if (v219 <= math.sqrt((v139 * v139) + (v140 * v140))) then
					table.insert(v141, {x=v197,y=v207,z=v215});
				end
			end
		end
	end
	return v141;
end;
Karin.getAllPositionsByPositionAndRangeXYDOWNRIGHT = function(v142, v143, v144, v145)
	local v146 = {};
	for v198 = v143['x'], v143['x'] + v144 do
		for v208 = v143['y'] + v145, v143['y'], -(792 - (368 + 423)) do
			for v220 = v143['z'] - v144, v143['z'] + v144 do
				local v221 = v198 - v143['x'];
				local v222 = v208 - v143['y'];
				local v223 = v220 - v143['z'];
				local v224 = math.sqrt((v221 * v221) + (v222 * v222) + (v223 * v223));
				if (v224 <= math.sqrt((v144 * v144) + (v145 * v145))) then
					table.insert(v146, {x=v198,y=v208,z=v220});
				end
			end
		end
	end
	return v146;
end;
Karin.getAllPositionsByPositionAndRange = function(v147, v148, v149)
	local v150 = {};
	local v151 = v149;
	local v152 = v149;
	local v153 = v149;
	for v199 = v148['x'] - v151, v148['x'] + v151 do
		for v209 = v148['y'] - v152, v148['y'] + v152 do
			table.insert(v150, Position(v199, v209, v148.z));
		end
	end
	return v150;
end;
Karin.debugTable = function(v154, v155)
	print("-------");
	for v200, v201 in pairs(v155) do
		print(v200);
		print(v201);
	end
	print("----X---");
end;
Karin.searchContainer = function(v156, v157, v158, v159, v160)
	local v161 = {};
	local v162 = {};
	local v163 = {};
	local v164 = 0 - 0;
	if (v158['uid'] > (18 - (10 + 8))) then
		if isContainer(v158.uid) then
			table.insert(v161, v158.uid);
		elseif (not id or (id == v158['itemid'])) then
			table.insert(v162, v158);
		end
	end
	while #v161 > (0 - 0) do
		for v210 = getContainerSize(v161[443 - (416 + 26)]) - (3 - 2), 0 + 0, -(1 - 0) do
			local v211 = getContainerItem(v161[439 - (145 + 293)], v210);
			if isContainer(v211.uid) then
				if v160 then
					local v230 = Item(v211.uid);
					if v230 then
						if (v230:getCustomAttribute("customId") and (v230:getCustomAttribute("customId") == v160)) then
							table.insert(v161, v211.uid);
						end
					end
				else
					table.insert(v161, v211.uid);
				end
			elseif (not id or (id == v211['itemid'])) then
				if v160 then
					local v231 = Item(v211.uid);
					if v231 then
						if (v231:getCustomAttribute("customId") and (v231:getCustomAttribute("customId") == v160)) then
							table.insert(v163, v211.itemid);
						end
					end
				else
					table.insert(v163, v211.itemid);
				end
			end
		end
		table.remove(v161, 431 - (44 + 386));
	end
	if not v159 then
		return v163;
	else
		for v225 = 1487 - (998 + 488), #v163 do
			if (v163[v225] == v159) then
				v164 = v164 + 1 + 0;
			end
		end
		return v164;
	end
end;
Position.sendAnimatedText = function(v165, v166)
	local v167 = Game.getSpectators(v165, false, true, 8 + 1, 781 - (201 + 571), 1146 - (116 + 1022), 33 - 25);
	if (#v167 > (0 + 0)) then
		for v226 = 3 - 2, #v167 do
			local v227 = v167[v226];
			v227:say(v166, TALKTYPE_MONSTER_SAY, false, v227, v165);
		end
	end
end;
