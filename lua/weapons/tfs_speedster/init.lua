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

function SWEP:PrimaryAttack()

end

function SWEP:SecondaryAttack()

end