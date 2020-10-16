
PlaterDB = {
	["profileKeys"] = {
		["Teldrasil - Sporeggar"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 367,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535473591,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 87,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 354,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1534625053,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 359,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, true)    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048199,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    self:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 138,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the top castbar inside the health bar\n    envTable.overlayCastBarTop = envTable.overlayCastBar or Plater:CreateBar (unitFrame.healthBar)\n    envTable.overlayCastBarTop:SetPoint ('topleft', 0, 2)\n    envTable.overlayCastBarTop:SetPoint ('topright', 0, 2)\n    envTable.overlayCastBarTop.height = 2\n    envTable.overlayCastBarTop.texture = \"Skyline\"\n    envTable.overlayCastBarTop.alpha = 0.73\n    \n    --creates the bottom castbar inside the health bar\n    envTable.overlayCastBarBottom = envTable.overlayCastBar or Plater:CreateBar (unitFrame.healthBar)\n    envTable.overlayCastBarBottom:SetPoint ('bottomleft', 0, -2)\n    envTable.overlayCastBarBottom:SetPoint ('bottomright', 0, -2)\n    envTable.overlayCastBarBottom.height = 2\n    envTable.overlayCastBarBottom.texture = \"Skyline\"\n    envTable.overlayCastBarBottom.alpha = 0.73\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 32\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.overlayCastBarTop:Show()\n    envTable.overlayCastBarBottom:Show()        \n    \n    envTable.glowEffect:Show()\n    \n    envTable.overlaySpark:Show()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1533948709,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlayCastBarTop.value = envTable._CastPercent\n    envTable.overlayCastBarBottom.value = envTable._CastPercent    \n    \n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 16, 0)\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color\n    Plater.SetNameplateColor (unitFrame, \"orange\")\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlayCastBarTop:Hide()\n    envTable.overlayCastBarBottom:Hide()    \n    envTable.overlaySpark:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 176,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1533663248,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 135,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535048441,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 151,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1534626968,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						260954, -- [1]
						257739, -- [2]
						257314, -- [3]
						266107, -- [4]
						272584, -- [5]
						244653, -- [6]
						257582, -- [7]
						262377, -- [8]
						257407, -- [9]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 149,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1535815768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 553,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1535417117,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    self:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
				}, -- [10]
				{
					["Enabled"] = true,
					["Revision"] = 74,
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1528748982,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
				}, -- [11]
			},
			["first_run2"] = true,
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Cast - Very Important"] = 2,
				["Explosion Affix M+"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 2,
				["Unit - Important"] = 5,
				["Cast - Big Alert"] = 5,
				["Unit Power"] = 1,
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.25",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = ".5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "1",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateMinScale"] = "0.8",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.075",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = ".2",
				["NamePlateHorizontalScale"] = "1.3999999761581",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "2.7000000476837",
			},
			["captured_spells"] = {
				[260857] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Valorcall Marksman",
					["npcID"] = 137064,
				},
				[197046] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257408] = {
					["type"] = "BUFF",
					["source"] = "Booshman-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278989] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265831] = {
					["source"] = "Phyrexien-ArgentDawn",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[210141] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[214613] = {
					["type"] = "BUFF",
					["source"] = "Silverback Thumpknuckle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130543,
				},
				[278736] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xifieq-TheVentureCo",
					["npcID"] = 0,
				},
				[272349] = {
					["source"] = "Azer'tor",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128553,
				},
				[271455] = {
					["source"] = "Commodore Calhoun",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124722,
				},
				[255366] = {
					["source"] = "Blood Troll Stalker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 134868,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246807] = {
					["type"] = "DEBUFF",
					["source"] = "Zeynaa-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280654] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199412] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260349] = {
					["source"] = "Ten'gor",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 130713,
				},
				[109128] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Huntmaster Theodore",
					["npcID"] = 132050,
				},
				[263665] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spirit of Fire",
					["npcID"] = 131577,
				},
				[226943] = {
					["type"] = "DEBUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268520] = {
					["type"] = "BUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257220] = {
					["source"] = "Reconstructed Terror",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 127253,
				},
				[262644] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Gryphon Rider",
					["npcID"] = 133439,
				},
				[51690] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250769] = {
					["type"] = "BUFF",
					["source"] = "Thieving Snapper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126331,
				},
				[264689] = {
					["type"] = "DEBUFF",
					["source"] = "Springhammer-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277592] = {
					["source"] = "Chaka the Infused",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137663,
				},
				[276187] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280404] = {
					["type"] = "DEBUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255625] = {
					["type"] = "BUFF",
					["source"] = "Jao-Ti the Thunderous",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128474,
				},
				[269674] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Branchlord Aldrus",
					["npcID"] = 126427,
				},
				[258883] = {
					["type"] = "DEBUFF",
					["source"] = "Trolltowiin-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6136] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drywhisker Surveyor",
					["npcID"] = 127049,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Astørath-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276191] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270698] = {
					["type"] = "DEBUFF",
					["source"] = "Sandfury Bandit",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133929,
				},
				[255754] = {
					["source"] = "Faithless Dealer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 135018,
				},
				[268910] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199736] = {
					["type"] = "BUFF",
					["source"] = "Lilledritten-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267250] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Veteran Sergeant Slayde",
					["npcID"] = 135770,
				},
				[268911] = {
					["type"] = "BUFF",
					["source"] = "Ixana-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lardfist-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[269678] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Branchlord Aldrus",
					["npcID"] = 126427,
				},
				[774] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270318] = {
					["source"] = "Gunner Erikson",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124647,
				},
				[2580] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lardfist-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[257161] = {
					["type"] = "BUFF",
					["source"] = "Faithless Stalker",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129647,
				},
				[269680] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Branchlord Aldrus",
					["npcID"] = 126427,
				},
				[260355] = {
					["type"] = "BUFF",
					["source"] = "Ten'gor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130713,
				},
				[281178] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256459] = {
					["type"] = "BUFF",
					["source"] = "Akunin-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274919] = {
					["type"] = "BUFF",
					["source"] = "Astørath-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280413] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Påhåret-Silvermoon",
					["npcID"] = 0,
				},
				[280286] = {
					["type"] = "DEBUFF",
					["source"] = "Zeynaa-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256460] = {
					["type"] = "BUFF",
					["source"] = "Bamzè-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270707] = {
					["type"] = "BUFF",
					["source"] = "Soul Goliath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137665,
				},
				[199804] = {
					["type"] = "DEBUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258186] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lumbering Leo",
					["npcID"] = 124159,
				},
				[208683] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270836] = {
					["type"] = "DEBUFF",
					["source"] = "Venomous Cobra",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138540,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Kasperin-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Lueur-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261764] = {
					["type"] = "BUFF",
					["source"] = "Bamzè-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257804] = {
					["source"] = "Ancient Jawbreaker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 125250,
				},
				[276204] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[181346] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Yogursa",
					["npcID"] = 142251,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276205] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257805] = {
					["type"] = "DEBUFF",
					["source"] = "Ancient Jawbreaker",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 125250,
				},
				[268924] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Arbalest",
					["npcID"] = 138103,
				},
				[262538] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Captain Nials",
					["npcID"] = 136270,
				},
				[12544] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Drywhisker Surveyor",
					["npcID"] = 127049,
				},
				[273781] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275570] = {
					["source"] = "Reanimated Monstrosity",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 131285,
				},
				[270588] = {
					["source"] = "Frenzied Thresher",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 125082,
				},
				[147367] = {
					["type"] = "BUFF",
					["source"] = "Phyrexien-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271866] = {
					["source"] = "Ancient Jawbreaker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 125250,
				},
				[276210] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256658] = {
					["source"] = "Reconstructed Terror",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 127253,
				},
				[259277] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132341,
				},
				[227723] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glarus-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[270591] = {
					["source"] = "Frenzied Thresher",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 125082,
				},
				[256467] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Burning Exile",
					["npcID"] = 131578,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Jimxrox-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270337] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250208] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Archelion Great Turtle",
					["npcID"] = 130918,
				},
				[256404] = {
					["source"] = "Bonebeak Vulture",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136664,
				},
				[209967] = {
					["type"] = "DEBUFF",
					["source"] = "Dire Basilisk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105419,
				},
				[112042] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[79881] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Highlands Laborer",
					["npcID"] = 136713,
				},
				[270594] = {
					["type"] = "DEBUFF",
					["source"] = "Withered Lashling",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138253,
				},
				[277365] = {
					["source"] = "Kao-Tien Subjugator",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136551,
				},
				[270339] = {
					["type"] = "DEBUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277366] = {
					["source"] = "Ku'shif the Cruel",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137773,
				},
				[263187] = {
					["type"] = "BUFF",
					["source"] = "Blood Crawg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128005,
				},
				[259919] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Wildhammer Flame-Binder",
					["npcID"] = 136684,
				},
				[7384] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17735] = {
					["type"] = "DEBUFF",
					["source"] = "Klathjuk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 1860,
				},
				[270598] = {
					["type"] = "BUFF",
					["source"] = "Savage Fathomjaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130916,
				},
				[13750] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[101568] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273794] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[546] = {
					["type"] = "BUFF",
					["source"] = "Schrowder-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Croutons-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "7th Legion Marine",
					["npcID"] = 135760,
				},
				[277373] = {
					["source"] = "Stormbound Conqueror",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136555,
				},
				[185763] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200646] = {
					["type"] = "DEBUFF",
					["source"] = "Uhrm-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259986] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Gryphon Rider",
					["npcID"] = 133439,
				},
				[261711] = {
					["source"] = "Krolusk Dunemite",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 133234,
				},
				[183081] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Circle Apprentice",
					["npcID"] = 136793,
				},
				[256874] = {
					["type"] = "DEBUFF",
					["source"] = "Crimson Evoker",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134076,
				},
				[268433] = {
					["type"] = "DEBUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256069] = {
					["source"] = "Sand Scuttler",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124567,
				},
				[256865] = {
					["source"] = "Crimson Evoker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 134076,
				},
				[270818] = {
					["source"] = "Soul Goliath",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137665,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257400] = {
					["source"] = "Gnarled Hulk",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 133118,
				},
				[15407] = {
					["type"] = "DEBUFF",
					["source"] = "Priestedy-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257254] = {
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 134078,
				},
				[270479] = {
					["source"] = "Venomous Cobra",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 138540,
				},
				[91797] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spineslobber",
					["npcID"] = 26125,
				},
				[257260] = {
					["type"] = "BUFF",
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134078,
				},
				[270722] = {
					["source"] = "Curse-bound Soul",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137671,
				},
				[268947] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[270804] = {
					["source"] = "Soul Goliath",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137665,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Aderynn-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263199] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Overseer Krix",
					["npcID"] = 132074,
				},
				[242551] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xifieq-TheVentureCo",
					["npcID"] = 0,
				},
				[83366] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Highland Thrasher",
					["npcID"] = 134167,
				},
				[192090] = {
					["type"] = "DEBUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118297] = {
					["type"] = "DEBUFF",
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61029,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Cursebearer-SteamwheedleCartel",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[121308] = {
					["type"] = "BUFF",
					["source"] = "Faithless Skycaller",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122746,
				},
				[188389] = {
					["type"] = "DEBUFF",
					["source"] = "Aderynn-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270785] = {
					["type"] = "BUFF",
					["source"] = "Soul Goliath",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137665,
				},
				[262307] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Priestess",
					["npcID"] = 138102,
				},
				[266012] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Gwyndra Wildhammer",
					["npcID"] = 126963,
				},
				[281007] = {
					["source"] = "Haunted Servitor",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137587,
				},
				[271488] = {
					["source"] = "Ashvane Taskmaster",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128540,
				},
				[253309] = {
					["type"] = "DEBUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24331] = {
					["type"] = "DEBUFF",
					["source"] = "Sickly Saurid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126689,
				},
				[279555] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262309] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Priest",
					["npcID"] = 138102,
				},
				[2649] = {
					["type"] = "DEBUFF",
					["source"] = "Stabbers",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132341,
				},
				[263604] = {
					["source"] = "Haunted Servitor",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137587,
				},
				[270343] = {
					["type"] = "DEBUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193753] = {
					["source"] = "Croutons-ArgentDawn",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[3252] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Rampaging Owlbeast",
					["npcID"] = 137838,
				},
				[96038] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Krazzle's Flying Machine",
					["npcID"] = 129615,
				},
				[259388] = {
					["type"] = "BUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79849] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 104091,
				},
				[256479] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Spirit of Fire",
					["npcID"] = 131577,
				},
				[261613] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256350] = {
					["type"] = "DEBUFF",
					["source"] = "Saurolisk Hatchling",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124642,
				},
				[250770] = {
					["type"] = "BUFF",
					["source"] = "Thieving Snapper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126331,
				},
				[208628] = {
					["type"] = "BUFF",
					["source"] = "Mefistofalen-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256920] = {
					["type"] = "DEBUFF",
					["source"] = "Sickly Saurid",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127000,
				},
				[280709] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268062] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276189] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273428] = {
					["type"] = "BUFF",
					["source"] = "Jyrauu-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[260249] = {
					["type"] = "BUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270017] = {
					["type"] = "DEBUFF",
					["source"] = "Ashvane Enforcer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124816,
				},
				[280583] = {
					["type"] = "DEBUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258908] = {
					["source"] = "Faithless Stalker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 129647,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Croutons-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256058] = {
					["source"] = "Redrock Screecher",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128547,
				},
				[272473] = {
					["source"] = "Fangcaller Xorreth",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136323,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259739] = {
					["source"] = "Charged Sentinel",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136550,
				},
				[45334] = {
					["type"] = "DEBUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188838] = {
					["type"] = "DEBUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280713] = {
					["type"] = "BUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279819] = {
					["type"] = "BUFF",
					["source"] = "Vallende-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268194] = {
					["type"] = "DEBUFF",
					["source"] = "Lookworst-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48168] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96955,
				},
				[256099] = {
					["source"] = "Zardrax the Empowerer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 127298,
				},
				[34914] = {
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[277904] = {
					["type"] = "BUFF",
					["source"] = "Kamkoom-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[96847] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 52812,
				},
				[45182] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223819] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267181] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Turret",
					["npcID"] = 135142,
				},
				[697] = {
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[271443] = {
					["source"] = "Shady Deckhand",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128617,
				},
				[256739] = {
					["type"] = "BUFF",
					["source"] = "Anchi-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265770] = {
					["source"] = "Unhinged Craven",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 135054,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Archille-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255909] = {
					["type"] = "DEBUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191587] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[269571] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267560] = {
					["type"] = "BUFF",
					["source"] = "Jyrauu-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15727] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vicious Black Bear",
					["npcID"] = 137835,
				},
				[265772] = {
					["source"] = "Unhinged Craven",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 135054,
				},
				[20707] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["type"] = "BUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154796] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xifieq-TheVentureCo",
					["npcID"] = 0,
				},
				[280653] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267434] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Veteran Sergeant Slayde",
					["npcID"] = 135770,
				},
				[192081] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276193] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8613] = {
					["source"] = "Luthër-ArgentDawn",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[266030] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208963] = {
					["type"] = "BUFF",
					["source"] = "Skyfury Totem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 105427,
				},
				[213708] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279828] = {
					["type"] = "BUFF",
					["source"] = "Priestess Lylliana",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143582,
				},
				[279956] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[263221] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Overseer Krix",
					["npcID"] = 132074,
				},
				[276124] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272348] = {
					["source"] = "Azer'tor",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128553,
				},
				[272420] = {
					["source"] = "Crawg Rider",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128267,
				},
				[276125] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280852] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260320] = {
					["source"] = "Tojek",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136381,
				},
				[213680] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236431] = {
					["type"] = "BUFF",
					["source"] = "Kasperin-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93622] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276211] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276127] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209746] = {
					["type"] = "BUFF",
					["source"] = "Ilchruthach-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272343] = {
					["source"] = "Azerite Elemental",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 135806,
				},
				[272423] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Knight of Arathor",
					["npcID"] = 137321,
				},
				[267441] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Veteran Sergeant Slayde",
					["npcID"] = 135770,
				},
				[259491] = {
					["type"] = "DEBUFF",
					["source"] = "Vijae-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Zeynaa-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276129] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269996] = {
					["source"] = "Ashvane Taskmaster",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128540,
				},
				[260322] = {
					["source"] = "Nol'ixwan",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 130741,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Schrowder-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279187] = {
					["type"] = "BUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[29722] = {
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[270320] = {
					["type"] = "BUFF",
					["source"] = "Redrock Laborer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135766,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Sevois-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272646] = {
					["source"] = "Crawg Rider",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128267,
				},
				[203538] = {
					["type"] = "BUFF",
					["source"] = "Kliklik-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Anchi-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["type"] = "DEBUFF",
					["source"] = "Zaguzhar-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271806] = {
					["source"] = "Gunner Erikson",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124647,
				},
				[403] = {
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[268567] = {
					["type"] = "BUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271451] = {
					["source"] = "Redrock Laborer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 125307,
				},
				[203539] = {
					["type"] = "BUFF",
					["source"] = "Kliklik-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257258] = {
					["type"] = "DEBUFF",
					["source"] = "Heartwood Soldier",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134078,
				},
				[271448] = {
					["source"] = "Ashvane Overseer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124667,
				},
				[247677] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280861] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Qerbom-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["type"] = "BUFF",
					["source"] = "Voldeith-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271449] = {
					["source"] = "Ashvane Overseer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124667,
				},
				[280862] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266171] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Cami Cogwizzle",
					["npcID"] = 135496,
				},
				[167898] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glarus-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[228260] = {
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[271457] = {
					["source"] = "Commodore Calhoun",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124722,
				},
				[87840] = {
					["type"] = "BUFF",
					["source"] = "Luthër-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["type"] = "DEBUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1943] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[126919] = {
					["source"] = "Nez'ara",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128951,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273455] = {
					["type"] = "BUFF",
					["source"] = "Lilledritten-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258945] = {
					["type"] = "DEBUFF",
					["source"] = "Faithless Aggressor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 123863,
				},
				[262983] = {
					["source"] = "Nez'ara",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128951,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rinnnash",
					["npcID"] = 17252,
				},
				[5215] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261732] = {
					["source"] = "Enraged Krolusk",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136335,
				},
				[255194] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128617,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Jercemia-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254843] = {
					["source"] = "Scaleclaw Saurolisk",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 126984,
				},
				[262343] = {
					["source"] = "Chaka the Infused",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 137663,
				},
				[91807] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Spineslobber",
					["npcID"] = 26125,
				},
				[260072] = {
					["type"] = "BUFF",
					["source"] = "Pa'kura Priest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131834,
				},
				[278874] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198688] = {
					["type"] = "DEBUFF",
					["source"] = "Akunin-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259753] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6770] = {
					["type"] = "DEBUFF",
					["source"] = "Akunin-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1330] = {
					["type"] = "DEBUFF",
					["source"] = "Snakha-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279827] = {
					["type"] = "BUFF",
					["source"] = "Father Timothy",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 143581,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Ferlog-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261886] = {
					["type"] = "DEBUFF",
					["source"] = "Scorpashi Venomtail",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 122153,
				},
				[271780] = {
					["source"] = "Ravenous Sandworm",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136653,
				},
				[262346] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Thundering Exile",
					["npcID"] = 137819,
				},
				[131493] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Frenziears-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[271782] = {
					["source"] = "Ravenous Sandworm",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 136653,
				},
				[255595] = {
					["type"] = "DEBUFF",
					["source"] = "Krolusk Sandhunter",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 135582,
				},
				[212061] = {
					["type"] = "BUFF",
					["source"] = "Sandfury Assassin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129276,
				},
				[255299] = {
					["type"] = "DEBUFF",
					["source"] = "Empowered Worshipper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 127224,
				},
				[263114] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Boulderfist Enforcer",
					["npcID"] = 132773,
				},
				[3408] = {
					["type"] = "BUFF",
					["source"] = "Omarengo-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236696] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["type"] = "BUFF",
					["source"] = "Omarengo-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xifieq-TheVentureCo",
					["npcID"] = 0,
				},
				[108211] = {
					["type"] = "BUFF",
					["source"] = "Omarengo-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248705] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124667,
				},
				[254901] = {
					["type"] = "BUFF",
					["source"] = "Loa-Gutter Impaler",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128371,
				},
				[280398] = {
					["type"] = "BUFF",
					["source"] = "Jimxrox-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73313] = {
					["type"] = "BUFF",
					["source"] = "Jimxrox-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276658] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[199969] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[6307] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Nalnip",
					["npcID"] = 416,
				},
				[261477] = {
					["type"] = "DEBUFF",
					["source"] = "Faithless Dervish",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129652,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275765] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262007] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Stromgarde Sorcerer",
					["npcID"] = 138101,
				},
				[273977] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[272572] = {
					["type"] = "BUFF",
					["source"] = "Archille-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275540] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113942] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Lardfist-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Soulite-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195627] = {
					["type"] = "BUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79833] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 101195,
				},
				[256053] = {
					["source"] = "Redrock Screecher",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128547,
				},
				[32216] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256111] = {
					["source"] = "Faithless Centurion",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 129774,
				},
				[262610] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Horde Raider",
					["npcID"] = 126806,
				},
				[262115] = {
					["type"] = "DEBUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199854] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270404] = {
					["type"] = "DEBUFF",
					["source"] = "Withered Lasher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 138252,
				},
				[270021] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Spirit of Fire",
					["npcID"] = 131577,
				},
				[116858] = {
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[258889] = {
					["source"] = "Faithless Skycaller",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 122746,
				},
				[210320] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Jágs-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[269000] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[270150] = {
					["source"] = "Feathered Viper",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 132410,
				},
				[261712] = {
					["source"] = "Saltspine Krolusk",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124016,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268518] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262997] = {
					["source"] = "Nez'ara",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128951,
				},
				[265169] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Archelion Great Turtle",
					["npcID"] = 130918,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280204] = {
					["type"] = "BUFF",
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262615] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Horde Raider",
					["npcID"] = 126806,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Ilethwe-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245389] = {
					["type"] = "DEBUFF",
					["source"] = "Hemsk-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183111] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 104091,
				},
				[271046] = {
					["type"] = "DEBUFF",
					["source"] = "Saltspine Krolusk",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124016,
				},
				[260062] = {
					["type"] = "BUFF",
					["source"] = "Subjugator Zheng",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 128472,
				},
				[269004] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[260855] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Gwyndra Wildhammer",
					["npcID"] = 126963,
				},
				[268436] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45181] = {
					["type"] = "DEBUFF",
					["source"] = "Dzikikittens-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273349] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270411] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[248712] = {
					["source"] = "Ashvane Overseer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124667,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Andromedea-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196782] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Cylg-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[273922] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 96954,
				},
				[260830] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Stromgarde Footman",
					["npcID"] = 138100,
				},
				[59052] = {
					["type"] = "BUFF",
					["source"] = "Flovi-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261488] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Northfold Knight",
					["npcID"] = 137881,
				},
				[255220] = {
					["source"] = "Zardrax Conduit",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 127255,
				},
				[262577] = {
					["source"] = "Primal Snapjaw",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 126723,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Timpslayer-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271077] = {
					["type"] = "DEBUFF",
					["source"] = "Brine Beetle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 124019,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Lilledritten-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23214] = {
					["type"] = "BUFF",
					["source"] = "Astørath-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257231] = {
					["source"] = "Blood Troll Stalker",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 134868,
				},
				[744] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Plains Creeper",
					["npcID"] = 132760,
				},
				[267172] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Siege Tower",
					["npcID"] = 135130,
				},
				[186406] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Glarus-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[269279] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Xifieq-TheVentureCo",
					["npcID"] = 0,
				},
				[8092] = {
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[266985] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255741] = {
					["source"] = "Faithless Gunner",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 134555,
				},
				[6673] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Lukat-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[82839] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Rumbling Exile",
					["npcID"] = 137820,
				},
				[155777] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Llythalin-ScarshieldLegion",
					["npcID"] = 0,
				},
				[205369] = {
					["type"] = "DEBUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263228] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Overseer Krix",
					["npcID"] = 132074,
				},
				[270674] = {
					["type"] = "BUFF",
					["source"] = "Alyssaria-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Anchi-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271441] = {
					["source"] = "Ashvane Prospector",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 124638,
				},
				[8004] = {
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[268776] = {
					["type"] = "BUFF",
					["source"] = "Amani Battle Bear",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130257,
				},
				[13445] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Highland Strider",
					["npcID"] = 132754,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268904] = {
					["type"] = "BUFF",
					["source"] = "Sikandar",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105771] = {
					["type"] = "DEBUFF",
					["source"] = "Legenð-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224125] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Asava-Moonglade",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12550] = {
					["type"] = "BUFF",
					["source"] = "Stonefin Rainbringer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 120801,
				},
				[256715] = {
					["source"] = "Blood Crawg",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128005,
				},
				[4962] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Plains Creeper",
					["npcID"] = 132760,
				},
				[84533] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Vengeful Ghost",
					["npcID"] = 138349,
				},
				[20822] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Drywhisker Surveyor",
					["npcID"] = 127049,
				},
				[271445] = {
					["source"] = "Redrock Laborer",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 128445,
				},
				[34827] = {
					["type"] = "BUFF",
					["source"] = "Bittertide Brinetail",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131674,
				},
				[178703] = {
					["type"] = "BUFF",
					["source"] = "Bittertide Spineclaw",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 131673,
				},
				[257410] = {
					["type"] = "BUFF",
					["source"] = "Scarletflash-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Droodsta-DefiasBrotherhood",
					["npcID"] = 0,
				},
				[264420] = {
					["type"] = "BUFF",
					["source"] = "Chagidien-TheVentureCo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277186] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136550,
				},
				[260344] = {
					["source"] = "Reanimated Monstrosity",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 131285,
				},
				[224127] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Spirit Wolf",
					["npcID"] = 100820,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["type"] = "DEBUFF",
					["source"] = "Allurö-Ravenholdt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[261864] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Branchlord Aldrus",
					["npcID"] = 126427,
				},
				[268893] = {
					["type"] = "BUFF",
					["source"] = "Mickep-EarthenRing",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6016] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Drywhisker Digger",
					["npcID"] = 127048,
				},
				[281413] = {
					["type"] = "BUFF",
					["source"] = "Anchi-DarkmoonFaire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Bafrogar-DefiasBrotherhood",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Ildaren-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262006] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Stromgarde Sorceress",
					["npcID"] = 138101,
				},
				[268128] = {
					["source"] = "Scharlotte-ScarshieldLegion",
					["event"] = "SPELL_CAST_START",
					["npcID"] = 0,
				},
				[16128] = {
					["type"] = "DEBUFF",
					["source"] = "Snarlfang Hyena",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 126643,
				},
				[258714] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Spirit of Fire",
					["npcID"] = 131577,
				},
				[267782] = {
					["event"] = "SPELL_CAST_START",
					["source"] = "Lieutenant Valen",
					["npcID"] = 131974,
				},
				[259833] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "DEBUFF",
					["source"] = "Danath Trollbane",
					["npcID"] = 136203,
				},
				[251836] = {
					["type"] = "BUFF",
					["source"] = "Croutons-ArgentDawn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["patch_version"] = 1,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
		},
	},
}
