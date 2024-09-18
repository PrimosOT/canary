CUSTOM_MW_BUY_ITEMID = 9220

local wallsCustom = {
	[1]	= {
		cor = "white",
		itemId = 49284
	},
	[2]	= {
		cor = "orange",
		itemId = 49283
	},
	[3]	= {
		cor = "purple",
		itemId = 49282
	},
	[4]	= {
		cor = "black",
		itemId = 49281
	},
	[5]	= {
		cor = "light green",
		itemId = 49280
	},
	[6]	= {
		cor = "green with blue",
		itemId = 49279
	},
	[7]	= {
		cor = "red with black",
		itemId = 49292
	}	
}

function playerHaveCustomWall(player, wallKey)
	local playerKV = player:kv()
	local kvString = "custommagicwall."..wallKey..".purchased"
		if playerKV:get(kvString) == 1 then
			return true
		end
	
	return false
end

function GetNotOwnedWalls(player)
	local playerKV = player:kv()
	local notOwnedWalls = {}
	for index, value in pairs(wallsCustom) do
		local kvString = "custommagicwall."..index..".purchased"
		if playerKV:get(kvString) ~= 1 then
			table.insert(notOwnedWalls,value)
		end
	end
	return notOwnedWalls
end

function GetCustomMagicWallByStorage(storage)
	local mw = wallsCustom[storage]
	if mw then
		return mw
	end
end

function GetWallsCustom()
	return wallsCustom
end
