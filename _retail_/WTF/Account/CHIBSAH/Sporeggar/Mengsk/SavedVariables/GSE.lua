
GSE_C = {
}
GSELegacyLibraryBackup = {
	{
	}, -- [1]
	{
		["SAM_RETAOE"] = {
			["Helplink"] = "https://wowlazymacros.com/forums/topic/tls-ret-macro/",
			["Talents"] = "2,2,2,1,1,2,2",
			["Mythic"] = -1,
			["Author"] = "TimothyLuke",
			["ManualIntervention"] = false,
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 53385", -- [2]
					"/cast 20271", -- [3]
					"/cast 184575", -- [4]
					"/cast Wake of Ashes", -- [5]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
					},
					["SoundErrorPrevention"] = true,
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:shift] 31884", -- [2]
						"/cast [mod:ctrl] 215661", -- [3]
					},
				}, -- [1]
			},
			["Icon"] = "INV_MISC_QUESTIONMARK",
			["Default"] = 1,
			["Raid"] = -1,
			["Help"] = "A simple Ret AOE Macro\nShift has Avenging Wrath\nControl has Justicar's Vengeance",
			["SpecID"] = 70,
			["Lang"] = "enUS",
			["PVP"] = 0,
		},
		["SAM_PROT"] = {
			["Talents"] = "3221222",
			["Default"] = 1,
			["Help"] = "Simple Prot Macro.\nMod Shift has Avenging Wrath",
			["MacroVersions"] = {
				{
					"/cast Blessed Hammer", -- [1]
					"/cast 26573", -- [2]
					"/cast Shield of the Rghteous", -- [3]
					"/cast Avenger's Shield", -- [4]
					"/cast Light of the Protector", -- [5]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:alt] 31884", -- [2]
					},
					["PreMacro"] = {
					},
					["PostMacro"] = {
					},
				}, -- [1]
			},
			["SpecID"] = 66,
			["Author"] = "TimothyLuke",
			["ManualIntervention"] = false,
		},
		["SAM_HOLYPALADIN"] = {
			["Talents"] = "3323122",
			["Default"] = 1,
			["Help"] = "Simple Holy Paladin DPS Macro",
			["Author"] = "TimothyLuke",
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 26573", -- [2]
					"/cast [@player] 114158", -- [3]
					"/cast Judgement", -- [4]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
					["PreMacro"] = {
					},
					["PostMacro"] = {
					},
				}, -- [1]
			},
			["SpecID"] = 65,
			["ManualIntervention"] = false,
		},
		["SAM_RET"] = {
			["Helplink"] = "https://wowlazymacros.com/forums/topic/tls-ret-macro/",
			["Talents"] = "2,2,2,1,1,2,2",
			["Author"] = "TimothyLuke",
			["ManualIntervention"] = false,
			["Default"] = 1,
			["Help"] = "A simple Ret  Macro\nShift has Avenging Wrath\nControl has Justicar's Vengeance",
			["Icon"] = "INV_MISC_QUESTIONMARK",
			["SpecID"] = 70,
			["Lang"] = "enUS",
			["MacroVersions"] = {
				{
					"/cast 35395", -- [1]
					"/cast 85256", -- [2]
					"/cast 20271", -- [3]
					"/cast 184575", -- [4]
					"/cast Wake of Ashes", -- [5]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:shift] 31884", -- [2]
						"/cast [mod:ctrl] 215661", -- [3]
					},
					["PreMacro"] = {
					},
					["SoundErrorPrevention"] = true,
					["KeyRelease"] = {
					},
				}, -- [1]
			},
		},
	}, -- [2]
	{
		["SAM_BMST"] = {
			["Talents"] = "3123311",
			["PVP"] = 3,
			["Heroic"] = 2,
			["Author"] = "Sir Ewing",
			["Mythic"] = 2,
			["ManualIntervention"] = false,
			["Dungeon"] = 2,
			["Party"] = 2,
			["Help"] = "Beta single target",
			["Arena"] = 3,
			["Default"] = 1,
			["Raid"] = 2,
			["SpecID"] = 253,
			["MacroVersions"] = {
				{
					"/cast 34026", -- [1]
					"/castsequence 193455, 34026, 193455, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 34026", -- [6]
					"/cast 19574", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 193455, 34026, 193455, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19577", -- [19]
					"/cast 19574", -- [20]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyRelease"] = {
					},
					["Ring2"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["StepFunction"] = "Sequential",
				}, -- [1]
				{
					"/cast 34026", -- [1]
					"/castsequence 193455, 34026, 193455", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 193455, 34026, 193455", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19574", -- [19]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
					},
					["Ring2"] = false,
				}, -- [2]
				{
					"/cast 5116", -- [1]
					"/cast 34026", -- [2]
					"/castsequence 193455, 34026, 193455, 19577", -- [3]
					"/cast 34026", -- [4]
					"/cast 131894", -- [5]
					"/cast 217200", -- [6]
					"/cast 19574", -- [7]
					"/cast 34026", -- [8]
					"/cast 120679", -- [9]
					"/cast 193530", -- [10]
					"/cast 5116", -- [11]
					"/cast 34026", -- [12]
					"/castsequence 193455, 34026, 193455, 19577", -- [13]
					"/cast 217200", -- [14]
					"/use 13", -- [15]
					"/use 14", -- [16]
					"/cast 34026", -- [17]
					"/cast 120679", -- [18]
					"/cast 193530", -- [19]
					"/cast 131894", -- [20]
					"/cast 19577", -- [21]
					"/cast 19574", -- [22]
					["LoopLimit"] = "2",
					["Trinket1"] = false,
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["KeyPress"] = {
						"/cast [nopet,nodead] 883; [@pet,dead,nochanneling] 136", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PostMacro"] = {
					},
					["Trinket2"] = false,
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["Ring2"] = false,
				}, -- [3]
			},
		},
		["SAM_SURVIVAL"] = {
			["Talents"] = "1211232",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast 269751", -- [1]
					"/cast 186270", -- [2]
					"/cast [@player, nochanneling] 187698", -- [3]
					"/cast [@player, nochanneling] 187650", -- [4]
					"/cast 186289", -- [5]
					"/cast [nochanneling] 186270", -- [6]
					"/cast [nochanneling] Carve", -- [7]
					"/cast [nochanneling] 259489", -- [8]
					"/cast [nochanneling] 266779", -- [9]
					"/cast 259491", -- [10]
					"/cast 270335", -- [11]
					"/cast [combat] Fury of the Eagle", -- [12]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
						"/startattack", -- [1]
					},
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["SpecID"] = 255,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_BMAOE"] = {
			["Talents"] = "3123311",
			["Mythic"] = 2,
			["MacroVersions"] = {
				{
					"/cast 34026", -- [1]
					"/castsequence 2643, 34026, 2643, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 2643, 34026, 2643, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19577", -- [19]
					"/cast 19574", -- [20]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
					["Trinket2"] = false,
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] 883", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["Ring2"] = false,
				}, -- [1]
				{
					"/cast 34026", -- [1]
					"/castsequence 2643, 34026, 2643, 19577", -- [2]
					"/cast 34026", -- [3]
					"/cast 131894", -- [4]
					"/cast 217200", -- [5]
					"/cast 19574", -- [6]
					"/cast 34026", -- [7]
					"/cast 120679", -- [8]
					"/cast 193530", -- [9]
					"/cast 34026", -- [10]
					"/castsequence 2643, 34026, 2643, 19577", -- [11]
					"/cast 217200", -- [12]
					"/use 13", -- [13]
					"/use 14", -- [14]
					"/cast 34026", -- [15]
					"/cast 120679", -- [16]
					"/cast 193530", -- [17]
					"/cast 131894", -- [18]
					"/cast 19574", -- [19]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
					["Ring2"] = false,
					["Trinket2"] = false,
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] Call Pet 1t", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
					},
					["StepFunction"] = "Sequential",
				}, -- [2]
				{
					"/cast 5116", -- [1]
					"/cast 34026", -- [2]
					"/castsequence 2643, 34026, 2643, 19577", -- [3]
					"/cast 34026", -- [4]
					"/cast 131894", -- [5]
					"/cast 217200", -- [6]
					"/cast 19574", -- [7]
					"/cast 34026", -- [8]
					"/cast 120679", -- [9]
					"/cast 193530", -- [10]
					"/cast 5116", -- [11]
					"/cast 34026", -- [12]
					"/castsequence 2643, 34026, 2643, 19577", -- [13]
					"/cast 217200", -- [14]
					"/use 13", -- [15]
					"/use 14", -- [16]
					"/cast 34026", -- [17]
					"/cast 120679", -- [18]
					"/cast 193530", -- [19]
					"/cast 131894", -- [20]
					"/cast 19577", -- [21]
					"/cast 19574", -- [22]
					["LoopLimit"] = "2",
					["PostMacro"] = {
					},
					["Head"] = false,
					["Neck"] = false,
					["Belt"] = false,
					["Ring1"] = false,
					["Trinket2"] = false,
					["Ring2"] = false,
					["StepFunction"] = "Sequential",
					["Trinket1"] = false,
					["KeyPress"] = {
						"/cast [nopet,nodead] Call Pet 1t", -- [1]
						"/cast [combat,pet:Spirit Beast,@player] 90361", -- [2]
						"/petautocaston 2649", -- [3]
						"/cast [target=focus, exists, nodead],[target=pet, exists, nodead] Misdirection\"", -- [4]
						"/cast [combat,pet,@player] Roar of Sacrifice", -- [5]
					},
					["PreMacro"] = {
						"/cast 193530", -- [1]
						"/cast 131894", -- [2]
						"/cast 120679", -- [3]
						"/cast 19577", -- [4]
					},
					["KeyRelease"] = {
						"/cast 131894", -- [1]
					},
				}, -- [3]
			},
			["Author"] = "Sir Ewing",
			["ManualIntervention"] = false,
			["Dungeon"] = 2,
			["Party"] = 2,
			["Help"] = "Beta AoE",
			["Default"] = 1,
			["Raid"] = 2,
			["SpecID"] = 253,
			["PVP"] = 3,
			["Heroic"] = 2,
		},
		["SAM_MM"] = {
			["Talents"] = "3,3,2,3,2,1,",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast [nochanneling] 19434", -- [1]
					"/cast [nochanneling] 131894", -- [2]
					"/cast [nochanneling] 185358", -- [3]
					"/cast [nochanneling] 212431", -- [4]
					"/cast [nochanneling] 56641", -- [5]
					"/cast [nochanneling] 257044", -- [6]
					"/cast [nochanneling] 257620", -- [7]
					"/cast [nochanneling] 186387", -- [8]
					["LoopLimit"] = 2,
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/startattack", -- [2]
					},
					["PreMacro"] = {
						"/cast [nochanneling] 193526", -- [1]
						"/cast [nochanneling] 131894", -- [2]
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["Author"] = "Webber",
			["SpecID"] = 254,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	}, -- [3]
	{
	}, -- [4]
	{
	}, -- [5]
	{
	}, -- [6]
	{
	}, -- [7]
	{
		["SAM_FROST"] = {
			["Default"] = 1,
			["Talents"] = "2311121",
			["Help"] = "Don't know what i am doing",
			["Author"] = "Cymiric",
			["MacroVersions"] = {
				{
					"/cast 84714", -- [1]
					"/cast 12472", -- [2]
					"/cast Ebonbolt", -- [3]
					"/cast 116", -- [4]
					["Combat"] = true,
					["StepFunction"] = "Priority",
					["KeyPress"] = {
						"/targetenemy [noharm][dead]", -- [1]
						"/cast [mod:shift] 44614", -- [2]
						"/cast [mod:ctrl] 30455", -- [3]
					},
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["SpecID"] = 64,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_ARCANE"] = {
			["Talents"] = "3313113",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast 30451", -- [1]
					"/cast 30451", -- [2]
					"/cast 30451", -- [3]
					"/cast 30451", -- [4]
					"/cast 44425", -- [5]
					"/cast 153626", -- [6]
					"/cast 157980", -- [7]
					["Combat"] = true,
					["KeyPress"] = {
						"/cast [mod:shift] 5143", -- [1]
					},
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["Author"] = "Cymiric",
			["SpecID"] = 62,
			["ManualIntervention"] = false,
		},
		["SAM_FIRE"] = {
			["Talents"] = "2113132",
			["Default"] = 1,
			["SpecID"] = 63,
			["Author"] = "Burnmabeard@Anduin",
			["MacroVersions"] = {
				{
					"/cast 133", -- [1]
					"/cast 108853", -- [2]
					"/cast 257541", -- [3]
					"/cast 133", -- [4]
					"/cast 44457", -- [5]
					"/cast 31661", -- [6]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
						"/cast [mod:shift] 11366", -- [1]
						"/cast [mod:ctrl,@cursor] 2120", -- [2]
					},
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["Combat"] = true,
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
	}, -- [8]
	{
	}, -- [9]
	{
	}, -- [10]
	{
		["SAM_BALANCE"] = {
			["Talents"] = "1323321",
			["Default"] = 1,
			["Author"] = "John Metz",
			["SpecID"] = 102,
			["MacroVersions"] = {
				{
					"/castsequence 8921, 93402, 190984, 190984, 190984, 190984, 190984", -- [1]
					"/cast 78674", -- [2]
					"/cast 202360", -- [3]
					"/cast [mod:alt] 194153", -- [4]
					"/cast [talent 5/3] 194223", -- [5]
					["LoopLimit"] = "",
					["PostMacro"] = {
					},
					["KeyPress"] = {
					},
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["StepFunction"] = "Sequential",
				}, -- [1]
				{
					"/castsequence [nomod] reset=combat  8921, 93402, 190984, 190984, 190984, 190984, 78674, 190984, 190984, 190984, 190984, 78674", -- [1]
					"/cast 202360", -- [2]
					"/cast [mod:alt] 194153", -- [3]
					["PostMacro"] = {
					},
					["KeyPress"] = {
					},
					["StepFunction"] = "Sequential",
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [2]
			},
			["ManualIntervention"] = false,
		},
		["SAM_GUARDIAN"] = {
			["Help"] = "Press Shift for Maul, Ctrl for Frenzied Regeneration, and Alt for Moonfire.",
			["Talents"] = "2332213",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/targetenemy [noharm][dead]", -- [1]
					"/cast Thrash", -- [2]
					"/castsequence Ironfur, Ironfur", -- [3]
					"/castsequence Swipe, Swipe, Swipe, Swipe, Moonfire", -- [4]
					"/castsequence Ironfur, Ironfur", -- [5]
					"/cast Mangle", -- [6]
					"/castsequence Ironfur, Ironfur", -- [7]
					"/cast Rage of the Sleeper", -- [8]
					["KeyRelease"] = {
					},
					["Trinket1"] = true,
					["StepFunction"] = "Priority",
					["PostMacro"] = {
					},
					["KeyPress"] = {
						"/cast [@player, nostance:1] Bear Form", -- [1]
						"/cast [mod:shift] Maul", -- [2]
						"/cast [mod:ctrl] Frenzied Regeneration", -- [3]
						"/cast [mod:alt] Wild Charge", -- [4]
					},
					["PreMacro"] = {
					},
					["Trinket2"] = true,
				}, -- [1]
			},
			["Author"] = "TimothyLuke",
			["SpecID"] = 104,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
		["SAM_FERAL"] = {
			["Talents"] = "2,3,2,1,2,2,1",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast Rake", -- [1]
					"/cast [combat] Incarnation: King of the Jungle", -- [2]
					"/cast [combat] Shred", -- [3]
					"/cast [combat] Rip", -- [4]
					"/cast [combat] Shred", -- [5]
					"/cast [combat] Shred", -- [6]
					"/cast [combat] Shred", -- [7]
					"/cast [combat] Shred", -- [8]
					"/cast [combat] Ferocious Bite", -- [9]
					"/cast [combat] Rake", -- [10]
					"/cast [combat] Shred", -- [11]
					"/cast [combat] Shred", -- [12]
					"/cast [combat] Shred", -- [13]
					"/cast [combat] Shred", -- [14]
					"/cast [combat] Ferocious Bite", -- [15]
					"/cast [combat] Rake", -- [16]
					"/cast [combat] Shred", -- [17]
					"/cast [combat] Shred", -- [18]
					"/cast [combat] Rip", -- [19]
					"/cast [combat] Shred", -- [20]
					"/cast [combat] Shred", -- [21]
					"/cast [combat] Shred", -- [22]
					"/cast [combat] Rake", -- [23]
					"/cast [combat] Ferocious Bite", -- [24]
					"/cast [combat] Shred", -- [25]
					"/cast [combat] Shred", -- [26]
					"/cast [combat] Shred", -- [27]
					"/cast [combat] Shred", -- [28]
					"/cast [combat] Shred", -- [29]
					"/cast [combat] Ferocious Bite", -- [30]
					"/cast [combat] Rip", -- [31]
					"/cast [combat] Shred", -- [32]
					"/cast [combat] Tiger's Fury", -- [33]
					"/cast [combat] Feral Frenzy", -- [34]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/cast [noform:2] Cat Form", -- [1]
						"/cast [nostealth,nocombat] Prowl", -- [2]
					},
				}, -- [1]
			},
			["Author"] = "Ed",
			["SpecID"] = 103,
			["Icon"] = "",
			["ManualIntervention"] = false,
		},
	}, -- [11]
	{
		["SAM_HAVOC"] = {
			["Talents"] = "1331331",
			["Default"] = 1,
			["Author"] = "Cymiric",
			["SpecID"] = 577,
			["MacroVersions"] = {
				{
					"/cast [nochanneling] Demon's Bite", -- [1]
					"/cast [nochanneling] Dark Slash", -- [2]
					"/cast [nochanneling] Fel Barrage", -- [3]
					"/cast [nochanneling] Fel Eruption", -- [4]
					"/cast [nochanneling] 204157", -- [5]
					"/cast [nochanneling] 178740", -- [6]
					"/cast [nochanneling] 228477", -- [7]
					"/cast [nochanneling] 204596", -- [8]
					["PostMacro"] = {
					},
					["KeyPress"] = {
						"/cast [mod:shift,nochanneling] 178740", -- [1]
					},
					["StepFunction"] = "Sequential",
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["Combat"] = true,
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
		["SAM_VENG"] = {
			["Talents"] = "2213333",
			["Default"] = 1,
			["MacroVersions"] = {
				{
					"/cast 203782", -- [1]
					"/cast 203720", -- [2]
					"/cast 178740", -- [3]
					"/cast [@player] 204596", -- [4]
					"/cast [@player] 189110", -- [5]
					["KeyRelease"] = {
					},
					["StepFunction"] = "Sequential",
					["Combat"] = true,
					["PostMacro"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
						"/cast [mod:shift] 204021", -- [1]
						"/cast [mod:ctrl] Spirit Bomb", -- [2]
					},
				}, -- [1]
			},
			["Author"] = "Cymiric",
			["SpecID"] = 581,
			["ManualIntervention"] = false,
		},
	}, -- [12]
	[0] = {
	},
}
