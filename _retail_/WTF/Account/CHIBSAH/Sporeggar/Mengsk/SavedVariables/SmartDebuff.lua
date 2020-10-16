
SMARTDEBUFF_Options = {
	["ColBack"] = {
		["a"] = 0.5,
		["r"] = 0,
		["g"] = 0,
		["b"] = 0,
	},
	["BtnW"] = 28,
	["NotRemovableDebuffs"] = {
		"Impaling Spine", -- [1]
		"Incinerate", -- [2]
		"Bloodboil", -- [3]
		"Fel Rage", -- [4]
		"Fatal Attraction", -- [5]
		"Vile Beam", -- [6]
		"Deadly Poison", -- [7]
		"Agonizing Flames", -- [8]
		"Parasitic Shadowfiend", -- [9]
		"Dark Barrage", -- [10]
		"Icebolt", -- [11]
		"Rain of Fire", -- [12]
		"Doomfire", -- [13]
		"Burn", -- [14]
		"Negative Energy", -- [15]
		"Water Tomb", -- [16]
		"Watery Grave", -- [17]
	},
	["Keys"] = {
		{
			["R"] = {
			},
			["AR"] = {
			},
			["SL"] = {
				"target", -- [1]
				"target", -- [2]
			},
			["SR"] = {
			},
			["CL"] = {
				"menu", -- [1]
				"menu", -- [2]
			},
			["SM"] = {
			},
			["AL"] = {
				"spell", -- [1]
				"Rejuvenation", -- [2]
				nil, -- [3]
				49, -- [4]
				"spell", -- [5]
			},
			["AM"] = {
			},
			["M"] = {
			},
			["L"] = {
				"spell", -- [1]
				"Nature's Cure", -- [2]
				nil, -- [3]
				44, -- [4]
				"spell", -- [5]
			},
			["CR"] = {
			},
			["CM"] = {
			},
		}, -- [1]
		{
			["R"] = {
				"spell", -- [1]
				"Rejuvenation", -- [2]
				nil, -- [3]
				49, -- [4]
				"spell", -- [5]
			},
			["AR"] = {
			},
			["SL"] = {
			},
			["SR"] = {
			},
			["CL"] = {
				"menu", -- [1]
				"menu", -- [2]
			},
			["SM"] = {
			},
			["AL"] = {
				"spell", -- [1]
				"Nature's Cure", -- [2]
				nil, -- [3]
				44, -- [4]
				"spell", -- [5]
			},
			["AM"] = {
			},
			["M"] = {
			},
			["L"] = {
				"target", -- [1]
				"target", -- [2]
			},
			["CR"] = {
			},
			["CM"] = {
			},
		}, -- [2]
	},
	["ShowClassColors"] = true,
	["VerticalUp"] = false,
	["ColDebuffR"] = {
		["r"] = 1,
		["g"] = 0,
		["b"] = 0,
	},
	["ADebuff"] = 1,
	["ShowHealRange"] = true,
	["BtnSpX"] = 4,
	["ShowMana"] = true,
	["ANormal"] = 0.8,
	["DebuffClasses"] = {
		["HUNTER"] = true,
		["WARRIOR"] = true,
		["PALADIN"] = true,
		["MAGE"] = true,
		["PRIEST"] = true,
		["SHAMAN"] = true,
		["WARLOCK"] = true,
		["DEMONHUNTER"] = true,
		["DEATHKNIGHT"] = true,
		["DRUID"] = true,
		["MONK"] = true,
		["ROGUE"] = true,
	},
	["ShowSF"] = false,
	["ANormalOOR"] = 0.4,
	["SFPosY"] = -300,
	["RaidIconSize"] = 12,
	["ShowPetsWL"] = true,
	["OrderGrp"] = {
		1, -- [1]
		2, -- [2]
		3, -- [3]
		4, -- [4]
		5, -- [5]
		6, -- [6]
		7, -- [7]
		8, -- [8]
	},
	["Toggle"] = true,
	["UseSound"] = false,
	["ColDebuffM"] = {
		["r"] = 0,
		["g"] = 0.7,
		["b"] = 0,
	},
	["CurrentSpells"] = {
		"Nature's Cure", -- [1]
		[10] = "Rejuvenation",
	},
	["SFPosP"] = "TOPLEFT",
	["SFPosRP"] = "TOPLEFT",
	["ColDebuffNR"] = {
		["r"] = 0.86,
		["g"] = 0.3,
		["b"] = 1,
	},
	["IgnoreDebuff"] = true,
	["ShowGradient"] = true,
	["VersionNr"] = 70000,
	["CheckInterval"] = 0.1,
	["ShowInfoRow"] = true,
	["Vertical"] = true,
	["ShowAggro"] = true,
	["AutoHide"] = false,
	["ShowNotRemov"] = false,
	["Columns"] = 12,
	["SortedByRole"] = false,
	["ColDebuffL"] = {
		["r"] = 0,
		["g"] = 0,
		["b"] = 1,
	},
	["ShowSpellIcon"] = true,
	["BtnSpY"] = 2,
	["SpellGuard"] = {
		"Rejuvenation", -- [1]
	},
	["DebuffGrp"] = {
		true, -- [1]
		true, -- [2]
		true, -- [3]
		true, -- [4]
		true, -- [5]
		true, -- [6]
		true, -- [7]
		true, -- [8]
	},
	["ShowRaidIcon"] = true,
	["ShowLR"] = true,
	["StopCast"] = false,
	["BtnH"] = 20,
	["ShowVehicles"] = true,
	["BarH"] = 4,
	["SFPosX"] = 400,
	["ColNormal"] = {
		["r"] = 0.39,
		["g"] = 0.42,
		["b"] = 0.64,
	},
	["SortedByClass"] = true,
	["ShowPetsDK"] = true,
	["OrderClass"] = {
		"WARRIOR", -- [1]
		"PRIEST", -- [2]
		"DRUID", -- [3]
		"PALADIN", -- [4]
		"SHAMAN", -- [5]
		"MAGE", -- [6]
		"WARLOCK", -- [7]
		"HUNTER", -- [8]
		"ROGUE", -- [9]
		"DEATHKNIGHT", -- [10]
		"MONK", -- [11]
		"DEMONHUNTER", -- [12]
	},
	["ShowHPText"] = true,
	["ShowIF"] = true,
	["ShowPets"] = true,
	["ShowBackdrop"] = true,
	["Debug"] = false,
	["AdvAnchors"] = false,
	["Invert"] = true,
	["ShowHeaders"] = true,
	["ShowMsgNormal"] = true,
	["ShowHP"] = true,
	["Sound"] = 10,
	["ShowMsgWarning"] = true,
	["Fontsize"] = 9,
	["ShowGrpNr"] = false,
	["ShowHeaderRow"] = true,
	["ShowMsgError"] = true,
	["ShowTooltip"] = true,
	["TargetMode"] = false,
}
