-------------------------------------------------------
-- Project Porcupine Copyright(C) 2016 Team Porcupine
-- This program comes with ABSOLUTELY NO WARRANTY; This is free software,
-- and you are welcome to redistribute it under certain conditions; See
-- file LICENSE, which is part of this source code package, for details.
-------------------------------------------------------

-------------------------------- Tile Actions --------------------------------
function MovementCost_Standard ( tile )
	if (tile.Furniture == nil) then
		return tile.Type.BaseMovementCost
	end

	return tile.Type.BaseMovementCost * tile.Furniture.movementCost
end

--TODO: This needs to be cleaned up
function CanBuildHere_Standard ( tile )
	return true
end

function CanBuildHere_Ladder ( tile )
	return tile.room.IsOutsideRoom()
end

ModUtils.ULog("Tile.lua loaded")
return "LUA Tile Script Parsed!"
