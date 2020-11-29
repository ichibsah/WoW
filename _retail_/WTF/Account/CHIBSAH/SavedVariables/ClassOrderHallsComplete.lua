
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
			["orderResources"] = 4779,
			["weeklyResetTime"] = 1606892399,
			["missions"] = {
			},
			["troops"] = {
			},
			["class"] = "HUNTER",
			["orders"] = {
			},
			["updateTime"] = 1606654811,
			["order"] = 1,
			["sealOfBrokenFate"] = 0,
			["name"] = "Krixus-Sporeggar",
			["monitor"] = {
				["missions"] = true,
				["advancement"] = true,
			},
			["seals"] = {
				["sealingFateQuestsCompleted"] = 0,
			},
			["advancement"] = {
				["numTalents"] = 2,
				["newTalentTier"] = {
					{
						["isBeingResearched"] = false,
						["description"] = "Increases the maximum number of Archers, Marksmen, Trackers and Pathfinders you can recruit by 1.",
						["perkSpellID"] = 0,
						["researchDuration"] = 21600,
						["tier"] = 3,
						["selected"] = false,
						["icon"] = 236200,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 500,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 372,
						["ability"] = {
							["temporary"] = false,
							["description"] = "Increases the maximum number of Archers, Marksmen, Trackers and Pathfinders you can recruit by 1.",
							["id"] = 585,
							["name"] = "Sturdy Tents",
							["isEmptySlot"] = false,
							["counters"] = {
							},
							["isSpecialization"] = false,
							["icon"] = 236200,
							["isTrait"] = false,
						},
						["talentAvailability"] = 0,
						["talentMaxRank"] = 1,
						["name"] = "Sturdy Tents",
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
						["description"] = "Allows you to place work orders for Champion armaments or equipment in exchange for Order Resources.",
						["perkSpellID"] = 0,
						["researchDuration"] = 21600,
						["tier"] = 3,
						["selected"] = false,
						["icon"] = 236204,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 500,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 378,
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
						["name"] = "Fletchery",
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
			["level"] = 50,
			["realm"] = "Sporeggar",
		}, -- [1]
		{
			["orderResources"] = 6081,
			["weeklyResetTime"] = 1606892399,
			["missions"] = {
				{
					["description"] = "The Soultakers are an organized trio of Helarjar vrykul, intent on plundering the tombs of their own kings. Stop them!",
					["cost"] = 100,
					["isZoneSupport"] = false,
					["followers"] = {
						"Loren Stormhoof", -- [1]
						"Hemet Nesingwary", -- [2]
						"Rexxar", -- [3]
					},
					["inProgress"] = true,
					["overmaxRewards"] = {
						{
							["itemID"] = 141028,
							["quantity"] = 1,
						}, -- [1]
					},
					["xp"] = 1000,
					["missionEndTime"] = 1532353619,
					["isMaxLevel"] = false,
					["missionID"] = 1345,
					["canStart"] = false,
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["name"] = "Soulstealing",
					["successChance"] = 147,
					["followerTypeID"] = 4,
					["isBuilding"] = false,
					["typeInlineTexture"] = "|T1451401:24:24:0:0:256:256:1:65:133:197|t",
					["isTutorialMission"] = false,
					["offeredGarrMissionTextureID"] = 0,
					["missionScalar"] = 0,
					["hasBonusEffect"] = true,
					["durationSeconds"] = 10800,
					["locTextureKit"] = "GarrMissionLocation-Stormheim",
					["rewards"] = {
						{
							["title"] = "Bonus Follower XP",
							["followerXP"] = 1000,
							["tooltip"] = "+1,000 XP",
							["icon"] = "Interface\\Icons\\XPBonus_Icon",
							["name"] = "+1,000 XP",
						}, -- [1]
					},
					["areaID"] = 7541,
					["requiredSuccessChance"] = 0,
					["iLevel"] = 760,
					["timeLeft"] = "0 sec",
					["level"] = 39,
					["rewardsList"] = {
						"|cffffffffBonus Follower XP|r", -- [1]
					},
					["type"] = "7.0 Class Hall - Generic Missions",
					["completed"] = false,
					["timeLeftSeconds"] = 0,
					["overmaxSucceeded"] = false,
					["basecost"] = 100,
					["mapPosY"] = 0,
					["numFollowers"] = 3,
					["costCurrencyTypesID"] = 1220,
					["requiredChampionCount"] = 1,
					["duration"] = "3 hr",
					["isComplete"] = true,
					["location"] = "Stormheim",
					["isRare"] = false,
					["mapPosX"] = 0,
					["lastKnownTimeLeftSeconds"] = 0,
				}, -- [1]
			},
			["troops"] = {
				{
					["limit"] = 4,
					["description"] = "The master Marksmen of the Unseen Path develop their skills so completely, that they are able to hit an enemy with little to no visibility.",
					["name"] = "Unseen Marksmen",
					["count"] = 4,
					["icon"] = 1401886,
					["classSpec"] = 86,
				}, -- [1]
			},
			["class"] = "HUNTER",
			["orders"] = {
				{
					["capacity"] = 4,
					["troopCount"] = 4,
					["name"] = "Unseen Marksmen",
					["texture"] = 1401886,
				}, -- [1]
				{
					["capacity"] = 1,
					["name"] = "Seal of Broken Fate",
					["texture"] = 133858,
				}, -- [2]
				{
					["capacity"] = 24,
					["name"] = "Legion Cooking Recipes",
					["texture"] = 134939,
				}, -- [3]
			},
			["updateTime"] = 1606654882,
			["order"] = 2,
			["sealOfBrokenFate"] = 0,
			["name"] = "Leleti-Sporeggar",
			["monitor"] = {
				[133858] = true,
				["missions"] = true,
				[134939] = true,
				[1401886] = true,
				["advancement"] = true,
			},
			["seals"] = {
				["bonusRollWorkOrderCompleted"] = false,
				["sealingFateQuestsCompleted"] = 0,
			},
			["level"] = 47,
			["advancement"] = {
				["numTalents"] = 6,
				["talentBeingResearched"] = {
					["isBeingResearched"] = false,
					["description"] = "Increase the number of Legendary items you can equip by 1.",
					["perkSpellID"] = 0,
					["researchDuration"] = 86400,
					["tier"] = 6,
					["selected"] = true,
					["icon"] = 538771,
					["researched"] = true,
					["type"] = 0,
					["researchCurrencyCosts"] = {
						{
							["currencyType"] = 1220,
							["currencyQuantity"] = 5000,
						}, -- [1]
					},
					["talentRank"] = 1,
					["id"] = 379,
					["socketInfo"] = {
						["misc1"] = 0,
						["socketType"] = 0,
						["socketSubtype"] = 0,
						["misc0"] = 0,
					},
					["talentAvailability"] = 7,
					["talentMaxRank"] = 1,
					["name"] = "Legends of the Wild",
					["startTime"] = 0,
					["timeRemaining"] = 0,
					["uiOrder"] = 1,
					["researchGoldCost"] = 0,
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
				},
			},
			["realm"] = "Sporeggar",
		}, -- [2]
		{
			["orderResources"] = 17859,
			["weeklyResetTime"] = 1606287599,
			["missions"] = {
			},
			["troops"] = {
				{
					["limit"] = 1,
					["description"] = "Calling upon long forgotten energies of conflicts from ages past, this guardian provides a link to the brutal side of nature and the cycle of life and death that rules all creation.",
					["name"] = "Ancient of War",
					["count"] = 0,
					["icon"] = 1452563,
					["classSpec"] = 96,
				}, -- [1]
				{
					["limit"] = 3,
					["description"] = "When the forest is threatened, the trees themselves will come to life to defend their home.",
					["name"] = "Dreamgrove Treants",
					["count"] = 3,
					["icon"] = 1396694,
					["classSpec"] = 81,
				}, -- [2]
				{
					["limit"] = 2,
					["description"] = "Half-elf and half-stag in appearance, with a single clawed hand woven like tree branches, the Keepers of the Grove descend from Cenarius himself, and wield immense power over nature.",
					["name"] = "Keepers of the Grove",
					["count"] = 2,
					["icon"] = 1396684,
					["classSpec"] = 82,
				}, -- [3]
				{
					["limit"] = 2,
					["description"] = "The Krokul have evaded extinction and endured Argus' infernal landscape. They are survivors.",
					["name"] = "Krokul Ridgestalker",
					["count"] = 1,
					["icon"] = 1712229,
					["classSpec"] = 160,
				}, -- [4]
				{
					["limit"] = 2,
					["description"] = "The Broken of Mac'Aree were spared the Fel, only to succumb to the Void. A few Void-Touched have had their minds unclouded, but they remain inextricably bonded to the Shadow.",
					["name"] = "Void-Purged Krokul",
					["count"] = 0,
					["icon"] = 1712228,
					["classSpec"] = 161,
				}, -- [5]
				{
					["limit"] = 2,
					["description"] = "The Lightforged are implacable soldiers in an unwinnable war. Bathed in the Light and armed with holy fire, they effortlessly carve through scores of lesser demons.",
					["name"] = "Lightforged Bulwark",
					["count"] = 0,
					["icon"] = 1694048,
					["classSpec"] = 162,
				}, -- [6]
			},
			["class"] = "DRUID",
			["orders"] = {
				{
					["capacity"] = 3,
					["troopCount"] = 3,
					["name"] = "Dreamgrove Treants",
					["texture"] = 1396694,
				}, -- [1]
				{
					["troopCount"] = 0,
					["troopSummonItemCount"] = 3,
					["name"] = "Lightforged Bulwark",
					["capacity"] = 2,
					["texture"] = 1694048,
				}, -- [2]
				{
					["troopCount"] = 1,
					["troopSummonItemCount"] = 1,
					["name"] = "Krokul Ridgestalker",
					["capacity"] = 2,
					["texture"] = 1712229,
				}, -- [3]
				{
					["capacity"] = 2,
					["troopCount"] = 2,
					["name"] = "Keepers of the Grove",
					["texture"] = 1396684,
				}, -- [4]
				{
					["troopCount"] = 0,
					["troopSummonItemCount"] = 0,
					["name"] = "Void-Purged Krokul",
					["capacity"] = 2,
					["texture"] = 1712228,
				}, -- [5]
				{
					["capacity"] = 1,
					["troopCount"] = 0,
					["name"] = "Ancient of War",
					["texture"] = 1452563,
				}, -- [6]
				{
					["total"] = 24,
					["name"] = "Lean Shank Recipes",
					["texture"] = 134939,
					["capacity"] = 24,
					["duration"] = 0,
					["nextSeconds"] = 0,
					["ready"] = 24,
				}, -- [7]
			},
			["updateTime"] = 1606215648,
			["level"] = 52,
			["advancement"] = {
				["numTalents"] = 7,
			},
			["name"] = "Mengsk-Sporeggar",
			["seals"] = {
				["bonusRollWorkOrderCompleted"] = false,
				["sealingFateQuestsCompleted"] = 0,
			},
			["monitor"] = {
				[1452563] = true,
				[1712229] = true,
				["missions"] = true,
				[1396694] = true,
				[134939] = true,
				[1694048] = true,
				["advancement"] = true,
				[1712228] = true,
				[1396684] = true,
			},
			["sealOfBrokenFate"] = 0,
			["order"] = 3,
			["realm"] = "Sporeggar",
		}, -- [3]
		{
			["orderResources"] = 1278,
			["weeklyResetTime"] = 1606892399,
			["missions"] = {
			},
			["troops"] = {
			},
			["class"] = "DRUID",
			["orders"] = {
			},
			["updateTime"] = 1606654601,
			["level"] = 50,
			["advancement"] = {
				["newTalentTier"] = {
					{
						["isBeingResearched"] = false,
						["description"] = "Grants access to two plots of rich soil, allowing you to grow and harvest plants that provide helpful items once every 3 days to use on the Broken Isles.",
						["perkSpellID"] = 0,
						["researchDuration"] = 14400,
						["tier"] = 2,
						["selected"] = false,
						["icon"] = 612099,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 100,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 354,
						["socketInfo"] = {
							["misc1"] = 0,
							["socketType"] = 0,
							["socketSubtype"] = 0,
							["misc0"] = 0,
						},
						["talentAvailability"] = 0,
						["talentMaxRank"] = 1,
						["name"] = "Evergreen",
						["startTime"] = 0,
						["timeRemaining"] = 0,
						["uiOrder"] = 1,
						["researchGoldCost"] = 0,
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
					}, -- [1]
					{
						["isBeingResearched"] = false,
						["description"] = "Enables the Travel Form ability for all missions, reducing mission duration by 20%.",
						["perkSpellID"] = 0,
						["researchDuration"] = 14400,
						["tier"] = 2,
						["selected"] = false,
						["icon"] = 132144,
						["researched"] = false,
						["type"] = 0,
						["researchCurrencyCosts"] = {
							{
								["currencyType"] = 1220,
								["currencyQuantity"] = 100,
							}, -- [1]
						},
						["talentRank"] = 0,
						["id"] = 349,
						["socketInfo"] = {
							["misc1"] = 0,
							["socketType"] = 0,
							["socketSubtype"] = 0,
							["misc0"] = 0,
						},
						["talentAvailability"] = 0,
						["talentMaxRank"] = 1,
						["name"] = "Travel Form",
						["startTime"] = 0,
						["timeRemaining"] = 0,
						["uiOrder"] = 2,
						["researchGoldCost"] = 0,
						["ability"] = {
							["temporary"] = false,
							["description"] = "Reduces mission duration of all missions by 20%.",
							["id"] = 592,
							["name"] = "Travel Form",
							["isEmptySlot"] = false,
							["counters"] = {
							},
							["isSpecialization"] = false,
							["icon"] = 132144,
							["isTrait"] = false,
						},
					}, -- [2]
				},
				["numTalents"] = 1,
			},
			["name"] = "Teldrasil-Sporeggar",
			["seals"] = {
				["sealingFateQuestsCompleted"] = 0,
			},
			["monitor"] = {
				["advancement"] = true,
				["missions"] = true,
			},
			["sealOfBrokenFate"] = 0,
			["order"] = 4,
			["realm"] = "Sporeggar",
		}, -- [4]
		{
			["orderResources"] = 1190,
			["weeklyResetTime"] = 1606892399,
			["missions"] = {
				{
					["description"] = "The Highmountain tauren have called for reinforcements to protect Thunder Totem from drogbar invaders. We should bolster their borders.",
					["cost"] = 100,
					["isZoneSupport"] = false,
					["followers"] = {
						"Calia Menethil", -- [1]
						"Group of Acolytes", -- [2]
						"Group of Acolytes", -- [3]
					},
					["inProgress"] = true,
					["overmaxRewards"] = {
						{
							["itemID"] = 143786,
							["quantity"] = 1,
						}, -- [1]
					},
					["xp"] = 200,
					["missionEndTime"] = 1506602512,
					["isMaxLevel"] = false,
					["missionID"] = 1052,
					["canStart"] = false,
					["typeAtlas"] = "ClassHall-CombatIcon-Desaturated",
					["lastKnownTimeLeftSeconds"] = 0,
					["successChance"] = 117,
					["followerTypeID"] = 4,
					["rewardsList"] = {
						"|T894556:20:20:-2:0|t|cffffffffPlayer Experience|r", -- [1]
					},
					["typeInlineTexture"] = "|T1451401:24:24:0:0:256:256:1:65:133:197|t",
					["costCurrencyTypesID"] = 1220,
					["offeredGarrMissionTextureID"] = 0,
					["isBuilding"] = false,
					["isTutorialMission"] = false,
					["durationSeconds"] = 7200,
					["locTextureKit"] = "GarrMissionLocation-Highmountain",
					["missionScalar"] = 0,
					["hasBonusEffect"] = false,
					["duration"] = "2 hr",
					["requiredChampionCount"] = 1,
					["timeLeft"] = "0 sec",
					["iLevel"] = 760,
					["mapPosY"] = 0,
					["type"] = "7.0 Class Hall - Generic Missions",
					["completed"] = false,
					["timeLeftSeconds"] = 0,
					["overmaxSucceeded"] = false,
					["basecost"] = 100,
					["level"] = 35,
					["numFollowers"] = 3,
					["requiredSuccessChance"] = 0,
					["areaID"] = 7503,
					["rewards"] = {
						{
							["itemID"] = 140584,
							["quantity"] = 1,
						}, -- [1]
					},
					["isComplete"] = true,
					["location"] = "Highmountain",
					["isRare"] = false,
					["mapPosX"] = 0,
					["name"] = "Border Reinforcements",
				}, -- [1]
			},
			["troops"] = {
				{
					["limit"] = 3,
					["description"] = "Often just beginning on their spiritual path, Acolytes of the Conclave feel a deep desire to learn, and enthusiastically embrace tutelage and tasks.",
					["name"] = "Group of Acolytes",
					["count"] = 3,
					["icon"] = 1086381,
					["classSpec"] = 91,
				}, -- [1]
			},
			["class"] = "PRIEST",
			["orders"] = {
				{
					["capacity"] = 3,
					["troopCount"] = 3,
					["name"] = "Group of Acolytes",
					["texture"] = 1086381,
				}, -- [1]
			},
			["updateTime"] = 1606655145,
			["level"] = 42,
			["advancement"] = {
				["talentBeingResearched"] = {
					["isBeingResearched"] = false,
					["description"] = "Increases the chance for quest rewards to get a rare or epic Bonus Upgrade from non-repeatable quests.",
					["perkSpellID"] = 219866,
					["researchDuration"] = 7200,
					["tier"] = 1,
					["selected"] = true,
					["icon"] = 135976,
					["researched"] = true,
					["type"] = 0,
					["researchCurrencyCosts"] = {
						{
							["currencyType"] = 1220,
							["currencyQuantity"] = 50,
						}, -- [1]
					},
					["talentRank"] = 1,
					["id"] = 446,
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
					["talentAvailability"] = 7,
					["talentMaxRank"] = 1,
					["name"] = "Divine Fate",
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
				},
				["numTalents"] = 1,
			},
			["name"] = "Yesu-Sporeggar",
			["seals"] = {
			},
			["monitor"] = {
				["advancement"] = true,
				[1086381] = true,
				["missions"] = true,
			},
			["sealOfBrokenFate"] = 0,
			["order"] = 5,
			["realm"] = "Sporeggar",
		}, -- [5]
	},
	["lockMinimapButton"] = false,
	["version"] = 1.37,
	["largeMinimapButton"] = true,
	["ldbShowNextUpgradeCharacter"] = true,
	["monitorRows"] = 8,
	["ldbi"] = {
		["hide"] = true,
	},
	["alertBonusRollTokenDisableWhenMaxSeals"] = true,
	["alertLegionCookingRecipes"] = true,
	["ldbSource"] = "current",
	["showClassHallReportMinimapButton"] = true,
	["dragPosition"] = {
		"TOPLEFT", -- [1]
		45, -- [2]
		-119.9999923706055, -- [3]
	},
	["alertTroops"] = true,
	["alertDisableInInstances"] = true,
	["ldbShowNextUpgrade"] = true,
	["showMinimapButton"] = true,
	["ldbShowWhenNone"] = true,
	["ldbShowNextMission"] = true,
	["alertChampionArmaments"] = true,
	["ldbiShowCharacterTooltip"] = true,
	["ldbShowNextOrderCharacter"] = true,
	["ldbShowLabels"] = true,
	["forgetDragPosition"] = true,
	["ldbShowNextMissionCharacter"] = true,
	["alertBonusRollToken"] = true,
	["minimapButtonPosition"] = 237.2,
	["showCharacterRealms"] = true,
	["alert"] = "current",
	["ldbShowNextOrder"] = true,
}
