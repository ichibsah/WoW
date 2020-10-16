
LFG_Text_Values = nil
LFG_Classes = nil
LFM_Text_Values = nil
LFG_Notifications = nil
LFG_NotificationPattern = {
	{
		["name"] = "Dungeon: Ragefire Chasm",
		["state"] = false,
	}, -- [1]
	{
		["name"] = "Dungeon: Wailing Caverns",
		["state"] = false,
	}, -- [2]
	{
		["name"] = "Dungeon: The Deadmines",
		["state"] = false,
	}, -- [3]
	{
		["name"] = "Dungeon: Shadowfang Keep",
		["state"] = false,
	}, -- [4]
	{
		["name"] = "Dungeon: Blackfathom Deeps",
		["state"] = false,
	}, -- [5]
	{
		["name"] = "Dungeon: The Stockade",
		["state"] = false,
	}, -- [6]
	{
		["name"] = "Dungeon: Gnomeregan",
		["state"] = false,
	}, -- [7]
	{
		["name"] = "Dungeon: Razorfen Kraul",
		["state"] = false,
	}, -- [8]
	{
		["name"] = "Dungeon: Scarlet Monastery (Graveyard)",
		["state"] = false,
	}, -- [9]
	{
		["name"] = "Dungeon: Scarlet Monastery (Libary)",
		["state"] = false,
	}, -- [10]
	{
		["name"] = "Dungeon: Scarlet Monastery (Armory)",
		["state"] = false,
	}, -- [11]
	{
		["name"] = "Dungeon: Scarlet Monastery (Cathedral)",
		["state"] = false,
	}, -- [12]
	{
		["name"] = "Dungeon: Razorfen Downs",
		["state"] = false,
	}, -- [13]
	{
		["name"] = "Dungeon: Uldaman",
		["state"] = false,
	}, -- [14]
	{
		["name"] = "Dungeon: Zul'Farrak",
		["state"] = false,
	}, -- [15]
	{
		["name"] = "Dungeon: Maraudon",
		["state"] = false,
	}, -- [16]
	{
		["name"] = "Dungeon: Temple of Atal'Hakkar",
		["state"] = false,
	}, -- [17]
	{
		["name"] = "Dungeon: Blackrock Depths",
		["state"] = false,
	}, -- [18]
	{
		["name"] = "Dungeon: Lower Blackrock Spire",
		["state"] = false,
	}, -- [19]
	{
		["name"] = "Dungeon: Upper Blackrock Spire",
		["state"] = false,
	}, -- [20]
	{
		["name"] = "Dungeon: Dire Maul",
		["state"] = false,
	}, -- [21]
	{
		["name"] = "Dungeon: Dire Maul North",
		["state"] = false,
	}, -- [22]
	{
		["name"] = "Dungeon: Dire Maul East",
		["state"] = false,
	}, -- [23]
	{
		["name"] = "Dungeon: Dire Maul West",
		["state"] = false,
	}, -- [24]
	{
		["name"] = "Dungeon: Scholomance",
		["state"] = false,
	}, -- [25]
	{
		["name"] = "Dungeon: Stratholme (Living)",
		["state"] = false,
	}, -- [26]
	{
		["name"] = "Dungeon: Stratholme (Undead)",
		["state"] = false,
	}, -- [27]
	{
		["name"] = "Raid: Molten Core",
		["state"] = false,
	}, -- [28]
	{
		["name"] = "Raid: Onyxia",
		["state"] = false,
	}, -- [29]
	{
		["name"] = "Raid: Zul'Gurub",
		["state"] = false,
	}, -- [30]
	{
		["name"] = "Raid: Ruins of Ahn'Qiraj",
		["state"] = false,
	}, -- [31]
	{
		["name"] = "Raid: Blackwing Lair",
		["state"] = false,
	}, -- [32]
	{
		["name"] = "Raid: Ahn'Qiraj",
		["state"] = false,
	}, -- [33]
	{
		["name"] = "Raid: Naxxramas",
		["state"] = false,
	}, -- [34]
	{
		["name"] = "PVP: Open World PVP",
		["state"] = false,
	}, -- [35]
	{
		["name"] = "Battleground: [10-19] Warsong Gulch",
		["state"] = false,
	}, -- [36]
	{
		["name"] = "Battleground: [20-29] Arathi Basin",
		["state"] = false,
	}, -- [37]
	{
		["name"] = "Battleground: [51-60] Alterac Valley",
		["state"] = false,
	}, -- [38]
}
LFG_HelperDB = {
	["profileKeys"] = {
		["Rhanellix - Bloodfang"] = "Rhanellix - Bloodfang",
		["Yesu - Bloodfang"] = "Yesu - Bloodfang",
		["Xelle - Bloodfang"] = "Xelle - Bloodfang",
		["Leleti - Bloodfang"] = "Leleti - Bloodfang",
		["Shadowland - Bloodfang"] = "Shadowland - Bloodfang",
		["Krixsus - Bloodfang"] = "Krixsus - Bloodfang",
	},
	["profiles"] = {
		["Rhanellix - Bloodfang"] = {
		},
		["Yesu - Bloodfang"] = {
		},
		["Xelle - Bloodfang"] = {
		},
		["Leleti - Bloodfang"] = {
		},
		["Shadowland - Bloodfang"] = {
		},
		["Krixsus - Bloodfang"] = {
		},
	},
}
LFG_Pattern = "%prefix% [%lvl%] %class%  LFG %mid%  \"%subject%\"  %postfix%"
LFM_Pattern = "%prefix% LF%count%M  %mid%  %subject%  %rules% pref: (%classes%) %postfix%"
LFG_Helper_Options = {
	["WhisperPattern"] = "Hello %unit% we currently looking for %rule% for the dungeon %dungeon%",
	["EnableShortLFG"] = false,
	["ShortLFGChannel"] = "None",
}
LFG_Helper_Changelog = {
	["1.1.2"] = {
		["show"] = false,
		["changelog"] = "<html><body><h1>Version: 1.1.0</h1><br/><h1>|cffff0000Major announcement|r</h1><p>I create a discord for my addons. The old link was broken this one is working fine. Please make sure to join the discord if you want report issues with the lfg-helper. You can join the discord with this url: <a href=\"https://discord.gg/Wt8sxhV\">https://discord.gg/Wt8sxhV</a></p><br/><h1>|cffee4400New Features|r</h1><p>You have now a contex menu in your friend, guild and who list. You can send whisper messages to players.</p><br/><h1>|cffee4400Changes|r</h1><p>nothing changed so far :)</p><br/></body></html>",
	},
}
LFG_Helper_LastMessage = nil
