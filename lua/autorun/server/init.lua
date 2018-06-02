/*
	Created by: Metamorphics
	STEAM_1:1:52851671
*/

hook.Add("Initialize", "tfs_MaxVelocity", function()
	RunConsoleCommand("sv_maxvelocity", "10000")
end)