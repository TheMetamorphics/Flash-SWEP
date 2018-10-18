/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile ("cl_init.lua")
AddCSLuaFile ("shared.lua")

include ("shared.lua")

function SWEP:Initialize()
	self:SetHoldType(self.HoldType)
end

function SWEP:Deploy()
	return true
end

function SWEP:Holster()

	if !IsValid(self.Owner) then return true end

	self.Owner:SetRunSpeed(400)

	return true
end

function SWEP:PrimaryAttack()

end

function SWEP:SecondaryAttack()

	local Owner = self.Owner
	local playerTimeScale = Owner:GetInfoNum("tfs_timeScale", 0.2)
	local timeScale = game.GetTimeScale()

	if (timeScale != 1) then
		game.SetTimeScale(1)
	else
		game.SetTimeScale(playerTimeScale)
	end

	self.Weapon:SetNextSecondaryFire(CurTime() + game.GetTimeScale())

end
