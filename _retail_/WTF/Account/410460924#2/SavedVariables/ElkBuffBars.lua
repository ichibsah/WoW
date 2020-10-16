
ElkBuffBarsDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Ana - Sporeggar"] = "Default",
	},
	["global"] = {
		["maxcharges"] = {
			["DEBUFF"] = {
				["Sunder Armor "] = 2,
			},
			["BUFF"] = {
				["Water Shield "] = 3,
			},
		},
		["build"] = "24015",
	},
	["profiles"] = {
		["Default"] = {
			["bargroups"] = {
				{
					["y"] = 1069.5,
					["sorting"] = "timeleft",
					["id"] = 1,
					["scale"] = 1,
					["barspacing"] = 0,
					["alpha"] = 1,
					["anchortext"] = "BUFFS",
					["x"] = 1476.00134277344,
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
						["barright"] = false,
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["height"] = 20,
						["iconcountfont"] = "Arial Narrow",
						["width"] = 250,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["iconcountfontsize"] = 14,
						["spark"] = false,
						["bartexture"] = "Otravi",
						["textBLfont"] = "Friz Quadrata TT",
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["textTLstyle"] = "",
						["debufftypecolor"] = true,
						["textBLfontsize"] = 14,
						["barcolor"] = {
							0.3, -- [1]
							0.5, -- [2]
							1, -- [3]
							0.8, -- [4]
						},
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["textTL"] = "NAMERANKCOUNT",
					},
					["configmode"] = true,
					["anchorshown"] = false,
				}, -- [1]
				{
					["id"] = 2,
					["sorting"] = "timeleft",
					["scale"] = 1,
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
						["barright"] = false,
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["height"] = 20,
						["iconcountfont"] = "Arial Narrow",
						["width"] = 250,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["iconcountfontsize"] = 14,
						["spark"] = false,
						["bartexture"] = "Otravi",
						["textBLfont"] = "Friz Quadrata TT",
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["textTLstyle"] = "",
						["debufftypecolor"] = true,
						["textBLfontsize"] = 14,
						["barcolor"] = {
							1, -- [1]
							0, -- [2]
							0, -- [3]
							0.8, -- [4]
						},
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["textTL"] = "NAMERANKCOUNT",
					},
					["stickside"] = "",
					["anchorshown"] = false,
				}, -- [2]
				{
					["id"] = 3,
					["sorting"] = "timeleft",
					["scale"] = 1,
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
						["barright"] = false,
						["textTLfont"] = "Friz Quadrata TT",
						["tooltipcaster"] = true,
						["height"] = 20,
						["iconcountfont"] = "Arial Narrow",
						["width"] = 250,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["timelessfull"] = false,
						["textTLfontsize"] = 14,
						["iconcountfontsize"] = 14,
						["spark"] = false,
						["bartexture"] = "Otravi",
						["textBLfont"] = "Friz Quadrata TT",
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textBLstyle"] = "",
						["textTLstyle"] = "",
						["debufftypecolor"] = true,
						["textBLfontsize"] = 14,
						["barcolor"] = {
							0.5, -- [1]
							0, -- [2]
							0.5, -- [3]
							0.8, -- [4]
						},
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["textTL"] = "NAMERANKCOUNT",
					},
					["stickside"] = "",
					["anchorshown"] = false,
				}, -- [3]
			},
		},
	},
}
