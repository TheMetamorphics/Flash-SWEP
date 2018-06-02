/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

hook.Add("Move", "tfs_speed", function(ply, mv)
	if (ply:GetActiveWeapon():GetClass() == "tfs_speedster") and mv:KeyDown(IN_SPEED) then
		ply:SetRunSpeed(ply:GetInfoNum("tfs_runningspeed", 3000))
	elseif ply:GetActiveWeapon():GetClass() == "tfs_speedster" then
		ply:SetRunSpeed(400)
	end
end)