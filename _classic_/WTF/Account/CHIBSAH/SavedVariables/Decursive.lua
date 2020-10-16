
DecursiveDB = {
	["profileKeys"] = {
		["Rhanellix - Bloodfang"] = "Default",
		["Yesu - Bloodfang"] = "Default",
		["Xelle - Bloodfang"] = "Default",
		["Leleti - Bloodfang"] = "Default",
		["Shadowland - Bloodfang"] = "Default",
		["Krixsus - Bloodfang"] = "Default",
	},
	["class"] = {
		["HUNTER"] = {
			["CureOrder"] = {
				-11, -- [1]
				-15, -- [2]
				nil, -- [3]
				-12, -- [4]
				[8] = -13,
				[16] = -14,
				[32] = -16,
			},
		},
		["WARLOCK"] = {
			["CureOrder"] = {
				-12, -- [1]
				-16, -- [2]
				nil, -- [3]
				-13, -- [4]
				[8] = -14,
				[16] = -15,
				[32] = 1,
			},
		},
		["PALADIN"] = {
			["CureOrder"] = {
				-13, -- [1]
				-15, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = 1,
				[16] = 2,
				[32] = -16,
			},
		},
		["MAGE"] = {
			["CureOrder"] = {
				-13, -- [1]
				-16, -- [2]
				[8] = -14,
				[16] = -15,
				[32] = 1,
			},
		},
		["DRUID"] = {
			["CureOrder"] = {
				-12, -- [1]
				-15, -- [2]
				nil, -- [3]
				-13, -- [4]
				[8] = 1,
				[16] = -14,
				[32] = -16,
			},
		},
		["PRIEST"] = {
			["UserSpells"] = {
				[2139] = {
					["Disabled"] = false,
					["Types"] = {
						nil, -- [1]
						4, -- [2]
						16, -- [3]
						1, -- [4]
						2, -- [5]
						8, -- [6]
					},
				},
			},
			["CureOrder"] = {
				2, -- [1]
				3, -- [2]
				nil, -- [3]
				-14, -- [4]
				[8] = -15,
				[16] = 1,
				[32] = -16,
			},
		},
	},
	["global"] = {
		["MouseButtons"] = {
			nil, -- [1]
			nil, -- [2]
			"alt-%s1", -- [3]
			"alt-%s2", -- [4]
			nil, -- [5]
			nil, -- [6]
			nil, -- [7]
			"ctrl-%s1", -- [8]
			"ctrl-%s2", -- [9]
		},
		["LastVersionAnnounce"] = 1599206775,
		["NewerVersionAlert"] = 1573657478,
	},
	["profiles"] = {
		["Default"] = {
			["DebuffsFrameContainer_y"] = 617.244636968913,
			["MainBarX"] = 682.666681134258,
			["MainBarY"] = -96.0000020345051,
			["PriorityList"] = {
				-1, -- [1]
				-2, -- [2]
				-3, -- [3]
			},
			["DebuffsFrameContainer_x"] = 1075.91184893948,
			["PrioGUIDtoNAME"] = {
				[-2] = "[ Group  -2 ]",
				[-1] = "[ Group  -1 ]",
				[-3] = "[ Group  -3 ]",
			},
		},
	},
}
