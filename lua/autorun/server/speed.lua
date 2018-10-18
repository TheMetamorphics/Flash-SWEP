/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

hook.Add("Move", "tfs_speed", function(ply, mv)

	if !(IsValid(ply) and ply:Alive()) then return end

	local speedKeyDown = mv:KeyDown(IN_SPEED)
	local speedsterWeaponActive = ply:GetActiveWeapon():GetClass() == "tfs_speedster"
	local runningSpeed = ply:GetInfoNum("tfs_runningspeed", 3000)

	if !(speedsterWeaponActive) then return end

	if (mv:KeyPressed(IN_SPEED)) then
		ply:SetFOV(120, 0.1)
		ply:SetRunSpeed(runningSpeed)
	end

	if (mv:KeyReleased(IN_SPEED)) then
		ply:SetFOV(ply:GetInfoNum("fov_desired", 75), 0.1)
		ply:SetRunSpeed(400)
	end

end)
