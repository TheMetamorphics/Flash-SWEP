/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

AddCSLuaFile()

CreateClientConVar("tfs_hudUnits", "u/s", true, true, "The units used in the HUD.")

CreateClientConVar("tfs_runningSpeed", "3000", true, true, "Player's speedster running speed.")
CreateClientConVar("tfs_timeScale", "0.2", true, true, "Amount to set as the time scale.")

CreateClientConVar("tfs_spriteTrails", "1", true, true, "Should sprite trails be enabled.")
CreateClientConVar("tfs_spriteTrailMaterial", "trails/laser", true, true, "Material used by sprite trails.")
CreateClientConVar("tfs_spriteTrailRed", "255", true, true, "Amount of red used by sprite trails.")
CreateClientConVar("tfs_spriteTrailGreen", "255", true, true, "Amount of green used by sprite trails.")
CreateClientConVar("tfs_spriteTrailBlue", "0", true, true, "Amount of blue by sprite trails.")
CreateClientConVar("tfs_spriteTrailAdditive", "0", true, true, "Should the color of the trail be additive.")
CreateClientConVar("tfs_spriteTrailStartWidth", "10", true, true, "The size the trail should start with.")
CreateClientConVar("tfs_spriteTrailEndWidth", "0", true, true, "The size the trail should end with.")
CreateClientConVar("tfs_spriteTrailLifeTime", "0", true, true, "How long the trail will last in seconds.")

CreateClientConVar("tfs_particleTrails", "0", true, true, "Should particle trails be enabled.")

CreateClientConVar("tfs_teslaTrails", "0", true, true, "Should tesla trails be enabled.")

hook.Add("PopulateToolMenu", "tfs_ToolMenus", function()

	spawnmenu.AddToolMenuOption("Utilities", "The Flash SWEP", "tfs_hudConfig", "HUD", "", "", function(panel)

		local comboBox = panel:ComboBox("Speedometer Units", "tfs_hudUnits")
		comboBox:AddChoice("u/s")
		comboBox:AddChoice("kph")
		comboBox:AddChoice("mph")

	end)

	spawnmenu.AddToolMenuOption("Utilities", "The Flash SWEP", "tfs_abilitiesConfig", "Abilities", "", "", function(panel)

		panel:NumSlider("Running Speed", "tfs_runningSpeed", 0, 10000)
		panel:NumSlider("Time Scale", "tfs_timeScale", 0.01, 1)

	end)

	spawnmenu.AddToolMenuOption("Utilities", "The Flash SWEP", "tfs_trailsConfig", "Trails", "", "", function(panel)

		panel:CheckBox("Enable Sprite Trails", "tfs_spriteTrails")
		panel:CheckBox("Enable Particle Trails", "tfs_particleTrails")
		panel:CheckBox("Enable Tesla Trails", "tfs_teslaTrails")

	end)

end)
