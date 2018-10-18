/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

include ("shared.lua")

local unitConversions = {
	[""] = 1,
	["u/s"] = 1,
	["kph"] = 10.9361601650366,
	["mph"] = 17.6,
}

local function returnUnits(units)

	if unitConversions[units] == nil then return 1 end

	return unitConversions[units]

end

function SWEP:DrawHUD()

	local Owner = self.Owner

	local posX = 8
	local posY = 16

	local unit = Owner:GetInfo("tfs_hudUnits")
	local velocity = math.Round(Owner:GetVelocity():Length() / returnUnits(unit), 1)
	local message = "Speed: "..velocity.." "..unit

	draw.SimpleText(message, "Trebuchet24", posX, posY, Color(255,255,255,255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	
end
