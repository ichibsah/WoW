
ElkBuffBarsDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["maxcharges"] = {
			["DEBUFF"] = {
				["Judgment of Light "] = 40,
				["True Aim "] = 10,
				["Circadian Invocation "] = 6,
				["Razorice "] = 5,
				["Anguish "] = 10,
				["Winter is Coming Talent"] = 5,
			},
			["BUFF"] = {
				["Windrunning "] = 5,
				["Legion's Gaze "] = 10,
				["Wax and Wane "] = 2,
			},
		},
		["build"] = "24461",
	},
	["profileKeys"] = {
		["Shimada - Jaedenar"] = "Default",
		["Kethrra - Jaedenar"] = "Default",
		["Kibsaa - Jaedenar"] = "Default",
		["Kethrry - Jaedenar"] = "Default",
		["Kibsaa - Sanguino"] = "Default",
		["Leleti - Sporeggar"] = "Default",
		["Mengsk - Sporeggar"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["bargroups"] = {
				{
					["anchorshown"] = false,
					["configmode"] = true,
					["id"] = 1,
					["barspacing"] = 0,
					["alpha"] = 1,
					["anchortext"] = "BUFFS",
					["y"] = 1045.5,
					["x"] = 1502.00085449219,
					["growup"] = false,
					["filter"] = {
						["type"] = {
							["BUFF"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["textBRstyle"] = "",
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textTRstyle"] = "",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["timeFraction"] = true,
						["barbgcolor"] = {
							0, -- [1]
							0.5, -- [2]
							1, -- [3]
							0.3, -- [4]
						},
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTL"] = "NAMERANKCOUNT",
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["textTRfontsize"] = 14,
						["iconcountfont"] = "Arial Narrow",
						["timeformat"] = "CONDENSED",
						["barcolor"] = {
							0.3, -- [1]
							0.5, -- [2]
							1, -- [3]
							0.8, -- [4]
						},
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["textTLstyle"] = "",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["barright"] = false,
						["debufftypecolor"] = true,
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["width"] = 250,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["bartexture"] = "Otravi",
						["spark"] = false,
						["iconcountfontsize"] = 14,
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["height"] = 20,
					},
					["scale"] = 1,
					["sorting"] = "timeleft",
				}, -- [1]
				{
					["anchorshown"] = false,
					["scale"] = 1,
					["id"] = 2,
					["barspacing"] = 0,
					["alpha"] = 1,
					["stickto"] = 1,
					["anchortext"] = "DEBUFFS",
					["growup"] = false,
					["configmode"] = false,
					["filter"] = {
						["type"] = {
							["DEBUFF"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["textBRstyle"] = "",
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textTRstyle"] = "",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["timeFraction"] = true,
						["barbgcolor"] = {
							1, -- [1]
							0, -- [2]
							0, -- [3]
							0.3, -- [4]
						},
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTL"] = "NAMERANKCOUNT",
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["textTRfontsize"] = 14,
						["iconcountfont"] = "Arial Narrow",
						["timeformat"] = "CONDENSED",
						["barcolor"] = {
							1, -- [1]
							0, -- [2]
							0, -- [3]
							0.8, -- [4]
						},
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["textTLstyle"] = "",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["barright"] = false,
						["debufftypecolor"] = true,
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["width"] = 250,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["bartexture"] = "Otravi",
						["spark"] = false,
						["iconcountfontsize"] = 14,
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["height"] = 20,
					},
					["stickside"] = "",
					["sorting"] = "timeleft",
				}, -- [2]
				{
					["anchorshown"] = false,
					["scale"] = 1,
					["id"] = 3,
					["barspacing"] = 0,
					["alpha"] = 1,
					["stickto"] = 2,
					["anchortext"] = "TENCH",
					["growup"] = false,
					["configmode"] = false,
					["filter"] = {
						["type"] = {
							["TENCH"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["textBRstyle"] = "",
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textTRstyle"] = "",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["timeFraction"] = true,
						["barbgcolor"] = {
							0.5, -- [1]
							0, -- [2]
							0.5, -- [3]
							0.3, -- [4]
						},
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTL"] = "NAMERANKCOUNT",
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["textTRfontsize"] = 14,
						["iconcountfont"] = "Arial Narrow",
						["timeformat"] = "CONDENSED",
						["barcolor"] = {
							0.5, -- [1]
							0, -- [2]
							0.5, -- [3]
							0.8, -- [4]
						},
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["textTLstyle"] = "",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["barright"] = false,
						["debufftypecolor"] = true,
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["width"] = 250,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["bartexture"] = "Otravi",
						["spark"] = false,
						["iconcountfontsize"] = 14,
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["height"] = 20,
					},
					["stickside"] = "",
					["sorting"] = "timeleft",
				}, -- [3]
			},
		},
	},
}
