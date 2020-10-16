
BalancePowerTracker_Options = {
	["hide_default"] = {
		["load"] = false,
		["aggressive"] = false,
	},
	["global"] = {
		["enabled"] = true,
		["slashShown"] = true,
		["version"] = {
			"2", -- [1]
			"0", -- [2]
			"1", -- [3]
		},
	},
	["default_art"] = {
		["load"] = false,
	},
	["warning_text"] = {
		["strata"] = "HIGH",
		["point"] = "CENTER",
		["spellEffects"] = true,
		["RealSolarEclipse"] = {
			["playThis"] = false,
			["MSBTThis"] = false,
			["color"] = {
				["a"] = 1,
				["r"] = 1,
				["g"] = 0.55,
				["b"] = 0,
			},
			["text"] = "Solar Peak",
			["flashThis"] = false,
			["warnThis"] = true,
			["showTexture"] = true,
			["sound"] = "Interface\\Quiet.ogg",
			["texture"] = "Interface\\Icons\\Ability_Druid_EclipseOrange",
		},
		["MSBT_sticky"] = true,
		["RealLunarEclipse"] = {
			["playThis"] = false,
			["MSBTThis"] = false,
			["color"] = {
				["a"] = 1,
				["r"] = 0.05,
				["g"] = 0.21,
				["b"] = 0.73,
			},
			["text"] = "Lunar Peak",
			["flashThis"] = false,
			["warnThis"] = true,
			["showTexture"] = true,
			["sound"] = "Interface\\Quiet.ogg",
			["texture"] = "Interface\\Icons\\Ability_Druid_Eclipse",
		},
		["testing"] = false,
		["scale"] = 1,
		["x"] = 0,
		["y"] = 120,
		["font"] = "Fonts\\FRIZQT__.TTF",
		["MSBT_outlineIndex"] = 0,
		["PredictedSolarEclipse"] = {
			["playThis"] = false,
			["MSBTThis"] = true,
			["color"] = {
				["a"] = 1,
				["r"] = 1,
				["g"] = 0.66,
				["b"] = 0.16,
			},
			["text"] = "Solar Peak soon!",
			["flashThis"] = false,
			["warnThis"] = true,
			["showTexture"] = true,
			["sound"] = "Interface\\Quiet.ogg",
			["texture"] = "Interface\\Icons\\Ability_Druid_EclipseOrange",
		},
		["PredictedLunarEclipse"] = {
			["playThis"] = false,
			["MSBTThis"] = true,
			["color"] = {
				["a"] = 1,
				["r"] = 0.12,
				["g"] = 0.56,
				["b"] = 1,
			},
			["text"] = "Lunar Peak soon!",
			["flashThis"] = false,
			["warnThis"] = true,
			["showTexture"] = true,
			["sound"] = "Interface\\Quiet.ogg",
			["texture"] = "Interface\\Icons\\Ability_Druid_Eclipse",
		},
		["flashAlpha"] = 0.5,
		["load"] = true,
		["fontSize"] = 30,
	},
	["eclipse_bar"] = {
		["predictOnArrow"] = true,
		["iconSpellReady"] = false,
		["showIcons"] = true,
		["big_icons"] = false,
		["iconBigScale"] = 1.2,
		["y"] = -100,
		["font"] = "Fonts\\FRIZQT__.TTF",
		["showEdge"] = true,
		["arrowYOffset"] = 1,
		["load"] = true,
		["none"] = {
			["a"] = 0,
			["r"] = 0,
			["g"] = 0,
			["b"] = 0,
		},
		["sparkYOffset"] = -1,
		["scale"] = 1,
		["sparkTextureFile"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		["vertical"] = false,
		["solarColor"] = {
			["a"] = 1,
			["r"] = 1,
			["g"] = 0.55,
			["b"] = 0,
		},
		["iconSize"] = 20,
		["edgeSize"] = 12,
		["barModeCastBarAll"] = false,
		["alpha"] = 1,
		["sy"] = 0,
		["textColor"] = {
			["a"] = 1,
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["showInAllStances"] = true,
		["ly"] = 0,
		["arrowTextureFile"] = "Interface\\PlayerFrame\\UI-DruidEclipse",
		["SolarIconTextureFile"] = "Interface\\Icons\\Ability_Druid_EclipseOrange",
		["arrowScale"] = 1,
		["moveTextOutOfTheWay"] = true,
		["SolarIconHighlightTextureFile"] = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-IconGlow",
		["predictOnIcons"] = true,
		["backGroundColor"] = {
			["a"] = 0,
			["r"] = 0,
			["g"] = 0,
			["b"] = 0,
		},
		["moving"] = false,
		["sx"] = 5,
		["lunarColor"] = {
			["a"] = 1,
			["r"] = 0.05,
			["g"] = 0.21,
			["b"] = 0.73,
		},
		["lx"] = -5,
		["strata"] = "HIGH",
		["point"] = "CENTER",
		["showIconsText"] = true,
		["arrowXOffset"] = 0,
		["showPredictBar"] = true,
		["LunarIconTextureFile"] = "Interface\\Icons\\Ability_Druid_Eclipse",
		["absoluteText"] = true,
		["showValue"] = true,
		["gainSpark"] = true,
		["hideInVehicle"] = true,
		["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
		["borderColor"] = {
			["a"] = 1,
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["iconGlow"] = true,
		["showIconsCooldown"] = true,
		["eclipseMarkerCoords"] = {
			{
				["sun"] = {
					1, -- [1]
					0.641, -- [2]
					0.914, -- [3]
					0.641, -- [4]
					1, -- [5]
					0.82, -- [6]
					0.914, -- [7]
					0.82, -- [8]
				},
				["none"] = {
					1, -- [1]
					0.82, -- [2]
					0.922, -- [3]
					0.82, -- [4]
					1, -- [5]
					1, -- [6]
					0.922, -- [7]
					1, -- [8]
				},
				["moon"] = {
					0.914, -- [1]
					0.641, -- [2]
					1, -- [3]
					0.641, -- [4]
					0.914, -- [5]
					0.82, -- [6]
					1, -- [7]
					0.82, -- [8]
				},
			}, -- [1]
			[0] = {
				["sun"] = {
					0.914, -- [1]
					1, -- [2]
					0.641, -- [3]
					0.82, -- [4]
				},
				["none"] = {
					0.922, -- [1]
					1, -- [2]
					0.82, -- [3]
					1, -- [4]
				},
				["moon"] = {
					1, -- [1]
					0.914, -- [2]
					0.641, -- [3]
					0.82, -- [4]
				},
			},
		},
		["sparkXOffset"] = 0,
		["alphaOOC"] = 0.6,
		["autoFontSize"] = true,
		["barModeCastBar"] = false,
		["barModeColorAll"] = false,
		["predictedSolarColor"] = {
			["a"] = 1,
			["r"] = 1,
			["g"] = 0.66,
			["b"] = 0.16,
		},
		["x"] = 0,
		["width"] = 140,
		["barTextureFile"] = "Interface\\TARGETINGFRAME\\UI-TargetingFrame-BarFill",
		["predictedLunarColor"] = {
			["a"] = 1,
			["r"] = 0.12,
			["g"] = 0.56,
			["b"] = 1,
		},
		["custom"] = {
			false, -- [1]
			nil, -- [2]
			false, -- [3]
			false, -- [4]
			false, -- [5]
			[0] = true,
			[31] = true,
			[29] = false,
			[27] = false,
		},
		["insets"] = {
			["top"] = 2,
			["right"] = 2,
			["left"] = 2,
			["bottom"] = 2,
		},
		["height"] = 16,
		["fontSize"] = 14,
		["LunarIconHighlightTextureFile"] = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-IconGlow",
		["growBar"] = false,
	},
}
