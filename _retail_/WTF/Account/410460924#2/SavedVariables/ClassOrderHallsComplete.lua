
CLASSORDERHALLSCOMPLETE_SAVEDVARIABLES = {
	["currentCharacterFirst"] = true,
	["showCharacterTooltipMinimapButton"] = true,
	["alertClassHallUpgrades"] = true,
	["alertMissions"] = true,
	["orderCharactersAutomatically"] = true,
	["dockMinimapButton"] = true,
	["monitorColumn"] = {
		"missions", -- [1]
		"advancement", -- [2]
		"cooking-recipes", -- [3]
		"troop1", -- [4]
		"troop2", -- [5]
		"champion-armaments", -- [6]
		"bonus-roll", -- [7]
		"troop3", -- [8]
		"troop4", -- [9]
		"troop5", -- [10]
		"troop6", -- [11]
		"troop7", -- [12]
	},
	["ldbTextFormat"] = "missions-upgrades-orders",
	["characters"] = {
		{
			["orderResources"] = 4491,
			["weeklyResetTime"] = 1606287599,
			["missions"] = {
			},
			["troops"] = {
				{
					["limit"] = 3,
					["description"] = "When the forest is threatened, the trees themselves will come to life to defend their home.",
					["name"] = "Dreamgrove Treants",
					["count"] = 0,
					["icon"] = 1396694,
					["classSpec"] = 81,
				}, -- [1]
				{
					["limit"] = 2,
					["description"] = "Master shapeshifters, the Druids of the Claw invoke the power of the bear, taking the shape of the beast and utilizing its strength and resilience to ravage their enemies.",
					["name"] = "Druids of the Claw",
					["count"] = 0,
					["icon"] = 1396668,
					["classSpec"] = 82,
				}, -- [2]
			},
			["class"] = "DRUID",
			["orders"] = {
				{
					["troopCount"] = 0,
					["total"] = 3,
					["name"] = "Dreamgrove Treants",
					["ready"] = 3,
					["capacity"] = 3,
					["duration"] = 0,
					["nextSeconds"] = 0,
					["texture"] = 1396694,
				}, -- [1]
				{
					["troopCount"] = 0,
					["total"] = 2,
					["name"] = "Druids of the Claw",
					["ready"] = 2,
					["capacity"] = 2,
					["duration"] = 0,
					["nextSeconds"] = 0,
					["texture"] = 1396668,
				}, -- [2]
				{
					["total"] = 2,
					["name"] = "Artifact Research Notes",
					["ready"] = 2,
					["capacity"] = 2,
					["duration"] = 0,
					["nextSeconds"] = 0,
					["texture"] = 237446,
				}, -- [3]
				{
					["capacity"] = 24,
					["name"] = "Legion Cooking Recipes",
					["texture"] = 134939,
				}, -- [4]
			},
			["updateTime"] = 1606172013,
			["advancement"] = {
				["numTalents"] = 3,
				["newTalentTier"] = {
					{
						["isBeingResearched"] = false,
						["description"] = "Newly recruited Dreamgrove Treants become Daughters of Cenarius, increasing their chance of mission success by 5%.",
						["perkSpellID"] = 0,
						["researchDuration"] = 43200,
						["tier"] = 4,
						["selected"] = false,
						["icon"] = 136021,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 1000,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 351,
						["ability"] = {
							["temporary"] = false,
							["description"] = "",
							["id"] = 0,
							["name"] = "",
							["isEmptySlot"] = false,
							["counters"] = {
							},
							["isSpecialization"] = false,
							["icon"] = 0,
							["isTrait"] = false,
						},
						["talentAvailability"] = 0,
						["talentMaxRank"] = 1,
						["name"] = "Laughing Sisters",
						["timeRemaining"] = 0,
						["startTime"] = 0,
						["uiOrder"] = 1,
						["researchGoldCost"] = 0,
						["socketInfo"] = {
							["misc1"] = 0,
							["socketType"] = 0,
							["socketSubtype"] = 0,
							["misc0"] = 0,
						},
					}, -- [1]
					{
						["isBeingResearched"] = false,
						["description"] = "Newly recruited Druids of the Claw become Keepers of the Grove and gain:\r\n\r\n|TInterface\\ICONS\\ABILITY_DRUID_FLOURISH.BLP:20:20:0:0|t |CffffffffWild Growth|R\r\nIncreases success chance of missions with |C00b3ffffMinions|R by 15%.",
						["perkSpellID"] = 0,
						["researchDuration"] = 43200,
						["tier"] = 4,
						["selected"] = false,
						["icon"] = 132113,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 1000,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 352,
						["ability"] = {
							["temporary"] = false,
							["description"] = "",
							["id"] = 0,
							["name"] = "",
							["isEmptySlot"] = false,
							["counters"] = {
							},
							["isSpecialization"] = false,
							["icon"] = 0,
							["isTrait"] = false,
						},
						["talentAvailability"] = 0,
						["talentMaxRank"] = 1,
						["name"] = "Force of the Forest",
						["timeRemaining"] = 0,
						["startTime"] = 0,
						["uiOrder"] = 2,
						["researchGoldCost"] = 0,
						["socketInfo"] = {
							["misc1"] = 0,
							["socketType"] = 0,
							["socketSubtype"] = 0,
							["misc0"] = 0,
						},
					}, -- [2]
				},
			},
			["level"] = 45,
			["name"] = "Daliya-Sporeggar",
			["seals"] = {
				["sealingFateQuestsCompleted"] = 0,
			},
			["monitor"] = {
				[1396694] = true,
				[1396668] = true,
				[237446] = true,
				["advancement"] = true,
				[134939] = true,
				["missions"] = true,
			},
			["sealOfBrokenFate"] = 0,
			["order"] = 1,
			["realm"] = "Sporeggar",
		}, -- [1]
	},
	["lockMinimapButton"] = false,
	["version"] = 1.37,
	["largeMinimapButton"] = true,
	["ldbShowNextUpgradeCharacter"] = true,
	["monitorRows"] = 8,
	["alert"] = "current",
	["ldbShowNextOrder"] = true,
	["alertLegionCookingRecipes"] = true,
	["ldbSource"] = "current",
	["showClassHallReportMinimapButton"] = true,
	["dragPosition"] = {
		"TOPLEFT", -- [1]
		45, -- [2]
		-119.9999923706055, -- [3]
	},
	["alertTroops"] = true,
	["showCharacterRealms"] = true,
	["minimapButtonPosition"] = 176.3785798760859,
	["alertBonusRollToken"] = true,
	["ldbShowWhenNone"] = true,
	["ldbiShowCharacterTooltip"] = true,
	["alertChampionArmaments"] = true,
	["ldbShowNextMission"] = true,
	["ldbShowNextOrderCharacter"] = true,
	["alertDisableInInstances"] = true,
	["forgetDragPosition"] = true,
	["ldbShowNextMissionCharacter"] = true,
	["showMinimapButton"] = true,
	["ldbShowNextUpgrade"] = true,
	["ldbShowLabels"] = true,
	["alertBonusRollTokenDisableWhenMaxSeals"] = true,
	["ldbi"] = {
		["hide"] = true,
	},
}
