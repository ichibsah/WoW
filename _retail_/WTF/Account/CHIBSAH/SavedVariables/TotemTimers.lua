
TotemTimers_GlobalSettings = {
	["Sink"] = {
	},
	["Version"] = 12.01,
	["Profiles"] = {
		["Barrymore"] = {
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [1]
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [2]
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [3]
		},
	},
}
TotemTimers_Profiles = {
	["default"] = {
		["ShowTimerBars"] = true,
		["FlameshockBar"] = true,
		["ShieldTracker"] = true,
		["TimerSpacing"] = 5,
		["FlameshockBarRestoration"] = true,
		["TrackerSize"] = 30,
		["EnhanceCDsOOCAlpha"] = 0.4,
		["TotemTimerBarWidth"] = 36,
		["TooltipsAtButtons"] = false,
		["TimeFont"] = "Friz Quadrata TT",
		["FulminationAura"] = true,
		["FlashRed"] = true,
		["Show"] = true,
		["ReverseBarBindings"] = false,
		["Warnings"] = {
			["TotemWarning"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Totem Expiring",
				["g"] = 0,
				["r"] = 1,
			},
			["TotemExpiration"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Totem Expired",
				["g"] = 0,
				["r"] = 1,
			},
			["Shield"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Shield removed",
				["g"] = 0,
				["r"] = 1,
			},
			["EarthShield"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Shield removed",
				["g"] = 0,
				["r"] = 1,
			},
			["Maelstrom"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Maelstrom Notifier",
				["g"] = 0,
				["r"] = 1,
			},
			["TotemDestroyed"] = {
				["a"] = 1,
				["enabled"] = true,
				["b"] = 0,
				["sound"] = "",
				["text"] = "Totem Destroyed",
				["g"] = 0,
				["r"] = 1,
			},
		},
		["ColorTimerBars"] = false,
		["TimerTimePos"] = "BOTTOM",
		["TimerTimeHeight"] = 12,
		["LastOffEnchants"] = {
		},
		["Lock"] = false,
		["LavaSurgeAura"] = true,
		["StopPulse"] = true,
		["TrackerArrange"] = "horizontal",
		["EarthShieldTracker"] = true,
		["AnkhTracker"] = true,
		["CheckRaidRange"] = true,
		["ProcFlash"] = true,
		["EarthShieldButton4"] = "player",
		["MaelstromBar"] = true,
		["CheckPlayerRange"] = true,
		["TrackerTimeHeight"] = 12,
		["ShowKeybinds"] = true,
		["TimerBarTexture"] = "Blizzard",
		["ShowCooldowns"] = true,
		["TimerBarColor"] = {
			["a"] = 1,
			["b"] = 1,
			["g"] = 0.5,
			["r"] = 0.5,
		},
		["ESMainTankMenu"] = true,
		["ManaBar"] = true,
		["TimerSize"] = 32,
		["Anchors"] = {
			["XiTimersBar5"] = {
				["xOffset"] = -139.559768676758,
				["yOffset"] = -107.200096130371,
				["pointTo"] = "RIGHT",
				["pointFrom"] = "RIGHT",
			},
			["XiTimers_PowerBar"] = {
				["pointTo"] = "BOTTOM",
				["yOffset"] = 210.564834594727,
				["pointFrom"] = "BOTTOM",
			},
			["XiTimersBar1"] = {
				["yOffset"] = -107.199920654297,
			},
			["XiTimersBar3"] = {
				["pointTo"] = "LEFT",
				["yOffset"] = -72.0003509521484,
				["xOffset"] = 139.466781616211,
				["pointFrom"] = "LEFT",
			},
			["XiTimersBar4"] = {
				["xOffset"] = 139.426254272461,
				["yOffset"] = -107.199775695801,
				["pointTo"] = "LEFT",
				["pointFrom"] = "LEFT",
			},
			["XiTimersBar2"] = {
				["xOffset"] = 4.66856909042690e-005,
				["yOffset"] = -142.400451660156,
			},
			["TotemTimers_FSAnchor"] = {
				["yOffset"] = -64.5334625244141,
			},
		},
		["ESMainTankMenuDirection"] = "auto",
		["LastMainEnchants"] = {
		},
		["TimerTimeSpacing"] = 0,
		["EarthShieldLeftButton"] = "recast",
		["TimeColor"] = {
			["b"] = 1,
			["g"] = 1,
			["r"] = 1,
		},
		["Arrange"] = "horizontal",
		["TrackerTimerBarWidth"] = 36,
		["CooldownSpacing"] = 5,
		["TrackerTimePos"] = "BOTTOM",
		["Order"] = {
			1, -- [1]
			2, -- [2]
			3, -- [3]
			4, -- [4]
		},
		["ActivateHiddenTimers"] = false,
		["Tooltips"] = true,
		["ESChargesOnly"] = false,
		["EarthShieldTargetName"] = true,
		["TotemMenuSpacing"] = 0,
		["MenusAlwaysVisible"] = false,
		["HideBlizzTimers"] = true,
		["ShowOmniCCOnEnhanceCDs"] = true,
		["Clickthrough"] = false,
		["HideInVehicle"] = true,
		["OpenOnRightclick"] = false,
		["LavaSurgeGlow"] = true,
		["FulminationGlow"] = true,
		["TrackerTimeSpacing"] = 0,
		["buttons"] = {
			["SHAMAN"] = {
				{
					nil, -- [1]
					nil, -- [2]
					{
						["id"] = 117014,
						["type"] = "spell",
					}, -- [3]
					{
						["id"] = 51505,
						["type"] = "spell",
					}, -- [4]
					{
						["id"] = 188389,
						["type"] = "spell",
					}, -- [5]
					{
						["id"] = 196840,
						["type"] = "spell",
					}, -- [6]
					{
						["id"] = 8042,
						["type"] = "spell",
					}, -- [7]
					{
						["id"] = 57994,
						["type"] = "spell",
					}, -- [8]
					nil, -- [9]
					nil, -- [10]
					nil, -- [11]
					nil, -- [12]
					{
						["id"] = 108271,
						["type"] = "spell",
					}, -- [13]
					{
						["id"] = 51490,
						["type"] = "spell",
					}, -- [14]
					{
						["id"] = 198103,
						["type"] = "spell",
					}, -- [15]
					{
						["id"] = 192249,
						["type"] = "spell",
					}, -- [16]
					{
						["id"] = 210714,
						["type"] = "spell",
					}, -- [17]
					{
						["id"] = 20608,
						["type"] = "spell",
					}, -- [18]
					nil, -- [19]
					nil, -- [20]
					nil, -- [21]
					nil, -- [22]
					nil, -- [23]
					nil, -- [24]
					nil, -- [25]
					nil, -- [26]
					nil, -- [27]
					nil, -- [28]
					nil, -- [29]
					nil, -- [30]
					nil, -- [31]
					nil, -- [32]
					nil, -- [33]
					{
						["id"] = 192222,
						["type"] = "spell",
					}, -- [34]
					{
						["id"] = 192058,
						["type"] = "spell",
					}, -- [35]
					{
						["id"] = 108281,
						["type"] = "spell",
					}, -- [36]
					{
						["id"] = 210643,
						["type"] = "spell",
					}, -- [37]
					{
						["id"] = 61882,
						["type"] = "spell",
					}, -- [38]
					{
						["id"] = 2825,
						["type"] = "spell",
					}, -- [39]
					{
						["id"] = 51514,
						["type"] = "spell",
					}, -- [40]
				}, -- [1]
				{
					nil, -- [1]
					nil, -- [2]
					{
						["id"] = 193786,
						["type"] = "spell",
					}, -- [3]
					{
						["id"] = 17364,
						["type"] = "spell",
					}, -- [4]
					{
						["id"] = 60103,
						["type"] = "spell",
					}, -- [5]
					{
						["id"] = 187874,
						["type"] = "spell",
					}, -- [6]
					{
						["id"] = 193796,
						["type"] = "spell",
					}, -- [7]
					{
						["id"] = 201898,
						["type"] = "spell",
					}, -- [8]
					[13] = {
						["id"] = 192077,
						["type"] = "spell",
					},
					[14] = {
						["id"] = 108271,
						["type"] = "spell",
					},
					[39] = {
						["id"] = 2825,
						["type"] = "spell",
					},
					[15] = {
						["id"] = 58875,
						["type"] = "spell",
					},
					[16] = {
						["id"] = 51533,
						["type"] = "spell",
					},
					[17] = {
						["id"] = 57994,
						["type"] = "spell",
					},
					[18] = {
						["id"] = 196834,
						["type"] = "spell",
					},
					[19] = {
						["id"] = 20608,
						["type"] = "spell",
					},
					[38] = {
						["id"] = 51485,
						["type"] = "spell",
					},
					[40] = {
						["id"] = 51514,
						["type"] = "spell",
					},
					[36] = {
						["id"] = 188089,
						["type"] = "spell",
					},
					[12] = {
						["id"] = 197214,
						["type"] = "spell",
					},
					[37] = {
						["id"] = 192106,
						["type"] = "spell",
					},
				}, -- [2]
				{
					nil, -- [1]
					nil, -- [2]
					{
						["id"] = 61295,
						["type"] = "spell",
					}, -- [3]
					{
						["id"] = 73920,
						["type"] = "spell",
					}, -- [4]
					{
						["id"] = 5394,
						["type"] = "spell",
					}, -- [5]
					{
						["id"] = 108280,
						["type"] = "spell",
					}, -- [6]
					{
						["id"] = 98008,
						["type"] = "spell",
					}, -- [7]
					{
						["id"] = 73685,
						["type"] = "spell",
					}, -- [8]
					[13] = {
						["id"] = 108271,
						["type"] = "spell",
					},
					[35] = {
						["id"] = 157153,
						["type"] = "spell",
					},
					[14] = {
						["id"] = 188838,
						["type"] = "spell",
					},
					[39] = {
						["id"] = 2825,
						["type"] = "spell",
					},
					[15] = {
						["id"] = 51505,
						["type"] = "spell",
					},
					[16] = {
						["id"] = 57994,
						["type"] = "spell",
					},
					[17] = {
						["id"] = 77130,
						["type"] = "spell",
					},
					[18] = {
						["id"] = 79206,
						["type"] = "spell",
					},
					[19] = {
						["id"] = 20608,
						["type"] = "spell",
					},
					[38] = {
						["id"] = 192077,
						["type"] = "spell",
					},
					[40] = {
						["id"] = 51514,
						["type"] = "spell",
					},
					[36] = {
						["id"] = 108281,
						["type"] = "spell",
					},
					[12] = {
						["id"] = 197995,
						["type"] = "spell",
					},
					[37] = {
						["id"] = 192058,
						["type"] = "spell",
					},
				}, -- [3]
			},
		},
		["TimeStyle"] = "mm:ss",
		["FramePositions"] = {
		},
		["BarBindings"] = true,
		["EarthShieldRightButton"] = "target",
		["ShowRaidRangeTooltip"] = true,
		["CDTimersOnButtons"] = true,
		["MiniIcons"] = true,
		["TrackerSpacing"] = 5,
		["EarthShieldMiddleButton"] = "targettarget",
		["CastBarDirection"] = "auto",
		["ActionBarButtonPosition"] = {
			"center", -- [1]
			"center", -- [2]
			"center", -- [3]
			"right", -- [4]
			"left", -- [5]
		},
		["TimersOnButtons"] = true,
	},
}
