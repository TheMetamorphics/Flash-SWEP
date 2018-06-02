/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile()

CreateClientConVar("tfs_runningspeed", "3000", true, true, "Player's speedster running speed.")

hook.Add("PopulateToolMenu", "tfs_ToolMenus", function()
	spawnmenu.AddToolMenuOption("Utilities", "The Flash SWEP", "tfs_ToolMenuConfig", "Configuration", "", "", function(panel)
		panel:NumSlider("Running Speed", "tfs_runningspeed", 0, 10000)
	end)
end)