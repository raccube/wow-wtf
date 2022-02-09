
PlaterDB = {
	["profileKeys"] = {
		["Sonyeo - Magtheridon"] = "Default",
		["Shibbun - Magtheridon"] = "Default",
		["Moltenheim - Magtheridon"] = "Default",
		["Jiu - Magtheridon"] = "MyNewProfile",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\n    envTable.NameplateColor = scriptTable.config.nameplateColor\n    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\n    \n    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\n    \n    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\n    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\n    \n    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\n    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\n    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n--[=[\n\n154564 - debug\n\nUsing spellIDs for multi-language support\n\n164362 - smily morsel - plaguefall\n168882 - fleeting manifestation - sanguine depths\n170234 - oppressive banner - theater of pain\n168988 - overgrowth - Mists of Tirna Scithe\n170452 - essesnce orb - torghast\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604599472,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 355,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (envTable.dotAnimation) then\n        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    end\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    unitFrame.UnitImportantSkullTexture:Show()\nend\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Nameplate Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "nameplateSizeOffset",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 5,
							["Key"] = "option10",
							["Value"] = "Skull Texture",
							["Name"] = "Skull Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "skullColor",
							["Value"] = {
								1, -- [1]
								0.4627450980392157, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Skull Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "",
							["Min"] = 0,
							["Name"] = "Alpha",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "skullAlpha",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 2,
							["Desc"] = "",
							["Min"] = 0.4,
							["Key"] = "skullScale",
							["Value"] = 0.6,
							["Name"] = "Scale",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [13]
					},
					["version"] = -1,
					["Name"] = "Unit - Important [Plater]",
					["NpcNames"] = {
						"164362", -- [1]
						"168882", -- [2]
						"168988", -- [3]
						"170234", -- [4]
						"165905", -- [5]
						"170452", -- [6]
					},
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1605214963,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 607,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Add the buff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\n    \nend\n\n\n\n\n",
					["SpellIds"] = {
						323149, -- [1]
						324392, -- [2]
						340544, -- [3]
						342189, -- [4]
						333227, -- [5]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Glow Enabled",
							["Value"] = false,
							["Key"] = "glowEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Glow Color",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "glowColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Name"] = "Dots Enabled",
							["Value"] = true,
							["Key"] = "dotsEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.roleIcon = unitFrame:CreateTexture(nil, \"overlay\")\n        unitFrame.roleIcon:SetPoint(\"left\", unitFrame.healthBar, \"left\", 2, 0)\n        unitFrame.targetName = unitFrame:CreateFontString(nil, \"overlay\", \"GameFontNormal\")\n        unitFrame.targetName:SetPoint(\"left\", unitFrame.roleIcon, \"right\", 2, 0)\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n        \n        if scriptTable.config.switchTargetName then\n            local plateFrame = unitFrame.PlateFrame\n            \n            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\n            \n            if (target and target ~= \"\") then\n                local _, class = UnitClass(unitFrame.namePlateUnitToken .. \"target\")\n                if (class) then\n                    target = DetailsFramework:AddClassColorToText(target, class)\n                end\n                \n                local role = UnitGroupRolesAssigned(unitFrame.namePlateUnitToken .. \"target\")\n                if (role and role ~= \"NONE\") then\n                    target = DetailsFramework:AddRoleIconToText(target, role)\n                end\n                \n                plateFrame.namePlateUnitName = target\n                Plater.UpdateUnitName(plateFrame)\n            end\n        end\n        \n        if scriptTable.config.useTargetingColor then\n            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\n            if targeted then\n                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\n            else\n                Plater.RefreshNameplateColor(unitFrame)\n            end\n        end\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n        unitFrame.roleIcon:Hide()\n        unitFrame.targetName:Hide()\n    end\nend\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1611844883,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 186,
					["semver"] = "",
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Time to die Spiteful affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Time to Die",
							["Name"] = "Time to Die",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Key"] = "bgWidth",
							["Value"] = 27,
							["Name"] = "Width",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "bgColor",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Background Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Key"] = "textSize",
							["Value"] = 8,
							["Name"] = "Text Size",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "textColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Text Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 7",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option11",
							["Value"] = "Targeting",
							["Name"] = "Targeting",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Name"] = "Show Target instead of Name",
							["Value"] = true,
							["Key"] = "switchTargetName",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Name"] = "Change Color if targeting You",
							["Value"] = true,
							["Key"] = "useTargetingColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 1,
							["Name"] = "Color if targeting You",
							["Value"] = {
								0.07058823529411765, -- [1]
								0.6196078431372549, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "targetingColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 6,
							["Key"] = "option11",
							["Value"] = 0,
							["Name"] = "Option 11",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [11]
					},
					["version"] = -1,
					["Name"] = "M+ Spiteful",
					["NpcNames"] = {
						"174773", -- [1]
					},
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604674264,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
					["Enabled"] = true,
					["Revision"] = 695,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["SpellIds"] = {
						321247, -- [1]
						334522, -- [2]
						320232, -- [3]
						319962, -- [4]
						325879, -- [5]
						324427, -- [6]
						322999, -- [7]
						325360, -- [8]
						322903, -- [9]
						324103, -- [10]
						333294, -- [11]
						333540, -- [12]
						319521, -- [13]
						326021, -- [14]
						326450, -- [15]
						322711, -- [16]
						329104, -- [17]
						295000, -- [18]
						242391, -- [19]
						320197, -- [20]
						329608, -- [21]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a big animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Flash:",
							["Name"] = "Flash",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Name"] = "Flash Duration",
							["Value"] = 0.8,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [6]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 5,
							["Name"] = "Shake",
							["Value"] = "Shake:",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 0.5,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "How strong is the shake.",
							["Min"] = 1,
							["Name"] = "Shake Amplitude",
							["Value"] = 5,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "option14",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								0.5647058823529412, -- [1]
								0.5647058823529412, -- [2]
								0.5647058823529412, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dots around the nameplate",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "Adjust the width of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [16]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Adjust the height of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Name"] = "Dot Y Offset",
							["Value"] = 3,
							["Key"] = "yOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [17]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [18]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [19]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [22]
						{
							["Type"] = 6,
							["Name"] = "blank",
							["Value"] = 0,
							["Key"] = "option18",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [23]
						{
							["Type"] = 5,
							["Key"] = "option19",
							["Value"] = "Cast Bar",
							["Name"] = "Option 19",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [24]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Use Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Use cast bar color.",
						}, -- [25]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								0.4117647058823529, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Cast bar color.",
						}, -- [26]
					},
					["version"] = -1,
					["Name"] = "Cast - Very Important [Plater]",
					["NpcNames"] = {
					},
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0\n    \n\nend\n\n\n",
					["Time"] = 1604698647,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 462,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\nend\n\n\n\n\n\n\n",
					["SpellIds"] = {
						240446, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the cast bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Key"] = "arrowWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Name"] = "Arrow Height",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowHeight",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "xOffset",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["NpcNames"] = {
					},
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1604454032,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 351,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Desc"] = "Add the debuff name in the trigger box.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\nend\n\n\n",
					["SpellIds"] = {
						337220, -- [1]
						337253, -- [2]
						337251, -- [3]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.403921568627451, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dots Color",
							["Value"] = {
								1, -- [1]
								0.3215686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["version"] = -1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Time"] = 1604617977,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_red",
					["Enabled"] = true,
					["Revision"] = 513,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Used on casts that make the mob explode or transform if the cast passes.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["SpellIds"] = {
						332329, -- [1]
						320103, -- [2]
						321406, -- [3]
						335817, -- [4]
						321061, -- [5]
						320141, -- [6]
						326171, -- [7]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Option 1",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Name"] = "Option 3",
							["Value"] = 0,
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the health bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 3,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Health Bar Height Mod",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Health Bar Color",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "healthBarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the health bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 7",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Name"] = "Arrow:",
							["Value"] = "Arrow:",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Name"] = "Show Arrow",
							["Value"] = true,
							["Key"] = "showArrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0.5,
							["Key"] = "arrowAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Alpha",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Name"] = "Arrow Width",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowWidth",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Fraction"] = false,
							["Value"] = 8,
							["Key"] = "arrowHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Arrow Height",
						}, -- [11]
						{
							["Type"] = 6,
							["Name"] = "Option 13",
							["Value"] = 0,
							["Key"] = "option13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Name"] = "Dot Animation:",
							["Value"] = "Dot Animation:",
							["Key"] = "option12",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.615686274509804, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Name"] = "Dot X Offset",
							["Value"] = 4,
							["Key"] = "xOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Dot Y Offset",
						}, -- [16]
					},
					["version"] = -1,
					["Name"] = "Cast - Ultra Important [P]",
					["NpcNames"] = {
					},
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604696442,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_orange",
					["Enabled"] = true,
					["Revision"] = 970,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						338353, -- [1]
						334748, -- [2]
						334749, -- [3]
						320784, -- [4]
						341352, -- [5]
						341520, -- [6]
						341522, -- [7]
						336005, -- [8]
						339777, -- [9]
						331933, -- [10]
						326617, -- [11]
						324914, -- [12]
						324776, -- [13]
						326046, -- [14]
						340634, -- [15]
						319070, -- [16]
						328295, -- [17]
						317936, -- [18]
						327413, -- [19]
						319654, -- [20]
						323821, -- [21]
						320772, -- [22]
						324293, -- [23]
						330562, -- [24]
						330868, -- [25]
						341902, -- [26]
						342139, -- [27]
						342675, -- [28]
						323190, -- [29]
						332836, -- [30]
						327648, -- [31]
						328217, -- [32]
						322938, -- [33]
						340544, -- [34]
						325876, -- [35]
						325700, -- [36]
						323552, -- [37]
						332666, -- [38]
						332612, -- [39]
						332706, -- [40]
						340026, -- [41]
						294171, -- [42]
						292910, -- [43]
						294165, -- [44]
						338871, -- [45]
						330813, -- [46]
						335694, -- [47]
						327461, -- [48]
						329787, -- [49]
						304946, -- [50]
						15245, -- [51]
						276754, -- [52]
						304831, -- [53]
						277036, -- [54]
						320657, -- [55]
						294362, -- [56]
						270248, -- [57]
						292926, -- [58]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Name"] = "Cast Bar Color Enabled",
							["Value"] = true,
							["Key"] = "useCastbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Name"] = "Cast Bar Color",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "castbarColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Line",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Fraction"] = true,
							["Value"] = 0.4,
							["Key"] = "flashDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Flash Duration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Fraction"] = false,
							["Value"] = 5,
							["Key"] = "castBarHeight",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Cast Bar Height Mod",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.2,
							["Key"] = "shakeDuration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Shake Duration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "How strong is the shake.",
							["Min"] = 2,
							["Name"] = "Shake Amplitude",
							["Value"] = 8,
							["Key"] = "shakeAmplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Name"] = "Shake Frequency",
							["Value"] = 40,
							["Key"] = "shakeFrequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Big Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1604617585,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Enabled"] = true,
					["Revision"] = 595,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["SpellIds"] = {
						320170, -- [1]
						320171, -- [2]
						320462, -- [3]
						330712, -- [4]
						332170, -- [5]
						333875, -- [6]
						326836, -- [7]
						342135, -- [8]
						333861, -- [9]
						341969, -- [10]
						317963, -- [11]
						327481, -- [12]
						328331, -- [13]
						322614, -- [14]
						325701, -- [15]
						326438, -- [16]
						323538, -- [17]
						321764, -- [18]
						296523, -- [19]
						330755, -- [20]
						295929, -- [21]
						296019, -- [22]
						335685, -- [23]
						170751, -- [24]
						342207, -- [25]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a small animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "Option 2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.6,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [6]
					},
					["version"] = -1,
					["Name"] = "Cast - Small Alert [Plater]",
					["NpcNames"] = {
					},
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Time"] = 1604696441,
					["url"] = "",
					["Icon"] = "Interface\\Worldmap\\GlowSkull_64Grey",
					["Enabled"] = false,
					["Revision"] = 63,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Auto set skull marker",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Auto set a raid target Skull on the unit.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "onlyInCombat",
							["Value"] = false,
							["Name"] = "Only in Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Set the mark only if the unit is in combat.",
						}, -- [3]
					},
					["version"] = -1,
					["Name"] = "Auto Set Skull",
					["NpcNames"] = {
						"163520", -- [1]
						"163618", -- [2]
						"164506", -- [3]
					},
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n--[=[\n\n154564 - debug\n\n168098 - empowered coldheart agent\n156212 - coldheart agent\n\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --check if can change the nameplate color\n    if (scriptTable.config.changeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604607993,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 406,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\n    \nend\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Change Nameplate Color",
							["Value"] = true,
							["Key"] = "changeNameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Name"] = "Nameplate Color",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.5254901960784314, -- [3]
								1, -- [4]
							},
							["Key"] = "nameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Nameplate Size Offset",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Name"] = "Dot Color",
							["Value"] = {
								1, -- [1]
								0.7137254901960784, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "dotsColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Main Target [P]",
					["NpcNames"] = {
						"156212", -- [1]
						"168098", -- [2]
					},
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        --if not envTable.blinkTexture then\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        --end\n        \n        envTable.glowEffect = envTable.glowEffect or self.overlay or Plater.CreateIconGlow (self)\n        --envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1611856720,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 369,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Key"] = "option17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Blink Enabled",
							["Value"] = true,
							["Key"] = "blinkEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Name"] = "Glow Enabled",
							["Value"] = true,
							["Key"] = "glowEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Name"] = "Change NamePlate Color",
							["Value"] = true,
							["Key"] = "changeNameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Name"] = "Timeleft to Blink",
							["Value"] = 3,
							["Key"] = "timeleftToBlink",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Name"] = "Blink Speed",
							["Value"] = 1,
							["Key"] = "blinkSpeed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Name"] = "Blink Max Alpha",
							["Value"] = 0.6,
							["Key"] = "blinkMaxAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [9]
						{
							["Type"] = 1,
							["Name"] = "Blink Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "blinkColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Name"] = "Nameplate Color",
							["Value"] = {
								0.2862745098039216, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Name"] = "Timer Color Enabled",
							["Value"] = true,
							["Key"] = "timerColorEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 8,
							["Key"] = "timeLeftWarning",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Time Left Warning",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 3,
							["Key"] = "timeLeftCritical",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Time Left Critical",
						}, -- [15]
						{
							["Type"] = 1,
							["Name"] = "Warning Color",
							["Value"] = {
								1, -- [1]
								0.8705882352941177, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "warningColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Name"] = "Critical Color",
							["Value"] = {
								1, -- [1]
								0.07450980392156863, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "criticalColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["version"] = -1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["NpcNames"] = {
					},
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.npcInfo = {\n        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\n        \n        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\n        \n        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\n        \n        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\n        \n        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\n        \n        \n        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n    }\n    \n    --set the castbar config\n    local config = {\n        iconTexture = \"\",\n        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\n        iconAlpha = 1,\n        iconSize = 14,\n        \n        text = \"Boom!\",\n        textSize = 9,\n        \n        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\n        color = \"silver\",\n        \n        isChanneling = false,\n        canInterrupt = false,\n        \n        height = 2,\n        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\n        \n        spellNameAnchor = {side = 3, x = 0, y = -2},\n        timerAnchor = {side = 5, x = 0, y = -2},\n    }    \n    \n    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\n        --show the cast bar\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                if (npcInfo.remaining) then\n                    local timeLeft = barObject.timer + barObject.start - GetTime()\n                    if (timeLeft > npcInfo.remaining) then\n                        return\n                    end\n                end\n                \n                config.text = npcInfo.name\n                \n                if (npcInfo.spellIcon) then\n                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\n                    config.iconTexture = iconTexture\n                else\n                    config.iconTexture = \"\"\n                end\n                \n                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\n            end\n        else\n            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \n        end\n        \n        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    Plater.ClearAltCastBar(unitFrame.PlateFrame)\nend",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n                end\n            end \n            \n        elseif (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                --get the debuff timeleft\n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                local startTime = expirationTime - duration\n                \n                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\n                end\n                \n            else \n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604354364,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
					["Enabled"] = true,
					["Revision"] = 206,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                \n                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\n            else\n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        else\n            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Countdown",
					["NpcNames"] = {
						"164427", -- [1]
						"164414", -- [2]
						"164185", -- [3]
						"164567", -- [4]
						"165408", -- [5]
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.lifePercent = {\n        --npcId         percent divisions\n        [154564] = {80, 30},   --debug\n        [164451] = {40}, --dessia the decapirator - theater of pain\n        [164463] = {40}, --Paceran the Virulent - theater of pain\n        [164461] = {40}, -- Sathel the Accursed - theater of pain\n        [165946]= {50}, -- ~mordretha - thather of pain\n        [164501] = {70, 40, 10}, --mistcaller - tina scythe\n        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\n    }\n    \n    function envTable.CreateMarker(unitFrame)\n        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\n        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\n        \n        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\n        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateMarkers(unitFrame)\n        local markersTable = envTable.lifePercent[envTable._NpcID]\n        if (markersTable) then\n            local unitLifePercent = envTable._HealthPercent / 100\n            for i, percent in ipairs(markersTable) do\n                percent = percent / 100\n                if (unitLifePercent > percent) then\n                    if (not unitFrame.healthMarker) then\n                        envTable.CreateMarker(unitFrame)\n                    end\n                    \n                    unitFrame.healthMarker:Show()\n                    local width = unitFrame.healthBar:GetWidth()\n                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\n                    \n                    local overlaySize = width * (unitLifePercent - percent)\n                    unitFrame.healthOverlay:SetWidth(overlaySize)\n                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\n                    \n                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\n                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\n                    \n                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\n                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\n                    \n                    return\n                end\n            end --end for\n            \n            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\n                unitFrame.healthMarker:Hide()\n                unitFrame.healthOverlay:Hide()\n            end\n        end\n    end\nend      \n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (unitFrame.healthMarker) then\n        unitFrame.healthMarker:Hide()\n        unitFrame.healthOverlay:Hide()\n    end\nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Time"] = 1606506781,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\health_indicator",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Option 1",
							["Value"] = "Add markers into the health bar to remind you about boss abilities at life percent.",
							["Key"] = "option1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Name"] = "blank line",
							["Value"] = 0,
							["Key"] = "",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Name"] = "Vertical Line Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "indicatorColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Indicator color.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Indicator alpha.",
							["Min"] = 0.1,
							["Fraction"] = true,
							["Value"] = 0.79,
							["Key"] = "indicatorAlpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Vertical Line Alpha",
						}, -- [4]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "fillColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Fill Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Fill color.",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Fill alpha.",
							["Min"] = 0,
							["Key"] = "fillAlpha",
							["Value"] = 0.2,
							["Name"] = "Fill Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Unit - Health Markers [P]",
					["NpcNames"] = {
						"164451", -- [1]
						"164463", -- [2]
						"164461", -- [3]
						"165946", -- [4]
						"164501", -- [5]
						"164218", -- [6]
					},
				}, -- [14]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Time"] = 1604599443,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
					["Enabled"] = true,
					["Revision"] = 460,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["SpellIds"] = {
						323489, -- [1]
						323496, -- [2]
						319941, -- [3]
						319592, -- [4]
						334266, -- [5]
						325258, -- [6]
						334913, -- [7]
						326221, -- [8]
						322936, -- [9]
						323236, -- [10]
						321834, -- [11]
						336752, -- [12]
						325418, -- [13]
						324667, -- [14]
						327233, -- [15]
						324368, -- [16]
						324205, -- [17]
						323943, -- [18]
						319713, -- [19]
						320596, -- [20]
						320729, -- [21]
						323608, -- [22]
						330614, -- [23]
						320063, -- [24]
						332708, -- [25]
						334023, -- [26]
						317231, -- [27]
						317943, -- [28]
						320966, -- [29]
						334053, -- [30]
						328458, -- [31]
						321968, -- [32]
						331718, -- [33]
						325793, -- [34]
						330453, -- [35]
						326997, -- [36]
						334051, -- [37]
						292903, -- [38]
						330843, -- [39]
						294173, -- [40]
						189200, -- [41]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces an effect to indicate the spell will hit players in front of the enemy.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Set the alpha of the moving arrow",
							["Min"] = 0,
							["Name"] = "Arrow Alpha",
							["Value"] = 0.275,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "arrowAlpha",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Time that takes for an arrow to travel from the to right.",
							["Min"] = 0,
							["Name"] = "Animation Speed",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "animSpeed",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "desaturateArrow",
							["Value"] = false,
							["Name"] = "Use White Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the arrow color will be desaturated.",
						}, -- [7]
					},
					["version"] = -1,
					["Name"] = "Cast - Frontal Cone [Plater]",
					["NpcNames"] = {
					},
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n--165560 = Gormling Larva - MTS\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n        \n        envTable.FixateTarget:Show();\n        envTable.FixateIcon:Show();\n    end    \nend\n\n\n",
					["Time"] = 1604239880,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 269,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n\n\n\n\n",
					["Desc"] = "Show above the nameplate who is the player fixated",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate [Plater]",
					["NpcNames"] = {
						"165560", -- [1]
					},
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604593143,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_tank",
					["Enabled"] = true,
					["Revision"] = 833,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Desc"] = "Cast alert for abilities which only the tank can interrupt.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["SpellIds"] = {
						321828, -- [1]
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.4313725490196079, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Name"] = "Flash Duration",
							["Value"] = 0.2,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "flashDuration",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Name"] = "Cast Bar Height Mod",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "castBarHeight",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Name"] = "Shake Duration",
							["Value"] = 0.1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeDuration",
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 200,
							["Desc"] = "How strong is the shake.",
							["Min"] = 10,
							["Fraction"] = false,
							["Value"] = 25,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeAmplitude",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 30,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "shakeFrequency",
						}, -- [12]
					},
					["version"] = -1,
					["Name"] = "Cast - Tank Interrupt [P]",
					["NpcNames"] = {
					},
				}, -- [17]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \n    \n    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\n    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\n    envTable.EnergyAmount.outline = scriptTable.config.outline\n    \n    \nend\n\n--[=[\n\n164406 = Shriekwing\n164407 = Sludgefist\n162100 = kryxis the voracious\n162099 = general kaal - sanguine depths\n162329 = Xav the Unfallen - threater of pain\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local currentPower = UnitPower(unitId)\n    \n    if (currentPower and currentPower > 0) then\n        local maxPower = UnitPowerMax (unitId)\n        local percent = floor (currentPower / maxPower * 100)\n        \n        envTable.EnergyAmount.text = \"\" .. percent;\n        \n        if (scriptTable.config.showLater) then\n            local alpha = (percent -80) * 5\n            alpha = alpha / 100\n            alpha = max(0, alpha)\n            envTable.EnergyAmount:SetAlpha(alpha)\n            \n        else\n            envTable.EnergyAmount:SetAlpha(1.0)\n        end\n        \n        \n    else\n        envTable.EnergyAmount.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604357453,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 233,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Show the energy amount above the nameplate.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Show the power of the unit above the nameplate.",
							["Name"] = "script desc",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Name"] = "add trigger",
							["Value"] = "Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
							["Key"] = "option3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "showLater",
							["Value"] = true,
							["Name"] = "Show at 80% of Energy",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the energy won't start showing until the unit has 80% energy.",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 2",
							["Value"] = 0,
							["Key"] = "option2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Text size.",
							["Min"] = 8,
							["Name"] = "Text Size",
							["Value"] = 16,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "fontSize",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "fontColor",
							["Value"] = {
								0.803921568627451, -- [1]
								0.803921568627451, -- [2]
								0.803921568627451, -- [3]
								1, -- [4]
							},
							["Name"] = "Font Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the text.",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outline",
							["Value"] = true,
							["Name"] = "Enable Text Outline",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the text uses outline.",
						}, -- [9]
					},
					["version"] = -1,
					["Name"] = "Unit - Show Energy [Plater]",
					["NpcNames"] = {
						"164406", -- [1]
						"164407", -- [2]
						"162100", -- [3]
						"162099", -- [4]
						"162329", -- [5]
						"164558", -- [6]
					},
				}, -- [18]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604087921,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 266,
					["semver"] = "",
					["Author"] = "Tecno-Azralon",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["PlaterCore"] = 1,
					["Options"] = {
					},
					["version"] = -1,
					["Name"] = "Fixate On You [Plater]",
					["NpcNames"] = {
					},
				}, -- [19]
			},
			["aura2_y_offset"] = 5,
			["npc_cache"] = {
				[20048] = {
					"Crimson Hand Centurion", -- [1]
					"Tempest Keep", -- [2]
				},
				[20049] = {
					"Crimson Hand Blood Knight", -- [1]
					"Tempest Keep", -- [2]
				},
				[20050] = {
					"Crimson Hand Inquisitor", -- [1]
					"Tempest Keep", -- [2]
				},
				[18982] = {
					"Sable Jaguar", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[18983] = {
					"Blackfang Tarantula", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20060] = {
					"Lord Sanguinar", -- [1]
					"Tempest Keep", -- [2]
				},
				[20062] = {
					"Grand Astromancer Capernian", -- [1]
					"Tempest Keep", -- [2]
				},
				[19622] = {
					"Kael'thas Sunstrider", -- [1]
					"Tempest Keep", -- [2]
				},
				[20064] = {
					"Thaladred the Darkener", -- [1]
					"Tempest Keep", -- [2]
				},
				[18994] = {
					"Infinite Executioner", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21137] = {
					"Infinite Assassin", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21138] = {
					"Infinite Executioner", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21139] = {
					"Infinite Vanquisher", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21140] = {
					"Rift Lord", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21268] = {
					"Netherstrand Longbow", -- [1]
					"Tempest Keep", -- [2]
				},
				[21269] = {
					"Devastation", -- [1]
					"Tempest Keep", -- [2]
				},
				[21270] = {
					"Cosmic Infuser", -- [1]
					"Tempest Keep", -- [2]
				},
				[21271] = {
					"Infinity Blades", -- [1]
					"Tempest Keep", -- [2]
				},
				[21272] = {
					"Warp Slicer", -- [1]
					"Tempest Keep", -- [2]
				},
				[21273] = {
					"Phaseshift Bulwark", -- [1]
					"Tempest Keep", -- [2]
				},
				[21148] = {
					"Rift Keeper", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[17879] = {
					"Chrono Lord Deja", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[17880] = {
					"Temporus", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[17881] = {
					"Aeonus", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[17892] = {
					"Infinite Chronomancer", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20063] = {
					"Master Engineer Telonicus", -- [1]
					"Tempest Keep", -- [2]
				},
				[21136] = {
					"Infinite Chronomancer", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[21104] = {
					"Rift Keeper", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[17952] = {
					"Darkwater Crocolisk", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20032] = {
					"Bloodwarder Vindicator", -- [1]
					"Tempest Keep", -- [2]
				},
				[20033] = {
					"Astromancer", -- [1]
					"Tempest Keep", -- [2]
				},
				[20034] = {
					"Star Scryer", -- [1]
					"Tempest Keep", -- [2]
				},
				[20035] = {
					"Bloodwarder Marshal", -- [1]
					"Tempest Keep", -- [2]
				},
				[20036] = {
					"Bloodwarder Squire", -- [1]
					"Tempest Keep", -- [2]
				},
				[20037] = {
					"Tempest Falconer", -- [1]
					"Tempest Keep", -- [2]
				},
				[20038] = {
					"Phoenix-Hawk Hatchling", -- [1]
					"Tempest Keep", -- [2]
				},
				[21362] = {
					"Phoenix", -- [1]
					"Tempest Keep", -- [2]
				},
				[17835] = {
					"Infinite Assassin", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20041] = {
					"Crystalcore Sentinel", -- [1]
					"Tempest Keep", -- [2]
				},
				[20031] = {
					"Bloodwarder Legionnaire", -- [1]
					"Tempest Keep", -- [2]
				},
				[20040] = {
					"Crystalcore Devastator", -- [1]
					"Tempest Keep", -- [2]
				},
				[17839] = {
					"Rift Lord", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20039] = {
					"Phoenix-Hawk", -- [1]
					"Tempest Keep", -- [2]
				},
				[21818] = {
					"Infinite Whelp", -- [1]
					"Opening of the Dark Portal", -- [2]
				},
				[20047] = {
					"Crimson Hand Battle Mage", -- [1]
					"Tempest Keep", -- [2]
				},
				[21274] = {
					"Staff of Disintegration", -- [1]
					"Tempest Keep", -- [2]
				},
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 4,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Combo Points"] = 4,
				["Cast Bar Icon Config"] = 2,
				["Aura Reorder"] = 3,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Target Color"] = 3,
				["Attacking Specific Unit"] = 1,
				["Execute Range"] = 1,
			},
			["captured_spells"] = {
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Sonyeo",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311469] = {
					["type"] = "BUFF",
					["source"] = "Tblrookie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Arnhan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Arnhan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331934] = {
					["type"] = "DEBUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186401] = {
					["type"] = "BUFF",
					["source"] = "Arnhan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36991] = {
					["encounterID"] = 733,
					["source"] = "Warp Slicer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21272,
				},
				[334295] = {
					["type"] = "BUFF",
					["source"] = "Cyberstorm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37318] = {
					["type"] = "BUFF",
					["source"] = "Tempest Falconer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 20037,
				},
				[108853] = {
					["encounterID"] = 733,
					["source"] = "Sonyeo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[331939] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Sonyeo",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335446] = {
					["type"] = "BUFF",
					["source"] = "Cyberstorm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333089] = {
					["type"] = "BUFF",
					["source"] = "Moonshâdow",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344118] = {
					["type"] = "BUFF",
					["source"] = "Sonyeo",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315496] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 733,
					["source"] = "Sonyeo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1943] = {
					["type"] = "DEBUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311483] = {
					["type"] = "BUFF",
					["source"] = "Lesni",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Sonyeo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Annarky",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36985] = {
					["encounterID"] = 733,
					["source"] = "Cosmic Infuser",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21270,
				},
				[20477] = {
					["encounterID"] = 733,
					["source"] = "Thaladred the Darkener",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20064,
				},
				[227847] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[340431] = {
					["type"] = "DEBUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[208086] = {
					["type"] = "DEBUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262115] = {
					["type"] = "DEBUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3391] = {
					["encounterID"] = 733,
					["source"] = "Infinity Blades",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21271,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5761] = {
					["type"] = "BUFF",
					["source"] = "Vhalyia",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Annarky",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Blodfylt",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[156071] = {
					["type"] = "BUFF",
					["source"] = "Bizàre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307166] = {
					["type"] = "BUFF",
					["source"] = "Baely",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Ryalna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["type"] = "BUFF",
					["source"] = "Sonyeo",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[68054] = {
					["type"] = "BUFF",
					["source"] = "Jeeves",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 35642,
				},
				[36971] = {
					["encounterID"] = 733,
					["source"] = "Grand Astromancer Capernian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20062,
				},
				[1784] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37027] = {
					["encounterID"] = 733,
					["source"] = "Master Engineer Telonicus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20063,
				},
				[345535] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344795] = {
					["type"] = "BUFF",
					["source"] = "Lemonmg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12294] = {
					["source"] = "Stälwart",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308637] = {
					["type"] = "BUFF",
					["source"] = "Bizàre",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256735] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317491] = {
					["type"] = "DEBUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341533] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Jyotika",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199854] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197690] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Lemonmg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315584] = {
					["type"] = "BUFF",
					["source"] = "Lesni",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Ryalna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[334271] = {
					["type"] = "BUFF",
					["source"] = "Ryalna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Ryalna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331937] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324260] = {
					["source"] = "Stälwart",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36980] = {
					["encounterID"] = 733,
					["source"] = "Netherstrand Longbow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21268,
				},
				[334802] = {
					["type"] = "BUFF",
					["source"] = "Greymartin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37036] = {
					["encounterID"] = 733,
					["source"] = "Master Engineer Telonicus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20063,
				},
				[1449] = {
					["encounterID"] = 733,
					["source"] = "Sonyeo",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Docide",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327706] = {
					["type"] = "BUFF",
					["source"] = "Baely",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[703] = {
					["type"] = "DEBUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213644] = {
					["source"] = "Bubblezpalax",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Sonyeo",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204019] = {
					["source"] = "Bubblezpalax",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Baely",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[465] = {
					["type"] = "BUFF",
					["source"] = "Annarky",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[36965] = {
					["encounterID"] = 733,
					["source"] = "Thaladred the Darkener",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20064,
				},
				[36981] = {
					["type"] = "BUFF",
					["source"] = "Devastation",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 21269,
				},
				[7384] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108211] = {
					["type"] = "BUFF",
					["source"] = "Cyberstorm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307185] = {
					["type"] = "BUFF",
					["source"] = "Lemonmg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Stälwart",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[336767] = {
					["source"] = "Avurona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[67826] = {
					["source"] = "Lesni",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334345] = {
					["type"] = "BUFF",
					["source"] = "Cyberstorm",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30225] = {
					["encounterID"] = 733,
					["source"] = "Thaladred the Darkener",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20064,
				},
				[36979] = {
					["encounterID"] = 733,
					["source"] = "Netherstrand Longbow",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21268,
				},
				[347600] = {
					["type"] = "BUFF",
					["source"] = "Arnhan",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Bubblezpalax",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["type"] = "DEBUFF",
					["source"] = "Phaseshift Bulwark",
					["encounterID"] = 733,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 21273,
				},
				[2818] = {
					["type"] = "DEBUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44863] = {
					["encounterID"] = 733,
					["source"] = "Lord Sanguinar",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20060,
				},
				[36966] = {
					["encounterID"] = 733,
					["source"] = "Thaladred the Darkener",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20064,
				},
				[36982] = {
					["encounterID"] = 733,
					["source"] = "Devastation",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21269,
				},
				[36990] = {
					["encounterID"] = 733,
					["source"] = "Staff of Disintegration",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 21274,
				},
				[2823] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330334] = {
					["source"] = "Stälwart",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193538] = {
					["type"] = "BUFF",
					["source"] = "Ashie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Annarky",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[37018] = {
					["encounterID"] = 733,
					["source"] = "Grand Astromancer Capernian",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 20062,
				},
			},
			["aura2_x_offset"] = 0,
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateLargeTopInset"] = "0.085",
				["nameplateShowEnemyMinus"] = "1",
				["nameplateMotionSpeed"] = "0.05",
				["NamePlateClassificationScale"] = "1",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.15",
				["nameplateTargetRadialPosition"] = "1",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateTargetBehindMaxDistance"] = "30",
				["NamePlateHorizontalScale"] = "1",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowAll"] = "1",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 25,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1,
				},
			},
			["plate_config"] = {
				["global_health_height"] = 12,
				["global_health_width"] = 112,
			},
			["aura_y_offset"] = 5,
			["hook_data"] = {
				{
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n                \n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            \n            local texturePath = modTable.config.iconTexturePath\n            texturePath = texturePath:gsub(\"//\", \"/\")\n            texturePath = texturePath:gsub(\"\\\\\", \"/\")\n            \n            noInterruptTexture:SetTexture (texturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["Time"] = 1597097268,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["Enabled"] = false,
					["Revision"] = 348,
					["Options"] = {
						{
							["Type"] = 5,
							["Name"] = "Icon Settings",
							["Value"] = "Icon Settings:",
							["Key"] = "option4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Name"] = "Show Icon",
							["Value"] = true,
							["Key"] = "showIcon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Name"] = "Icon on Left Side",
							["Value"] = true,
							["Key"] = "iconOnLeftSide",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "useFullSize",
							["Value"] = false,
							["Name"] = "Use Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Fraction"] = true,
							["Value"] = 0,
							["Key"] = "iconSizeOffset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Icon Size Offset",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Name"] = "Icon Padding",
							["Value"] = 0,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "iconPadding",
						}, -- [6]
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Name"] = "Interrupt Texture",
							["Value"] = "Can't Interrupt Texture:",
							["Key"] = "option5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Name"] = "Show Texture",
							["Value"] = true,
							["Key"] = "showTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Name"] = "Texture Path",
							["Value"] = "Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
							["Key"] = "iconTexturePath",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Name"] = "Texture Desaturated",
							["Value"] = true,
							["Key"] = "desaturatedTexture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Name"] = "Texture Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.3056715726852417, -- [4]
							},
							["Key"] = "textureColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Fraction"] = false,
							["Value"] = 10,
							["Key"] = "textureWidth",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Width",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "The texture is set to be the same size as the cast bar, fine tune the height as wanted",
							["Min"] = -16,
							["Name"] = "Texture Height Mod",
							["Value"] = 0,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "textureHeightMod",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Fraction"] = false,
							["Value"] = 0,
							["Key"] = "texturePosition",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Texture Position",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Key"] = "textureAlpha",
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [16]
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["semver"] = "",
					["LastHookEdited"] = "",
					["Name"] = "Cast Bar Icon Settings [P]",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Color Automation [Plater]",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["Time"] = 1547392935,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Author"] = "Ahwa-Azralon",
					["Name"] = "Execute Range [Plater]",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 135358,
					["Time"] = 1547406548,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Author"] = "Kastfall-Azralon",
					["Name"] = "Attacking Specific Unit [Plater]",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["Time"] = 1547993111,
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Hide Neutral Units [Plater]",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1990989,
					["Time"] = 1541606242,
				}, -- [5]
				{
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                if i == 1 then\n                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\n                else\n                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\n                end\n                \n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1603567332,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["affix"] = {
						},
					},
					["url"] = "",
					["Icon"] = 135426,
					["Enabled"] = false,
					["Revision"] = 254,
					["Options"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["semver"] = "",
					["LastHookEdited"] = "",
					["Name"] = "Combo Points [Plater]",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Author"] = "Tecno-Azralon",
					["Name"] = "Extra Border [Plater]",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 133689,
					["Time"] = 1547409079,
				}, -- [7]
				{
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["Time"] = 1596791840,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["url"] = "",
					["Icon"] = 574574,
					["Enabled"] = false,
					["Revision"] = 93,
					["Options"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["semver"] = "",
					["LastHookEdited"] = "",
					["Name"] = "Reorder Nameplate [Plater]",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Don't Have Aura [Plater]",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 136207,
					["Time"] = 1554138845,
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Players Targeting a Target [Plater]",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 1966587,
					["Time"] = 1548278227,
				}, -- [10]
				{
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    \n    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\n    \n    local sortByTime = false\n    local invertSort = false\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    local priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n        [\"Pistol Shot\"] = 50,\n        [\"Marked for Death\"] = 99,\n    }\n    \n    -- Sort function - do not touch\n    Plater.db.profile.aura_sort = true\n    \n    \n    function Plater.AuraIconsSortFunction (aura1, aura2)\n        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\n        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\n        \n        if sortByTime and p1 == p2 then\n            if invertSort then\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            else\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            end\n        else\n            if invertSort then\n                 return p1 < p2\n            else\n                return p1 > p2\n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1608663128,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 356,
					["Options"] = {
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["semver"] = "",
					["LastHookEdited"] = "",
					["Name"] = "Aura Reorder [Plater]",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["HooksTemp"] = {
					},
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Author"] = "Izimode-Azralon",
					["Name"] = "Current Target Color [Plater]",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["LastHookEdited"] = "",
					["url"] = "",
					["Icon"] = 878211,
					["Time"] = 1552354619,
				}, -- [12]
			},
			["aura_x_offset"] = 0,
			["ui_parent_scale_tune"] = 1.562500034924597,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["use_ui_parent"] = true,
			["patch_version"] = 13,
			["number_region_first_run"] = true,
			["script_auto_imported"] = {
				["Unit - Important"] = 11,
				["Aura - Buff Alert"] = 13,
				["Cast - Very Important"] = 11,
				["Explosion Affix M+"] = 11,
				["Aura - Debuff Alert"] = 11,
				["Cast - Ultra Important"] = 11,
				["Cast - Big Alert"] = 11,
				["Cast - Small Alert"] = 11,
				["Auto Set Skull"] = 11,
				["Unit - Main Target"] = 11,
				["Aura - Blink Time Left"] = 12,
				["Countdown"] = 11,
				["Unit - Health Markers"] = 12,
				["Cast - Frontal Cone"] = 11,
				["Fixate"] = 11,
				["Cast - Tank Interrupt"] = 11,
				["Fixate On You"] = 11,
				["Spiteful Affix"] = 3,
				["Unit - Show Energy"] = 11,
			},
			["first_run3"] = true,
		},
		["MyNewProfile"] = {
			["target_shady_combat_only"] = false,
			["aura_breakline_space"] = 9.6999998092651,
			["debuff_show_cc"] = false,
			["script_data"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Time"] = 1533485679,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 10);\nend\n\n\n",
					["Icon"] = 136048,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Revision"] = 114,
					["Options"] = {
					},
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "Energy above Nameplate",
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
						"138529", -- [2]
						"134635", -- [3]
						"139051", -- [4]
						"139059", -- [5]
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["SpellIds"] = {
						279549, -- [1]
					},
					["Enabled"] = false,
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n--165560 = Gormling Larva - MTS\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n        \n        envTable.FixateTarget:Show();\n        envTable.FixateIcon:Show();\n    end    \nend\n\n\n",
					["Time"] = 1604239880,
					["url"] = "",
					["Icon"] = 1029718,
					["Enabled"] = true,
					["Revision"] = 269,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n\n\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
						"165560", -- [1]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Fixate [Plater]",
					["SpellIds"] = {
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["Options"] = {
					},
				}, -- [2]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["Time"] = 1607982120,
					["NpcNames"] = {
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a small animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Key"] = "flashDuration",
							["Value"] = 0.6,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [6]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Revision"] = 596,
					["semver"] = "",
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["version"] = -1,
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    \n    \nend\n\n\n",
					["SpellIds"] = {
						320170, -- [1]
						320171, -- [2]
						320462, -- [3]
						330712, -- [4]
						332170, -- [5]
						333875, -- [6]
						326836, -- [7]
						342135, -- [8]
						333861, -- [9]
						341969, -- [10]
						317963, -- [11]
						327481, -- [12]
						328331, -- [13]
						322614, -- [14]
						325701, -- [15]
						326438, -- [16]
						323538, -- [17]
						321764, -- [18]
						296523, -- [19]
						330755, -- [20]
						295929, -- [21]
						296019, -- [22]
						335685, -- [23]
						170751, -- [24]
						342207, -- [25]
					},
					["PlaterCore"] = 1,
					["Prio"] = 99,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        envTable.flashIn = Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        envTable.flashOut = Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    envTable.flashIn:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.flashOut:SetDuration(scriptTable.config.flashDuration / 2)\n    envTable.SmallFlashTexture:SetColorTexture (Plater:ParseColors(scriptTable.config.flashColor))\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [3]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1604454032,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 351,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.40392156862745, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.32156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\nend\n\n\n",
					["NpcNames"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Debuff Alert [Plater]",
					["Desc"] = "Add the debuff name in the trigger box.",
					["SpellIds"] = {
						337220, -- [1]
						337253, -- [2]
						337251, -- [3]
					},
					["semver"] = "",
				}, -- [4]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Time"] = 1533559999,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    --create a slow flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (unitFrame.castBar, 0.35, 1, \"white\")\n    \n    --create a big fast flash over the entire nameplate\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater.CreateFlash (unitFrame, 0.35, 1, {.1, .1, .1})\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (self, 0.4, 5, 35, false, false, 0, 1, 0.05, 0.1, true)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end    \n    \nend\n\n\n\n\n\n",
					["Revision"] = 501,
					["Options"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    envTable.BackgroundFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    self:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Nameplate-Castbar-Flash",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "",
					["SpellIds"] = {
						257791, -- [1]
						258313, -- [2]
						272571, -- [3]
						265407, -- [4]
						272700, -- [5]
						258153, -- [6]
						257397, -- [7]
						263297, -- [8]
						257732, -- [9]
						268030, -- [10]
						268309, -- [11]
						268375, -- [12]
						267809, -- [13]
						272183, -- [14]
						253517, -- [15]
						257069, -- [16]
						274569, -- [17]
						269090, -- [18]
						268797, -- [19]
						263066, -- [20]
						258777, -- [21]
						278474, -- [22]
						268129, -- [23]
						253583, -- [24]
						258935, -- [25]
						265433, -- [26]
						256849, -- [27]
						252781, -- [28]
						255041, -- [29]
						253544, -- [30]
						278961, -- [31]
						265968, -- [32]
						256060, -- [33]
						264390, -- [34]
						268008, -- [35]
					},
					["Enabled"] = false,
				}, -- [5]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.FlashNameplateBody (unitFrame, nil, 1)\n    end",
					["Time"] = 1533559355,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n",
					["Icon"] = 134331,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 416,
					["Options"] = {
					},
					["Author"] = "Causese-Anduin",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.FlashNameplateBody (unitFrame, nil, 1)\n    end",
					["Name"] = "Nameplate-Flash (Units)",
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Blood Visage", -- [1]
					},
					["Desc"] = "",
					["SpellIds"] = {
					},
					["Enabled"] = false,
				}, -- [6]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\nend\n\n\n\n\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["Time"] = 1579850520,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.Glow = envTable.Glow or DetailsFramework:CreateGlowOverlay (self)\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Stop()\n    \nend\n\n\n",
					["Revision"] = 502,
					["Options"] = {
					},
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.Glow:Play()\nend\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["Name"] = "Spellstealable Auras (Glow)",
					["PlaterCore"] = 1,
					["Desc"] = "",
					["SpellIds"] = {
						269129, -- [1]
						262799, -- [2]
						270417, -- [3]
						275507, -- [4]
						262947, -- [5]
						267604, -- [6]
						275560, -- [7]
						252215, -- [8]
						262190, -- [9]
						259536, -- [10]
						272121, -- [11]
						277237, -- [12]
						277236, -- [13]
						272123, -- [14]
						277119, -- [15]
						272119, -- [16]
						273432, -- [17]
						257251, -- [18]
						274360, -- [19]
						257496, -- [20]
						275865, -- [21]
						260575, -- [22]
						278119, -- [23]
						264736, -- [24]
						256146, -- [25]
						280071, -- [26]
						264387, -- [27]
						276767, -- [28]
						264006, -- [29]
						274264, -- [30]
						250511, -- [31]
						270413, -- [32]
						260237, -- [33]
						258133, -- [34]
						268375, -- [35]
						259999, -- [36]
						267345, -- [37]
						256111, -- [38]
						263487, -- [39]
						273609, -- [40]
						269896, -- [41]
						272681, -- [42]
						259331, -- [43]
						280134, -- [44]
						247042, -- [45]
						269906, -- [46]
						278837, -- [47]
						257033, -- [48]
						255579, -- [49]
						270444, -- [50]
						275082, -- [51]
						245788, -- [52]
						265169, -- [53]
						257397, -- [54]
						263496, -- [55]
						265564, -- [56]
						240074, -- [57]
						262192, -- [58]
						269234, -- [59]
						270901, -- [60]
						269783, -- [61]
						268998, -- [62]
						265475, -- [63]
						268062, -- [64]
						274097, -- [65]
						259869, -- [66]
						259630, -- [67]
						271466, -- [68]
						263224, -- [69]
						263077, -- [70]
						272664, -- [71]
						257956, -- [72]
						267530, -- [73]
						279818, -- [74]
						275517, -- [75]
						262540, -- [76]
						277473, -- [77]
						265314, -- [78]
						264667, -- [79]
						280065, -- [80]
						280064, -- [81]
						274210, -- [82]
						264706, -- [83]
						261904, -- [84]
						258387, -- [85]
						266030, -- [86]
						254419, -- [87]
						257567, -- [88]
						257183, -- [89]
						260281, -- [90]
						261659, -- [91]
						248527, -- [92]
						281702, -- [93]
						280082, -- [94]
						280081, -- [95]
						270118, -- [96]
						281440, -- [97]
						260302, -- [98]
						257328, -- [99]
						280073, -- [100]
						264396, -- [101]
						274969, -- [102]
						265368, -- [103]
						280070, -- [104]
						275901, -- [105]
						262984, -- [106]
						264968, -- [107]
						258864, -- [108]
						263127, -- [109]
						276265, -- [110]
						270001, -- [111]
						263215, -- [112]
						267346, -- [113]
						275573, -- [114]
						267977, -- [115]
						264705, -- [116]
						264713, -- [117]
						259102, -- [118]
						275881, -- [119]
						277827, -- [120]
						258153, -- [121]
						267037, -- [122]
						278989, -- [123]
						268710, -- [124]
						268030, -- [125]
						257069, -- [126]
						256849, -- [127]
					},
					["Prio"] = 99,
					["Enabled"] = true,
				}, -- [7]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self, scriptTable.config.glowColor)\n    \nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Hide()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        Plater.StopDotAnimation(self, envTable.dotAnimation)\n    end\n    \n    \nend",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Time"] = 1605214963,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Enabled"] = true,
					["Revision"] = 607,
					["semver"] = "",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (scriptTable.config.glowEnabled) then\n        envTable.buffIconGlow:Show()\n    end\n    \n    if (scriptTable.config.dotsEnabled) then\n        envTable.dotAnimation = Plater.PlayDotAnimation(self, 6, scriptTable.config.dotsColor, 6, 3) \n    end\n    \nend\n\n\n\n\n",
					["NpcNames"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Aura - Buff Alert [Plater]",
					["SpellIds"] = {
						323149, -- [1]
						324392, -- [2]
						340544, -- [3]
						342189, -- [4]
						333227, -- [5]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Buff in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = false,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								0.40392156862745, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "dotsEnabled",
							["Value"] = true,
							["Name"] = "Dots Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.32156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dots Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
					},
				}, -- [8]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.FlashNameplateBody (unitFrame, nil, 0.5)\n    \nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1533559356,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\nend",
					["Icon"] = 134331,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 305,
					["Options"] = {
					},
					["Author"] = "Causese-Anduin",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.FlashNameplateBody (unitFrame, nil, 0.5)\n    \nend\n\n\n\n\n\n\n\n\n",
					["Name"] = "Nameplate-Flash (Casts)",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "",
					["SpellIds"] = {
						258128, -- [1]
						270003, -- [2]
						272609, -- [3]
						260852, -- [4]
						257169, -- [5]
						272874, -- [6]
					},
					["Enabled"] = false,
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    PlaySoundFile(\"Interface\\\\Resurrection\\\\Add.ogg\", \"MASTER\") \nend\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["Time"] = 1563481592,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n\n",
					["Icon"] = "Interface\\Icons\\Ability_Seal",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 416,
					["Options"] = {
					},
					["Author"] = "Causese-Anduin",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    PlaySoundFile(\"Interface\\\\Resurrection\\\\Add.ogg\", \"MASTER\") \nend\n\n\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend",
					["Name"] = "Addspawn Announce",
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"Spirit of Gold", -- [1]
					},
					["Desc"] = "",
					["SpellIds"] = {
					},
					["Enabled"] = false,
				}, -- [10]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, \n    'Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\interrupt.tga', 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend",
					["Time"] = 1533484908,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, \n    'Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\interrupt.tga', 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = "Interface\\Icons\\INV_Misc_QuestionMark",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Revision"] = 137,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
						"88837", -- [1]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["SpellIds"] = {
						277556, -- [1]
					},
					["Enabled"] = false,
				}, -- [11]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0\n    \n\nend\n\n\n",
					["Time"] = 1604698647,
					["url"] = "",
					["Icon"] = 2175503,
					["Enabled"] = true,
					["Revision"] = 462,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\nend\n\n\n\n\n\n\n",
					["NpcNames"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Explosion Affix M+ [Plater]",
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 3,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the cast bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.5,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Key"] = "arrowWidth",
							["Value"] = 8,
							["Name"] = "Arrow Width",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Key"] = "arrowHeight",
							["Value"] = 8,
							["Name"] = "Arrow Height",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.6156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 4,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
					},
				}, -- [12]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = scriptTable.config.changeNameplateColor --\n    envTable.NameplateColor = scriptTable.config.nameplateColor\n    envTable.NameplateSizeOffset = scriptTable.config.nameplateSizeOffset --\n    \n    unitFrame.UnitImportantSkullTexture = unitFrame.UnitImportantSkullTexture or unitFrame:CreateTexture(nil, \"background\")\n    \n    unitFrame.UnitImportantSkullTexture:SetTexture([[Interface/AddOns/Plater/media/skullbones_128]])\n    unitFrame.UnitImportantSkullTexture:SetPoint(\"center\", unitFrame.healthBar, \"center\", 0, -5)\n    \n    unitFrame.UnitImportantSkullTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.skullColor))\n    unitFrame.UnitImportantSkullTexture:SetAlpha(scriptTable.config.skullAlpha)\n    unitFrame.UnitImportantSkullTexture:SetScale(scriptTable.config.skullScale)\n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n--[=[\n\n154564 - debug\n\nUsing spellIDs for multi-language support\n\n164362 - smily morsel - plaguefall\n168882 - fleeting manifestation - sanguine depths\n170234 - oppressive banner - theater of pain\n168988 - overgrowth - Mists of Tirna Scithe\n170452 - essesnce orb - torghast\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)   \n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \n    unitFrame.UnitImportantSkullTexture:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604599472,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 355,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (envTable.dotAnimation) then\n        Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    end\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    unitFrame.UnitImportantSkullTexture:Show()\nend\n\n\n\n\n",
					["NpcNames"] = {
						"164362", -- [1]
						"168882", -- [2]
						"168988", -- [3]
						"170234", -- [4]
						"165905", -- [5]
						"170452", -- [6]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Important [Plater]",
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.52549019607843, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 3,
							["Name"] = "Nameplate Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.71372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 5,
							["Key"] = "option10",
							["Value"] = "Skull Texture",
							["Name"] = "Skull Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "skullColor",
							["Value"] = {
								1, -- [1]
								0.46274509803922, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Skull Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "",
							["Min"] = 0,
							["Key"] = "skullAlpha",
							["Value"] = 0.2,
							["Name"] = "Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 2,
							["Desc"] = "",
							["Min"] = 0.4,
							["Key"] = "skullScale",
							["Value"] = 0.6,
							["Name"] = "Scale",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [13]
					},
				}, -- [13]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:SetVertexColor(Plater:ParseColors(scriptTable.config.flashColor))\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, scriptTable.config.flashDuration/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, scriptTable.config.flashDuration/2, 1, 0)\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (scriptTable.config.flashDuration/2)\n    fadeOut:SetDuration (scriptTable.config.flashDuration/2)\n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.castBar, envTable.dotAnimation)    \n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1604674264,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_darkorange",
					["Enabled"] = true,
					["Revision"] = 695,
					["semver"] = "",
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.castBar, 5, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (scriptTable.config.castBarColor))\n        end\n    end\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Cast - Very Important [Plater]",
					["SpellIds"] = {
						321247, -- [1]
						334522, -- [2]
						320232, -- [3]
						319962, -- [4]
						325879, -- [5]
						324427, -- [6]
						322999, -- [7]
						325360, -- [8]
						322903, -- [9]
						324103, -- [10]
						333294, -- [11]
						333540, -- [12]
						319521, -- [13]
						326021, -- [14]
						326450, -- [15]
						322711, -- [16]
						329104, -- [17]
						295000, -- [18]
						242391, -- [19]
						320197, -- [20]
						329608, -- [21]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a big animation when the cast start.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Flash:",
							["Name"] = "Flash",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1.2,
							["Desc"] = "How long is the flash played when the cast starts.",
							["Min"] = 0.1,
							["Key"] = "flashDuration",
							["Value"] = 0.8,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [6]
						{
							["Type"] = 1,
							["Key"] = "flashColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Flash Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the Flash",
						}, -- [7]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Shake:",
							["Name"] = "Shake",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 0.5,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.2,
							["Name"] = "Shake Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "How strong is the shake.",
							["Min"] = 1,
							["Key"] = "shakeAmplitude",
							["Value"] = 5,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 40,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 5,
							["Key"] = "option14",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [14]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								0.56470588235294, -- [1]
								0.56470588235294, -- [2]
								0.56470588235294, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dots around the nameplate",
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "Adjust the width of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 8,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Adjust the height of the dots to better fit in your nameplate.",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [17]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [18]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [19]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [20]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [21]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [22]
						{
							["Type"] = 6,
							["Key"] = "option18",
							["Value"] = 0,
							["Name"] = "blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [23]
						{
							["Type"] = 5,
							["Key"] = "option19",
							["Value"] = "Cast Bar",
							["Name"] = "Option 19",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [24]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Use Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Use cast bar color.",
						}, -- [25]
						{
							["Type"] = 1,
							["Key"] = "castBarColor",
							["Value"] = {
								0.41176470588235, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Cast bar color.",
						}, -- [26]
					},
				}, -- [14]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1607983234,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_orange",
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["semver"] = "",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["Revision"] = 975,
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.43137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Key"] = "flashDuration",
							["Value"] = 0.4,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 5,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.2,
							["Name"] = "Shake Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 100,
							["Desc"] = "How strong is the shake.",
							["Min"] = 2,
							["Key"] = "shakeAmplitude",
							["Value"] = 8,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 40,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"none\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["version"] = -1,
					["Prio"] = 99,
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						338353, -- [1]
						334748, -- [2]
						334749, -- [3]
						320784, -- [4]
						341352, -- [5]
						341520, -- [6]
						341522, -- [7]
						336005, -- [8]
						339777, -- [9]
						331933, -- [10]
						326617, -- [11]
						324914, -- [12]
						324776, -- [13]
						326046, -- [14]
						340634, -- [15]
						319070, -- [16]
						328295, -- [17]
						317936, -- [18]
						327413, -- [19]
						319654, -- [20]
						323821, -- [21]
						320772, -- [22]
						324293, -- [23]
						330562, -- [24]
						330868, -- [25]
						341902, -- [26]
						342139, -- [27]
						342675, -- [28]
						323190, -- [29]
						332836, -- [30]
						327648, -- [31]
						328217, -- [32]
						322938, -- [33]
						340544, -- [34]
						325876, -- [35]
						325700, -- [36]
						323552, -- [37]
						332666, -- [38]
						332612, -- [39]
						332706, -- [40]
						340026, -- [41]
						294171, -- [42]
						292910, -- [43]
						294165, -- [44]
						338871, -- [45]
						330813, -- [46]
						335694, -- [47]
						327461, -- [48]
						329787, -- [49]
						304946, -- [50]
						15245, -- [51]
						276754, -- [52]
						304831, -- [53]
						277036, -- [54]
						320657, -- [55]
						294362, -- [56]
						270248, -- [57]
						292926, -- [58]
					},
					["Enabled"] = true,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["url"] = "",
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Time"] = 1563481575,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Revision"] = 108,
					["Options"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Enabled"] = false,
				}, -- [16]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Time"] = 1580663706,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
					["Icon"] = 135024,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Revision"] = 63,
					["Options"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["SpellIds"] = {
					},
					["Prio"] = 99,
					["Enabled"] = false,
				}, -- [17]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        --if not envTable.blinkTexture then\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        --end\n        \n        envTable.glowEffect = envTable.glowEffect or self.overlay or Plater.CreateIconGlow (self)\n        --envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1611856720,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 369,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["version"] = -1,
					["Options"] = {
						{
							["Type"] = 6,
							["Name"] = "Blank Space",
							["Value"] = 0,
							["Key"] = "option10",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Name"] = "Option 17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Key"] = "option17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Name"] = "Blink Enabled",
							["Value"] = true,
							["Key"] = "blinkEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Name"] = "Glow Enabled",
							["Value"] = true,
							["Key"] = "glowEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Name"] = "Change NamePlate Color",
							["Value"] = true,
							["Key"] = "changeNameplateColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Name"] = "Timeleft to Blink",
							["Value"] = 3,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeleftToBlink",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Name"] = "Blink Speed",
							["Value"] = 1,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkSpeed",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Name"] = "Blink Max Alpha",
							["Value"] = 0.6,
							["Fraction"] = true,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "blinkMaxAlpha",
						}, -- [9]
						{
							["Type"] = 1,
							["Name"] = "Blink Color",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Key"] = "blinkColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Name"] = "Nameplate Color",
							["Value"] = {
								0.2862745098039216, -- [1]
								0.00392156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Name"] = "Timer Color Enabled",
							["Value"] = true,
							["Key"] = "timerColorEnabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 8,
							["Name"] = "Time Left Warning",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftWarning",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Fraction"] = true,
							["Value"] = 3,
							["Name"] = "Time Left Critical",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Key"] = "timeLeftCritical",
						}, -- [15]
						{
							["Type"] = 1,
							["Name"] = "Warning Color",
							["Value"] = {
								1, -- [1]
								0.8705882352941177, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "warningColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Name"] = "Critical Color",
							["Value"] = {
								1, -- [1]
								0.07450980392156863, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "criticalColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
				}, -- [18]
				{
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Time"] = 1543680853,
					["Icon"] = 133006,
					["Enabled"] = false,
					["Revision"] = 45,
					["Options"] = {
					},
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["NpcNames"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["Name"] = "Aura - Border Color [Plater]",
				}, -- [19]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["Time"] = 1607982131,
					["NpcNames"] = {
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_frontal",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces an effect to indicate the spell will hit players in front of the enemy.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Set the alpha of the moving arrow",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.275,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Time that takes for an arrow to travel from the to right.",
							["Min"] = 0,
							["Key"] = "animSpeed",
							["Value"] = 0.2,
							["Name"] = "Animation Speed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [6]
						{
							["Type"] = 4,
							["Key"] = "desaturateArrow",
							["Value"] = false,
							["Name"] = "Use White Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the arrow color will be desaturated.",
						}, -- [7]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Revision"] = 461,
					["semver"] = "",
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["version"] = -1,
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend",
					["SpellIds"] = {
						323489, -- [1]
						323496, -- [2]
						319941, -- [3]
						319592, -- [4]
						334266, -- [5]
						325258, -- [6]
						334913, -- [7]
						326221, -- [8]
						322936, -- [9]
						323236, -- [10]
						321834, -- [11]
						336752, -- [12]
						325418, -- [13]
						324667, -- [14]
						327233, -- [15]
						324368, -- [16]
						324205, -- [17]
						323943, -- [18]
						319713, -- [19]
						320596, -- [20]
						320729, -- [21]
						323608, -- [22]
						330614, -- [23]
						320063, -- [24]
						332708, -- [25]
						334023, -- [26]
						317231, -- [27]
						317943, -- [28]
						320966, -- [29]
						334053, -- [30]
						328458, -- [31]
						321968, -- [32]
						331718, -- [33]
						325793, -- [34]
						330453, -- [35]
						326997, -- [36]
						334051, -- [37]
						292903, -- [38]
						330843, -- [39]
						294173, -- [40]
						189200, -- [41]
					},
					["PlaterCore"] = 1,
					["Prio"] = 99,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    --envTable.movingArrow.color = scriptTable.config.arrowColor\n    envTable.movingArrow:SetAlpha (scriptTable.config.arrowAlpha)\n    envTable.movingArrow:SetDesaturated (scriptTable.config.desaturateArrow)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    envTable.arrowAnimation = envTable.arrowAnimation or Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.20, self:GetWidth()-16, 0)\n    \n    envTable.arrowAnimation:SetDuration(scriptTable.config.animSpeed)\nend\n\n\n\n\n",
				}, -- [20]
				{
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [321891] = \"Freeze Tag Fixation\", --Illusionary Vulpin - MTS\n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604087921,
					["url"] = "",
					["Icon"] = 841383,
					["Enabled"] = true,
					["Revision"] = 266,
					["Options"] = {
					},
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Fixate On You [Plater]",
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["semver"] = "",
				}, -- [21]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["Time"] = 1579850541,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["Revision"] = 4,
					["Options"] = {
					},
					["Author"] = "Preheat-Illidan",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			--insert code here\n			\n		end\n	",
					["Name"] = "New Script",
					["PlaterCore"] = 1,
					["Desc"] = "",
					["SpellIds"] = {
					},
					["Enabled"] = false,
					["Prio"] = 99,
				}, -- [22]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    local healthBar = unitFrame.healthBar\n    \n    --create a glow \n    envTable.GlowEffect = envTable.GlowEffect or Plater.CreateNameplateGlow (healthBar)\n    envTable.GlowEffect:SetOffset (-27, 25, 6, -8)    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.GlowEffect:Hide() \n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.FlashNameplateBody (unitFrame , \"- run -\" , 0.2)\n    \n    envTable.GlowEffect:Show() \n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["Time"] = 1582344956,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    local healthBar = unitFrame.healthBar\n    \n    --create a glow \n    envTable.GlowEffect = envTable.GlowEffect or Plater.CreateNameplateGlow (healthBar)\n    envTable.GlowEffect:SetOffset (-27, 25, 6, -8)    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 135877,
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.GlowEffect:Hide() \n    \nend\n\n\n",
					["Revision"] = 51,
					["Options"] = {
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.FlashNameplateBody (unitFrame , \"- run -\" , 0.2)\n    \n    envTable.GlowEffect:Show() \n    \nend\n\n\n",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Create a glow in the Thing from Beyond npc nameplate",
					["NpcNames"] = {
						"161895", -- [1]
					},
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["Name"] = "Thing From Beyond",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Prio"] = 99,
					["Enabled"] = false,
				}, -- [23]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["Time"] = 1607982116,
					["NpcNames"] = {
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_red",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Plays a special animation showing the explosion time.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option3",
							["Value"] = 0,
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "Increases the health bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 3,
							["Name"] = "Health Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "healthBarColor",
							["Value"] = {
								1, -- [1]
								0.5843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Health Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Changes the health bar color to this one.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Option 7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Arrow:",
							["Name"] = "Arrow:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "showArrow",
							["Value"] = true,
							["Name"] = "Show Arrow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show an arrow above the nameplate showing the cast bar progress.",
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Arrow alpha.",
							["Min"] = 0,
							["Key"] = "arrowAlpha",
							["Value"] = 0.5,
							["Name"] = "Arrow Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Width.",
							["Min"] = 4,
							["Key"] = "arrowWidth",
							["Value"] = 8,
							["Name"] = "Arrow Width",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "Arrow Height.",
							["Min"] = 4,
							["Key"] = "arrowHeight",
							["Value"] = 8,
							["Name"] = "Arrow Height",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option13",
							["Value"] = 0,
							["Name"] = "Option 13",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Dot Animation:",
							["Name"] = "Dot Animation:",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [13]
						{
							["Type"] = 1,
							["Key"] = "dotColor",
							["Value"] = {
								1, -- [1]
								0.6156862745098, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Adjust the color of the dot animation.",
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot X Offset",
							["Min"] = -10,
							["Key"] = "xOffset",
							["Value"] = 4,
							["Name"] = "Dot X Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Dot Y Offset",
							["Min"] = -10,
							["Key"] = "yOffset",
							["Value"] = 3,
							["Name"] = "Dot Y Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [16]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, envTable.dotAnimation)\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Revision"] = 515,
					["semver"] = "",
					["Desc"] = "Used on casts that make the mob explode or transform if the cast passes.",
					["version"] = -1,
					["Author"] = "Bombad�o-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 5\n    \n    envTable.dotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotColor, scriptTable.config.xOffset, scriptTable.config.yOffset)\n    \n    \nend",
					["Name"] = "Cast - Ultra Important [P]",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-9, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\nend\n\n\n",
					["SpellIds"] = {
						332329, -- [1]
						320103, -- [2]
						321406, -- [3]
						335817, -- [4]
						321061, -- [5]
						320141, -- [6]
						326171, -- [7]
					},
					["PlaterCore"] = 1,
					["Prio"] = 99,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = scriptTable.config.castBarHeight\n    envTable.ShowArrow = scriptTable.config.showArrow\n    envTable.ArrowAlpha = scriptTable.config.arrowAlpha\n    envTable.HealthBarColor = scriptTable.config.healthBarColor\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 16\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\AddOns\\Plater\\images\\spark3]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = scriptTable.config.arrowWidth\n    envTable.topArrow.height = scriptTable.config.arrowHeight\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = scriptTable.config.shakeAmplitude\n    envTable.FrameShake.OriginalDuration = scriptTable.config.shakeDuration\n    envTable.FrameShake.OriginalFrequency = scriptTable.config.shakeFrequency\nend\n\n\n\n\n\n\n\n",
				}, -- [24]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    --check for marks\n    function  envTable.CheckMark (unitId, unitFrame)\n        if (not GetRaidTargetIndex(unitId)) then\n            if (scriptTable.config.onlyInCombat) then\n                if (not UnitAffectingCombat(unitId)) then\n                    return\n                end                \n            end\n            \n            SetRaidTarget(unitId, 8)\n        end       \n    end\nend\n\n\n--163520 - forsworn squad-leader\n--163618 - zolramus necromancer - The Necrotic Wake\n--164506 - anciet captain - theater of pain\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n",
					["Time"] = 1604696441,
					["url"] = "",
					["Icon"] = "Interface\\Worldmap\\GlowSkull_64Grey",
					["Enabled"] = true,
					["Revision"] = 63,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.CheckMark (unitId, unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"163520", -- [1]
						"163618", -- [2]
						"164506", -- [3]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Auto Set Skull",
					["SpellIds"] = {
					},
					["Desc"] = "Auto set skull marker",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Auto set a raid target Skull on the unit.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "onlyInCombat",
							["Value"] = false,
							["Name"] = "Only in Combat",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Set the mark only if the unit is in combat.",
						}, -- [3]
					},
				}, -- [25]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n--[=[\n\n154564 - debug\n\n168098 - empowered coldheart agent\n156212 - coldheart agent\n\n\n\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --check if can change the nameplate color\n    if (scriptTable.config.changeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, scriptTable.config.nameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Time"] = 1604607993,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\media\\skullbones_64",
					["Enabled"] = true,
					["Revision"] = 406,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    Plater.StopDotAnimation(unitFrame.healthBar, unitFrame.healthBar.MainTargetDotAnimation)\n    \n    unitFrame.healthBar.MainTargetDotAnimation = Plater.PlayDotAnimation(unitFrame.healthBar, 2, scriptTable.config.dotsColor, 3, 4) \n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + scriptTable.config.nameplateSizeOffset)\n    \nend\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"156212", -- [1]
						"168098", -- [2]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Main Target [P]",
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option6",
							["Value"] = "Enter the npc name or npcId in the \"Add Trigger\" box and hit \"Add\".",
							["Name"] = "Option 6",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "change to true to change the color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "nameplateColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0.52549019607843, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 6,
							["Desc"] = "increase the nameplate height by this value",
							["Min"] = 0,
							["Key"] = "nameplateSizeOffset",
							["Value"] = 0,
							["Name"] = "Nameplate Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "dotsColor",
							["Value"] = {
								1, -- [1]
								0.71372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Dot Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [9]
					},
				}, -- [26]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.npcInfo = {\n        [164427] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"1\", name = \"Boom!\"}, --reanimated warrior - plaguefall\n        \n        [164414] = {secondCastBar = true, timer = 20, timerId = 321247, altCastId = \"2\", name = \"Boom!\"}, --reanimated mage - plaguefall\n        \n        [164185] = {secondCastBar = true, timer = 20, timerId = 319941, altCastId = \"3\", remaining = 5, name = GetSpellInfo(319941)}, --Echelon - Halls of Atonement\n        \n        [164567] = {secondCastBar = true, altCastId = \"dromanswrath\", debuffTimer = 323059, name = GetSpellInfo(323059), spellIcon = 323059}, --Ingra Maloch -- tirna scythe\n        \n        [165408] = {secondCastBar = true, timer = 20, timerId = 322711, altCastId = \"4\", remaining = 5, name = GetSpellInfo(322711)}, --Halkias - Refracted Sinlight - Halls of Atonement\n        \n        \n        --[154564] = {secondCastBar = true, timerId = \"Test Bar\", altCastId = \"debugcast\", remaining = 5, name = GetSpellInfo(319941), spellIcon = 319941}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n        --[154580] = {secondCastBar = true, altCastId = \"debugcast\", debuffTimer = 204242, name = GetSpellInfo(81297), spellIcon = 81297}, --debug \"Test (1)\" BW \"Test Bar\" DBM --DEBUG\n    }\n    \n    --set the castbar config\n    local config = {\n        iconTexture = \"\",\n        iconTexcoord = {0.1, 0.9, 0.1, 0.9},\n        iconAlpha = 1,\n        iconSize = 14,\n        \n        text = \"Boom!\",\n        textSize = 9,\n        \n        texture = [[Interface\\AddOns\\Plater\\images\\bar_background]],\n        color = \"silver\",\n        \n        isChanneling = false,\n        canInterrupt = false,\n        \n        height = 2,\n        width = Plater.db.profile.plate_config.enemynpc.health_incombat[1],\n        \n        spellNameAnchor = {side = 3, x = 0, y = -2},\n        timerAnchor = {side = 5, x = 0, y = -2},\n    }    \n    \n    function envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, customTime, customStart)\n        --show the cast bar\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                if (npcInfo.remaining) then\n                    local timeLeft = barObject.timer + barObject.start - GetTime()\n                    if (timeLeft > npcInfo.remaining) then\n                        return\n                    end\n                end\n                \n                config.text = npcInfo.name\n                \n                if (npcInfo.spellIcon) then\n                    local _, _, iconTexture = GetSpellInfo(npcInfo.spellIcon)\n                    config.iconTexture = iconTexture\n                else\n                    config.iconTexture = \"\"\n                end\n                \n                Plater.SetAltCastBar(unitFrame.PlateFrame, config, barObject.timer, customStart or barObject.start, npcInfo.altCastId)\n            end\n        else\n            Plater.SetAltCastBar(unitFrame.PlateFrame, config, customTime or npcInfo.timer, customStart, npcInfo.altCastId)            \n        end\n        \n        DetailsFramework:TruncateText(unitFrame.castBar2.Text, unitFrame.castBar2:GetWidth() - 16)\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    Plater.ClearAltCastBar(unitFrame.PlateFrame)\nend",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.timerId) then\n            local barObject = Plater.GetBossTimer(npcInfo.timerId)\n            if (barObject) then\n                local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                if (altCastId ~= npcInfo.altCastId or not unitFrame.castBar2:IsShown()) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n                end\n            end \n            \n        elseif (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                --get the debuff timeleft\n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                local startTime = expirationTime - duration\n                \n                if (not unitFrame.castBar2:IsShown() or unitFrame.castBar2.spellStartTime < startTime) then\n                    envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, startTime)\n                end\n                \n            else \n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604354364,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\Images\\countdown_bar_icon",
					["Enabled"] = true,
					["Revision"] = 206,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    local npcInfo = envTable.npcInfo[envTable._NpcID]\n    \n    if (npcInfo and npcInfo.secondCastBar) then\n        if (npcInfo.debuffTimer) then\n            if (Plater.NameplateHasAura (unitFrame, npcInfo.debuffTimer)) then\n                \n                local name = npcInfo.name\n                local _, _, _, _, duration, expirationTime = AuraUtil.FindAuraByName(name, unitId, \"DEBUFF\")\n                \n                envTable.ShowAltCastBar(npcInfo, unitFrame, unitId, duration, expirationTime-duration)\n            else\n                if (unitFrame.castBar2:IsShown()) then\n                    local altCastId = Plater.GetAltCastBarAltId(unitFrame.PlateFrame)\n                    if (altCastId == npcInfo.altCastId) then\n                        Plater.ClearAltCastBar(unitFrame.PlateFrame)\n                    end                   \n                end                              \n            end\n        else\n            envTable.ShowAltCastBar(npcInfo, unitFrame, unitId)\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["NpcNames"] = {
						"164427", -- [1]
						"164414", -- [2]
						"164185", -- [3]
						"164567", -- [4]
						"165408", -- [5]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Countdown",
					["SpellIds"] = {
					},
					["Desc"] = "Some units has special events without a clear way to show. This script adds a second cast bar to inform the user about it.",
					["Options"] = {
					},
				}, -- [27]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    envTable.lifePercent = {\n        --npcId         percent divisions\n        [154564] = {80, 30},   --debug\n        [164451] = {40}, --dessia the decapirator - theater of pain\n        [164463] = {40}, --Paceran the Virulent - theater of pain\n        [164461] = {40}, -- Sathel the Accursed - theater of pain\n        [165946]= {50}, -- ~mordretha - thather of pain\n        [164501] = {70, 40, 10}, --mistcaller - tina scythe\n        [164218] = {70, 40}, --Lord Chamberlain - Halls of Atonement\n    }\n    \n    function envTable.CreateMarker(unitFrame)\n        unitFrame.healthMarker = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthMarker:SetColorTexture(1, 1, 1)\n        unitFrame.healthMarker:SetSize(1, unitFrame.healthBar:GetHeight())\n        \n        unitFrame.healthOverlay = unitFrame.healthBar:CreateTexture(nil, \"overlay\")\n        unitFrame.healthOverlay:SetColorTexture(1, 1, 1)\n        unitFrame.healthOverlay:SetSize(1, unitFrame.healthBar:GetHeight())\n    end\n    \n    function envTable.UpdateMarkers(unitFrame)\n        local markersTable = envTable.lifePercent[envTable._NpcID]\n        if (markersTable) then\n            local unitLifePercent = envTable._HealthPercent / 100\n            for i, percent in ipairs(markersTable) do\n                percent = percent / 100\n                if (unitLifePercent > percent) then\n                    if (not unitFrame.healthMarker) then\n                        envTable.CreateMarker(unitFrame)\n                    end\n                    \n                    unitFrame.healthMarker:Show()\n                    local width = unitFrame.healthBar:GetWidth()\n                    unitFrame.healthMarker:SetPoint(\"left\", unitFrame.healthBar, \"left\", width*percent, 0)\n                    \n                    local overlaySize = width * (unitLifePercent - percent)\n                    unitFrame.healthOverlay:SetWidth(overlaySize)\n                    unitFrame.healthOverlay:SetPoint(\"left\", unitFrame.healthMarker, \"right\", 0, 0)\n                    \n                    unitFrame.healthMarker:SetVertexColor(Plater:ParseColors(scriptTable.config.indicatorColor))\n                    unitFrame.healthMarker:SetAlpha(scriptTable.config.indicatorAlpha)\n                    \n                    unitFrame.healthOverlay:SetVertexColor(Plater:ParseColors(scriptTable.config.fillColor))\n                    unitFrame.healthOverlay:SetAlpha(scriptTable.config.fillAlpha)\n                    \n                    return\n                end\n            end --end for\n            \n            if (unitFrame.healthMarker and unitFrame.healthMarker:IsShown()) then\n                unitFrame.healthMarker:Hide()\n                unitFrame.healthOverlay:Hide()\n            end\n        end\n    end\nend      \n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    if (unitFrame.healthMarker) then\n        unitFrame.healthMarker:Hide()\n        unitFrame.healthOverlay:Hide()\n    end\nend\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["Time"] = 1606506781,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\health_indicator",
					["Enabled"] = true,
					["Revision"] = 109,
					["semver"] = "",
					["Author"] = "Aelerolor-Torghast",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateMarkers(unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"164451", -- [1]
						"164463", -- [2]
						"164461", -- [3]
						"165946", -- [4]
						"164501", -- [5]
						"164218", -- [6]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Health Markers [P]",
					["SpellIds"] = {
					},
					["Desc"] = "Place a marker into the health bar to indicate when the unit will change phase or cast an important spell.",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option1",
							["Value"] = "Add markers into the health bar to remind you about boss abilities at life percent.",
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "indicatorColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Vertical Line Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Indicator color.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Indicator alpha.",
							["Min"] = 0.1,
							["Key"] = "indicatorAlpha",
							["Value"] = 0.79,
							["Name"] = "Vertical Line Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [4]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "blank line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "fillColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Fill Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Fill color.",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Fill alpha.",
							["Min"] = 0,
							["Key"] = "fillAlpha",
							["Value"] = 0.2,
							["Name"] = "Fill Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
					},
				}, -- [28]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["Time"] = 1607982117,
					["NpcNames"] = {
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar_tank",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option2",
							["Value"] = "Produces a notable effect in the cast bar when a spell from the 'Triggers' starts to cast.",
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Enter the spell name or spellID of the Spell in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "useCastbarColor",
							["Value"] = true,
							["Name"] = "Cast Bar Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "When enabled, changes the cast bar color,",
						}, -- [5]
						{
							["Type"] = 1,
							["Key"] = "castbarColor",
							["Value"] = {
								1, -- [1]
								0.43137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Cast Bar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the cast bar.",
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option7",
							["Value"] = 0,
							["Name"] = "Blank Line",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts it flash rapidly, adjust how fast it flashes. Value is milliseconds.",
							["Min"] = 0.05,
							["Key"] = "flashDuration",
							["Value"] = 0.2,
							["Name"] = "Flash Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "Increases the cast bar height by this value",
							["Min"] = 0,
							["Key"] = "castBarHeight",
							["Value"] = 0,
							["Name"] = "Cast Bar Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [9]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "When the cast starts, there's a small shake in the nameplate, this settings controls how long it takes.",
							["Min"] = 0.1,
							["Key"] = "shakeDuration",
							["Value"] = 0.1,
							["Name"] = "Shake Duration",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [10]
						{
							["Type"] = 2,
							["Max"] = 200,
							["Desc"] = "How strong is the shake.",
							["Min"] = 10,
							["Key"] = "shakeAmplitude",
							["Value"] = 25,
							["Name"] = "Shake Amplitude",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [11]
						{
							["Type"] = 2,
							["Max"] = 80,
							["Desc"] = "How fast the shake moves.",
							["Min"] = 1,
							["Key"] = "shakeFrequency",
							["Value"] = 30,
							["Name"] = "Shake Frequency",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [12]
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    unitFrame.castBar:SetHeight (envTable._DefaultHeight)\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n",
					["Revision"] = 835,
					["semver"] = "",
					["Desc"] = "Cast alert for abilities which only the tank can interrupt.",
					["version"] = -1,
					["Author"] = "Tercioo-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    if (not Plater.IsPlayerTank()) then\n        return\n    end\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --envTable.currentHeight = unitFrame.castBar:GetHeight()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        if (scriptTable.config.useCastbarColor) then\n            self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n        end\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \n    unitFrame.castBar.Spark:SetHeight(unitFrame.castBar:GetHeight())\n    \nend\n\n\n\n\n\n\n\n\n",
					["Name"] = "Cast - Tank Interrupt [P]",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \nend\n\n\n",
					["SpellIds"] = {
						321828, -- [1]
					},
					["PlaterCore"] = 1,
					["Prio"] = 99,
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend",
					["Enabled"] = true,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = scriptTable.config.castbarColor\n    \n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = scriptTable.config.flashDuration\n    \n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = scriptTable.config.castBarHeight\n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, scriptTable.config.shakeDuration, scriptTable.config.shakeAmplitude, scriptTable.config.shakeFrequency, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    envTable.BackgroundFlash.fadeIn = envTable.BackgroundFlash.fadeIn or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    envTable.BackgroundFlash.fadeIn:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    envTable.BackgroundFlash.fadeOut = envTable.BackgroundFlash.fadeOut or Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    envTable.BackgroundFlash.fadeOut:SetDuration(CONFIG_BACKGROUND_FLASH_DURATION/2)\n    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()    \n    \n    \n    \n    \n    \nend\n\n\n",
				}, -- [29]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);    \n    \n    envTable.EnergyAmount.fontsize = scriptTable.config.fontSize\n    envTable.EnergyAmount.fontcolor = scriptTable.config.fontColor\n    envTable.EnergyAmount.outline = scriptTable.config.outline\n    \n    \nend\n\n--[=[\n\n164406 = Shriekwing\n164407 = Sludgefist\n162100 = kryxis the voracious\n162099 = general kaal - sanguine depths\n162329 = Xav the Unfallen - threater of pain\n--]=]",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    local currentPower = UnitPower(unitId)\n    \n    if (currentPower and currentPower > 0) then\n        local maxPower = UnitPowerMax (unitId)\n        local percent = floor (currentPower / maxPower * 100)\n        \n        envTable.EnergyAmount.text = \"\" .. percent;\n        \n        if (scriptTable.config.showLater) then\n            local alpha = (percent -80) * 5\n            alpha = alpha / 100\n            alpha = max(0, alpha)\n            envTable.EnergyAmount:SetAlpha(alpha)\n            \n        else\n            envTable.EnergyAmount:SetAlpha(1.0)\n        end\n        \n        \n    else\n        envTable.EnergyAmount.text = \"\"\n    end\nend\n\n\n\n\n\n\n\n\n",
					["Time"] = 1604357453,
					["url"] = "",
					["Icon"] = 136048,
					["Enabled"] = true,
					["Revision"] = 233,
					["semver"] = "",
					["Author"] = "Celian-Sylvanas",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["NpcNames"] = {
						"164406", -- [1]
						"164407", -- [2]
						"162100", -- [3]
						"162099", -- [4]
						"162329", -- [5]
						"164558", -- [6]
					},
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Unit - Show Energy [Plater]",
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option1",
							["Value"] = 0,
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Show the power of the unit above the nameplate.",
							["Name"] = "script desc",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "Add the unit name or unitId in the \"Add Trigger\" field and press \"Add\".",
							["Name"] = "add trigger",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "showLater",
							["Value"] = true,
							["Name"] = "Show at 80% of Energy",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the energy won't start showing until the unit has 80% energy.",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "option2",
							["Value"] = 0,
							["Name"] = "Option 2",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Text size.",
							["Min"] = 8,
							["Key"] = "fontSize",
							["Value"] = 16,
							["Name"] = "Text Size",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [7]
						{
							["Type"] = 1,
							["Key"] = "fontColor",
							["Value"] = {
								0.80392156862745, -- [1]
								0.80392156862745, -- [2]
								0.80392156862745, -- [3]
								1, -- [4]
							},
							["Name"] = "Font Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Color of the text.",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outline",
							["Value"] = true,
							["Name"] = "Enable Text Outline",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled, the text uses outline.",
						}, -- [9]
					},
				}, -- [30]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        DetailsFramework:SetFontFace (unitFrame.spitefulText, \"2002\")\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.roleIcon = unitFrame:CreateTexture(nil, \"overlay\")\n        unitFrame.roleIcon:SetPoint(\"left\", unitFrame.healthBar, \"left\", 2, 0)\n        unitFrame.targetName = unitFrame:CreateFontString(nil, \"overlay\", \"GameFontNormal\")\n        unitFrame.targetName:SetPoint(\"left\", unitFrame.roleIcon, \"right\", 2, 0)\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetColorTexture(r, g, b, a)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n        \n        if scriptTable.config.switchTargetName then\n            local plateFrame = unitFrame.PlateFrame\n            \n            local target = UnitName(unitFrame.namePlateUnitToken .. \"target\") or UnitName(unitFrame.namePlateUnitToken)\n            \n            if (target and target ~= \"\") then\n                local _, class = UnitClass(unitFrame.namePlateUnitToken .. \"target\")\n                if (class) then\n                    target = DetailsFramework:AddClassColorToText(target, class)\n                end\n                \n                local role = UnitGroupRolesAssigned(unitFrame.namePlateUnitToken .. \"target\")\n                if (role and role ~= \"NONE\") then\n                    target = DetailsFramework:AddRoleIconToText(target, role)\n                end\n                \n                plateFrame.namePlateUnitName = target\n                Plater.UpdateUnitName(plateFrame)\n            end\n        end\n        \n        if scriptTable.config.useTargetingColor then\n            local targeted = UnitIsUnit(unitFrame.namePlateUnitToken .. \"target\", \"player\")\n            if targeted then\n                Plater.SetNameplateColor (unitFrame, scriptTable.config.targetingColor)\n            else\n                Plater.RefreshNameplateColor(unitFrame)\n            end\n        end\n    end\nend",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n        unitFrame.roleIcon:Hide()\n        unitFrame.targetName:Hide()\n    end\nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1611844883,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 186,
					["semver"] = "",
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Time to die Spiteful affix",
					["NpcNames"] = {
						"174773", -- [1]
					},
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Name"] = "M+ Spiteful",
					["version"] = -1,
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option12",
							["Value"] = "Time to Die",
							["Name"] = "Time to Die",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Key"] = "bgWidth",
							["Value"] = 27,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Width",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "bgColor",
							["Value"] = {
								0.5058823529411764, -- [1]
								0.07058823529411765, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Background Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Key"] = "textSize",
							["Value"] = 8,
							["Fraction"] = false,
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Name"] = "Text Size",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "textColor",
							["Value"] = {
								1, -- [1]
								0.5843137254901961, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Text Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
						{
							["Type"] = 6,
							["Name"] = "Option 7",
							["Value"] = 0,
							["Key"] = "option7",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "option11",
							["Value"] = "Targeting",
							["Name"] = "Targeting",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Name"] = "Show Target instead of Name",
							["Value"] = true,
							["Key"] = "switchTargetName",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Name"] = "Change Color if targeting You",
							["Value"] = true,
							["Key"] = "useTargetingColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [9]
						{
							["Type"] = 1,
							["Name"] = "Color if targeting You",
							["Value"] = {
								0.07058823529411765, -- [1]
								0.6196078431372549, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Key"] = "targetingColor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [10]
						{
							["Type"] = 6,
							["Key"] = "option11",
							["Value"] = 0,
							["Name"] = "Option 11",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [11]
					},
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
				}, -- [31]
			},
			["aura_x_offset"] = 0,
			["first_run3"] = true,
			["url"] = "https://wago.io/GEpLXDxjp/5",
			["spell_animations"] = false,
			["hover_highlight_alpha"] = 0.34000000357628,
			["indicator_raidmark_scale"] = 0.75,
			["aura2_y_offset"] = 5,
			["aura_timer"] = false,
			["plate_config"] = {
				["player"] = {
					["spellpercent_text_font"] = "Accidental Presidency",
					["percent_text_enabled"] = false,
					["percent_text_font"] = "Accidental Presidency",
					["power_percent_text_font"] = "Accidental Presidency",
				},
				["friendlyplayer"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						50, -- [1]
					},
					["cast"] = {
						50, -- [1]
					},
					["health_incombat"] = {
						50, -- [1]
						1, -- [2]
					},
					["health"] = {
						50, -- [1]
						1, -- [2]
					},
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
				},
				["friendlynpc"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_font"] = "Accidental Presidency",
					["big_actortitle_text_font"] = "Accidental Presidency",
					["health_incombat"] = {
						nil, -- [1]
						10, -- [2]
					},
					["health"] = {
						105, -- [1]
						10, -- [2]
					},
					["spellname_text_font"] = "Accidental Presidency",
					["level_text_font"] = "Accidental Presidency",
					["big_actorname_text_font"] = "Accidental Presidency",
				},
				["global_health_height"] = 10,
				["global_health_width"] = 85,
				["enemyplayer"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["percent_text_font"] = "Accidental Presidency",
					["spellpercent_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						89, -- [1]
						6, -- [2]
					},
					["cast"] = {
						87, -- [1]
						8, -- [2]
					},
					["health_incombat"] = {
						91, -- [1]
						10, -- [2]
					},
					["health"] = {
						87, -- [1]
						10, -- [2]
					},
					["fixed_class_color"] = {
						nil, -- [1]
						0, -- [2]
						0.007843137254902, -- [3]
					},
					["level_text_font"] = "Accidental Presidency",
					["spellname_text_font"] = "Accidental Presidency",
				},
				["enemynpc"] = {
					["actorname_text_font"] = "Accidental Presidency",
					["quest_color_enemy"] = {
						0.91764705882353, -- [1]
						0, -- [2]
						1, -- [3]
					},
					["spellpercent_text_font"] = "Accidental Presidency",
					["quest_color_neutral"] = {
						nil, -- [1]
						0, -- [2]
						0.95294117647059, -- [3]
					},
					["level_text_size"] = 10,
					["percent_text_color"] = {
						0.96862745098039, -- [1]
						0.94901960784314, -- [2]
						1, -- [3]
					},
					["big_actortitle_text_font"] = "Accidental Presidency",
					["cast"] = {
						85, -- [1]
						11, -- [2]
					},
					["spellpercent_text_size"] = 9,
					["spellname_text_font"] = "Accidental Presidency",
					["actorname_text_size"] = 9,
					["level_text_alpha"] = 1,
					["level_text_anchor"] = {
						["side"] = 6,
						["x"] = 15,
					},
					["percent_show_health"] = false,
					["spellpercent_text_anchor"] = {
						["y"] = 0.44999694824219,
					},
					["percent_text_size"] = 7,
					["actorname_text_spacing"] = 8,
					["percent_text_font"] = "Accidental Presidency",
					["buff_frame_y_offset"] = -3,
					["big_actorname_text_font"] = "Accidental Presidency",
					["cast_incombat"] = {
						85, -- [1]
						11, -- [2]
					},
					["spellname_text_size"] = 9,
					["actorname_text_shadow"] = true,
					["percent_text_outline"] = "NONE",
					["health_incombat"] = {
						85, -- [1]
						10, -- [2]
					},
					["health"] = {
						85, -- [1]
						10, -- [2]
					},
					["actorname_text_color"] = {
						0.96862745098039, -- [1]
						0.98039215686274, -- [2]
					},
					["actorname_text_anchor"] = {
						["y"] = 0.19999694824219,
						["x"] = 1.0999984741211,
						["side"] = 10,
					},
					["percent_text_anchor"] = {
						["y"] = 0.22999572753906,
						["x"] = -0.20000457763672,
						["side"] = 11,
					},
					["level_text_font"] = "Accidental Presidency",
					["level_text_enabled"] = false,
				},
			},
			["ui_parent_target_strata"] = "MEDIUM",
			["aura_y_offset"] = 3.0299987792969,
			["extra_icon_width"] = 18.187076568604,
			["tank"] = {
				["colors"] = {
					["noaggro"] = {
						[3] = 0.58823529411765,
					},
					["nocombat"] = {
						1, -- [1]
						0, -- [2]
						0.12156862745098, -- [3]
					},
					["pulling"] = {
						nil, -- [1]
						0, -- [2]
						0.91764705882353, -- [3]
					},
				},
			},
			["health_statusbar_texture"] = "ElvUI Blank",
			["hook_auto_imported"] = {
				["Aura Reorder"] = 3,
				["Targetting Alpha"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Attacking Specific Unit"] = 1,
				["Jaina Encounter"] = 6,
				["Blockade Encounter"] = 1,
				["Cast Bar Icon Config"] = 2,
				["Hide Neutral Units"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 4,
				["Target Color"] = 3,
				["Execute Range"] = 1,
				["Reorder Nameplate"] = 4,
			},
			["cast_statusbar_color_nointerrupt"] = {
				0.54901960784314, -- [1]
				0.53333333333333, -- [2]
				0.53333333333333, -- [3]
				0.96000000089407, -- [4]
			},
			["first_run2"] = true,
			["color_override_colors"] = {
				[3] = {
					1, -- [1]
					0.14901960784314, -- [2]
					0, -- [3]
				},
				[4] = {
					0.92549019607843, -- [1]
					0.67058823529412, -- [2]
					0, -- [3]
				},
			},
			["aura_show_tooltip"] = true,
			["color_override"] = false,
			["npc_cache"] = {
				[151027] = {
					"Thornguard Burton", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155634] = {
					"Bound Storm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[165872] = {
					"Flesh Crafter", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[151028] = {
					"Thornstalker Nydora", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131577] = {
					"Spirit of Fire", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[34190] = {
					"Hardened Iron Golem", -- [1]
					"Ulduar", -- [2]
				},
				[97285] = {
					"Wind Rush Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[170480] = {
					"Atal'ai Deathwalker", -- [1]
					"De Other Side", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151029] = {
					"Thornspeaker Tavery", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164338] = {
					"Mawsworn Guard", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[140792] = {
					"Breakbeak Bonepicker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145399] = {
					"Wild Starcaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[124927] = {
					"Jun-Ti", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164339] = {
					"Mawsworn Bowman", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[169458] = {
					"Hecutis", -- [1]
					"Castle Nathria", -- [2]
				},
				[133627] = {
					"Tally Zapnabber", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[37134] = {
					"Ymirjar Huntress", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140794] = {
					"Scartalon", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[170483] = {
					"Atal'ai Deathwalker's Spirit", -- [1]
					"De Other Side", -- [2]
				},
				[34191] = {
					"Trash", -- [1]
					"Ulduar", -- [2]
				},
				[145402] = {
					"Frenzied Wildheart", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[69134] = {
					"Kazra'jin", -- [1]
					"Throne of Thunder", -- [2]
				},
				[110340] = {
					"Myonix", -- [1]
					"Eye of the Storm", -- [2]
				},
				[164342] = {
					"Mawsworn Defender", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[168949] = {
					"Risen Bonesoldier", -- [1]
					"De Other Side", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[172021] = {
					"Coldheart Automaton", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[164343] = {
					"Mawsworn Debilitator", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[136190] = {
					"Shadowy Rift", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140797] = {
					"Corpseharvest", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[174069] = {
					"Hulking Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[170486] = {
					"Atal'ai Devoted", -- [1]
					"De Other Side", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[37007] = {
					"Deathbound Ward", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[161273] = {
					"Abyssal Spawn", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[174070] = {
					"Kennel Overseer", -- [1]
					"Castle Nathria", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[147965] = {
					"Volatile Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164857] = {
					"Spriggan Mendbender", -- [1]
					"De Other Side", -- [2]
				},
				[140799] = {
					"Driftstalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174071] = {
					"Vicious Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[170488] = {
					"Son of Hakkar", -- [1]
					"De Other Side", -- [2]
				},
				[135169] = {
					"Spirit Drain Totem", -- [1]
					"The Underrot", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				[140800] = {
					"Cloudwing the Killthief", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[142336] = {
					"Pygmy Octopus", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147967] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[170490] = {
					"Atal'ai High Priest", -- [1]
					"De Other Side", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[164348] = {
					"Wandering Shade", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[13447] = {
					"Corporal Noreg Stormpike", -- [1]
					"Alterac Valley", -- [2]
				},
				[166396] = {
					"Noble Skirmisher", -- [1]
					"Sanguine Depths", -- [2]
				},
				[156159] = {
					"Coldheart Javelineer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[173051] = {
					"Suppressor Xelors", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[34193] = {
					"Clockwork Sapper", -- [1]
					"Ulduar", -- [2]
				},
				[118022] = {
					"Infernal Chaosbringer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[34705] = {
					"Marshal Jacob Alerius", -- [1]
					"Trial of the Champion", -- [2]
				},
				[69906] = {
					"Zandalari High Priest", -- [1]
					"Throne of Thunder", -- [2]
				},
				[164862] = {
					"Weald Shimmermoth", -- [1]
					"De Other Side", -- [2]
				},
				[59915] = {
					"Jasper Guardian", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[60043] = {
					"Jade Guardian", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140293] = {
					"Snowfur Snarler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[10184] = {
					"Onyxia", -- [1]
					"Onyxia's Lair", -- [2]
				},
				[32914] = {
					"Elder Stonebark", -- [1]
					"Ulduar", -- [2]
				},
				[140294] = {
					"Snowfur Wolf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149508] = {
					"Ice Blocked Nathanos", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138247] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140295] = {
					"Snowfur Pup", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153092] = {
					"Venna Seastorm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140296] = {
					"Dampfur the Musky", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[173568] = {
					"Anima Crazed Worker", -- [1]
					"Castle Nathria", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[145927] = {
					"Starcaller Ellana", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163331] = {
					"Stone Legion Nightblade", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[164355] = {
					"Manifestation of Pride", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[168962] = {
					"Reborn Phoenix", -- [1]
					"Castle Nathria", -- [2]
				},
				[126215] = {
					"Zian-Ti Darkweaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[36626] = {
					"Festergut", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[69909] = {
					"Amani'shi Flame Chanter", -- [1]
					"Throne of Thunder", -- [2]
				},
				[148488] = {
					"Unliving Augur", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162309] = {
					"Kul'tharok", -- [1]
					"Theater of Pain", -- [2]
				},
				[140299] = {
					"Ghostfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162310] = {
					"Hunter", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[69910] = {
					"Drakkari Frost Warden", -- [1]
					"Throne of Thunder", -- [2]
				},
				[140300] = {
					"Ripshread", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[162311] = {
					"Death Knight", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140301] = {
					"Scarpaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[162312] = {
					"Druid", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[36627] = {
					"Rotface", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37011] = {
					"The Damned", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[136207] = {
					"Stromgarde Defender", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[162313] = {
					"Mage", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136208] = {
					"Stromgarde Arbalest", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[34196] = {
					"Rune Etched Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[145934] = {
					"Ivan the Mad", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164362] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[168969] = {
					"Gushing Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[136721] = {
					"Circle Spellweaver", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[8905] = {
					"Warbringer Construct", -- [1]
					"Blackrock Depths", -- [2]
				},
				[164363] = {
					"Undying Stonefiend", -- [1]
					"Halls of Atonement", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157709] = {
					"Dreliana", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[166411] = {
					"Forsworn Usurper", -- [1]
					"Spires of Ascension", -- [2]
				},
				[162828] = {
					"Corrosive Digester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[13320] = {
					"Commander Karl Philips", -- [1]
					"Alterac Valley", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[161293] = {
					"Neglected Guild Bank", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[174090] = {
					"Nathrian Hierarch", -- [1]
					"Castle Nathria", -- [2]
				},
				[162317] = {
					"Gorechop", -- [1]
					"Theater of Pain", -- [2]
				},
				[34069] = {
					"Molten Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[34197] = {
					"Chamber Overseer", -- [1]
					"Ulduar", -- [2]
				},
				[162318] = {
					"Monk", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[168973] = {
					"High Torturer Darithos", -- [1]
					"Castle Nathria", -- [2]
				},
				[174092] = {
					"Nathrian Gargon Rider", -- [1]
					"Castle Nathria", -- [2]
				},
				[154129] = {
					"Burning Emberguard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[137238] = {
					"Alliance Arbalest", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[162320] = {
					"Shaman", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[90134] = {
					"MoonMoonTank", -- [1]
					"Isle of Conquest", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[154131] = {
					"Molten Fury", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[163857] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[34198] = {
					"Iron Mender", -- [1]
					"Ulduar", -- [2]
				},
				[165905] = {
					"Son of Hakkar", -- [1]
					"De Other Side", -- [2]
				},
				[155156] = {
					"Jaina Proudmoore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[69916] = {
					"Gurubashi Berserker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[161812] = {
					"Faceless Ruiner", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[130318] = {
					"Slitherblade Prophet", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155158] = {
					"First Arcanist Thalyssra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[167955] = {
					"Sanguine Cadet", -- [1]
					"Sanguine Depths", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				[161813] = {
					"K'thir Assassin", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[133660] = {
					"BomBot 9000", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37782] = {
					"Flesh-eating Insect", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[167956] = {
					"Dark Acolyte", -- [1]
					"Sanguine Depths", -- [2]
				},
				[34199] = {
					"Lightning Charged Iron Dwarf", -- [1]
					"Ulduar", -- [2]
				},
				[101398] = {
					"Psyfiend", -- [1]
					"Warsong Gulch", -- [2]
				},
				[162326] = {
					"Priest", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[166933] = {
					"Ventun the Ravenous", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[163862] = {
					"Defender of Many Eyes", -- [1]
					"Plaguefall", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[23694] = {
					"Pulsing Pumpkin", -- [1]
					"Scarlet Monastery", -- [2]
				},
				[140828] = {
					"Morningdew", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174100] = {
					"Nathrian Singuard", -- [1]
					"Castle Nathria", -- [2]
				},
				[162327] = {
					"Rogue", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[155161] = {
					"Shandris Feathermoon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139805] = {
					"Mechanical Guardhound", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129552] = {
					"Monzumi", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140829] = {
					"Autumnbreeze", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[165911] = {
					"Loyal Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[162328] = {
					"Warlock", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[155162] = {
					"Lor'themar Theron", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139806] = {
					"Venture Demolitions Expert", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[162329] = {
					"Xav the Unfallen", -- [1]
					"Theater of Pain", -- [2]
				},
				[139807] = {
					"Venture Surveyor", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136224] = {
					"Stromgarde Spellweaver", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[165913] = {
					"Ghastly Parishioner", -- [1]
					"Halls of Atonement", -- [2]
				},
				[162330] = {
					"Demon Hunter", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[151581] = {
					"Horrific Vision", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139808] = {
					"Venture Oaf", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[167962] = {
					"Defunct Dental Drill", -- [1]
					"De Other Side", -- [2]
				},
				[139809] = {
					"Venture Acquisitions Specialist", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168986] = {
					"Skeletal Raptor", -- [1]
					"De Other Side", -- [2]
				},
				[169498] = {
					"Plague Bomb", -- [1]
					"Plaguefall", -- [2]
				},
				[149535] = {
					"Icebound Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[13257] = {
					"Murgot Deepforge", -- [1]
					"Alterac Valley", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[167963] = {
					"Headless Client", -- [1]
					"De Other Side", -- [2]
				},
				[37016] = {
					"Skybreaker Luminary", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37144] = {
					"Skybreaker Marksman", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[33433] = {
					"Suit of Armor", -- [1]
					"Ulduar", -- [2]
				},
				[167964] = {
					"4.RF-4.RF", -- [1]
					"De Other Side", -- [2]
				},
				[135716] = {
					"Nightsaber Hunter", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168988] = {
					"Overgrowth", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[137764] = {
					"Veteran Sorcerer", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[155680] = {
					"Deephive Summoner", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[135717] = {
					"Wild Nightsaber", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140324] = {
					"Stonehusk Harvester", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[60051] = {
					"Cobalt Guardian", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[167966] = {
					"Experimental Sludge", -- [1]
					"De Other Side", -- [2]
				},
				[20048] = {
					"Crimson Hand Centurion", -- [1]
					"Tempest Keep", -- [2]
				},
				[140325] = {
					"Stonehusk Scarab", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[161312] = {
					"Crushing Tendril", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165919] = {
					"Skeletal Marauder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[37017] = {
					"Skybreaker Assassin", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140838] = {
					"Mischievous Flood", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[99868] = {
					"Fenryr", -- [1]
					"Halls of Valor", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[33818] = {
					"Twilight Adherent", -- [1]
					"Ulduar", -- [2]
				},
				[135720] = {
					"Moon-Touched Huntress", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168992] = {
					"Risen Cultist", -- [1]
					"De Other Side", -- [2]
				},
				[140839] = {
					"Water Spirit", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130325] = {
					"Deepsea Viseclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130581] = {
					"Sand-Eye", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139304] = {
					"Solid Snake", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135721] = {
					"Asha'ne", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[165410] = {
					"High Adjudicator Aleez", -- [1]
					"Halls of Atonement", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[155685] = {
					"Deephive Soldier", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[135722] = {
					"Twilight Prowler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140841] = {
					"Snickering Ripple", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[155686] = {
					"Azsh'ari Venomwatcher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139818] = {
					"Security Officer Durk", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[115226] = {
					"Ravenian", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140842] = {
					"Ebb", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[33819] = {
					"Twilight Frost Mage", -- [1]
					"Ulduar", -- [2]
				},
				[135724] = {
					"Brushstalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[140843] = {
					"Air Spirit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163366] = {
					"Magus of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155688] = {
					"Azsh'ari Frostbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[78116] = {
					"Water Elemental", -- [1]
					"The Eternal Palace", -- [2]
				},
				[148522] = {
					"Ice Block", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[173604] = {
					"Sinister Antiquarian", -- [1]
					"Castle Nathria", -- [2]
				},
				[11946] = {
					"Drek'Thar", -- [1]
					"Alterac Valley", -- [2]
				},
				[171557] = {
					"Shade of Bargast", -- [1]
					"Castle Nathria", -- [2]
				},
				[155689] = {
					"Zanj'ir Gladiator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[20049] = {
					"Crimson Hand Blood Knight", -- [1]
					"Tempest Keep", -- [2]
				},
				[140333] = {
					"Steelshell", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130584] = {
					"Gorespike", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[69927] = {
					"Zandalari Prelate", -- [1]
					"Throne of Thunder", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140846] = {
					"Impish Breeze", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[37531] = {
					"Frostwarden Handler", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[33820] = {
					"Twilight Pyromancer", -- [1]
					"Ulduar", -- [2]
				},
				[129305] = {
					"Rapacious Fathomjaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140335] = {
					"Nightscale Screecher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[144942] = {
					"Spark Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163882] = {
					"Decaying Flesh Giant", -- [1]
					"Plaguefall", -- [2]
				},
				[140336] = {
					"Nightscale Wind Serpent", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145967] = {
					"Ray", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155693] = {
					"Subdued Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140337] = {
					"Nightscale Hatchling", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144944] = {
					"Thirsting Bloodsucker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[61334] = {
					"Cursed Mogu Sculpture", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[37148] = {
					"Skybreaker Summoner", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37532] = {
					"Frostwing Whelp", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140339] = {
					"Vale Terror", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157231] = {
					"Shad'har the Insatiable", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[20050] = {
					"Crimson Hand Inquisitor", -- [1]
					"Tempest Keep", -- [2]
				},
				[140341] = {
					"Cloudscraper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[14186] = {
					"Ravak Grimtotem", -- [1]
					"Alterac Valley", -- [2]
				},
				[149555] = {
					"Abomination", -- [1]
					"Isle of Conquest", -- [2]
				},
				[14282] = {
					"Frost Wolf Bloodhound", -- [1]
					"Alterac Valley", -- [2]
				},
				[37021] = {
					"Skybreaker Vicar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37149] = {
					"Kor'kron Necrolyte", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[115488] = {
					"Infused Pyromancer", -- [1]
					"Return to Karazhan", -- [2]
				},
				[149556] = {
					"Eternal Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[37533] = {
					"Rimefang", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[33822] = {
					"Twilight Guardian", -- [1]
					"Ulduar", -- [2]
				},
				[135736] = {
					"Gore", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140343] = {
					"Razorwing", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140855] = {
					"Trickle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[14762] = {
					"Dun Baldar North Marshal", -- [1]
					"Alterac Valley", -- [2]
				},
				[156212] = {
					"Coldheart Agent", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140344] = {
					"Sky Viper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[149558] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145975] = {
					"Stonehide Buck", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163891] = {
					"Rotmarrow Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[156213] = {
					"Coldheart Guardian", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144952] = {
					"Hookfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145976] = {
					"Stonehide Bull", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163892] = {
					"Rotting Slimeclaw", -- [1]
					"Plaguefall", -- [2]
				},
				[37022] = {
					"Blighted Abomination", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[157238] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[145977] = {
					"Mammoth Stonehide", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37662] = {
					"Darkfallen Commander", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[151096] = {
					"Hati", -- [1]
					"The Eternal Palace", -- [2]
				},
				[33823] = {
					"Twilight Slayer", -- [1]
					"Ulduar", -- [2]
				},
				[144954] = {
					"Bloodgorger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130335] = {
					"Gritplate Crystaleye", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138300] = {
					"Blessed Banner", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[163894] = {
					"Blighted Spinebreaker", -- [1]
					"Plaguefall", -- [2]
				},
				[164406] = {
					"Shriekwing", -- [1]
					"Castle Nathria", -- [2]
				},
				[161335] = {
					"Void Horror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146491] = {
					"Phantom of Retribution", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[151610] = {
					"Amathet Guardian", -- [1]
					"Halls of Origination", -- [2]
				},
				[164407] = {
					"Sludgefist", -- [1]
					"Castle Nathria", -- [2]
				},
				[136254] = {
					"Stromgarde Knight", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[144956] = {
					"Razorbite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146492] = {
					"Phantom of Rage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[37023] = {
					"Plague Scientist", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[164920] = {
					"Drust Soulcleaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[144957] = {
					"Shali'i", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174134] = {
					"Lord Evershade", -- [1]
					"Castle Nathria", -- [2]
				},
				[146493] = {
					"Phantom of Slaughter", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33824] = {
					"Twilight Shadowblade", -- [1]
					"Ulduar", -- [2]
				},
				[156219] = {
					"Coldheart Scout", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[164921] = {
					"Drust Harvester", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[140863] = {
					"Rubywind Prankster", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[166969] = {
					"Baroness Frieda", -- [1]
					"Castle Nathria", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140864] = {
					"Gigglefit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[165946] = {
					"Mordretha, the Endless Empress", -- [1]
					"Theater of Pain", -- [2]
				},
				[166970] = {
					"Lord Stavros", -- [1]
					"Castle Nathria", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140353] = {
					"Brightscale Coilfang", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129826] = {
					"Brineshell Snapclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130338] = {
					"Dustfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[166971] = {
					"Castellan Niklaus", -- [1]
					"Castle Nathria", -- [2]
				},
				[138818] = {
					"Bloodwake Warbringer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[139842] = {
					"Risen Ravasaur", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[173114] = {
					"Invasive Decayfly", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[154175] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[37664] = {
					"Darkfallen Archmage", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[138819] = {
					"Bloodwake Marauder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152128] = {
					"Orgozoa", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129827] = {
					"Brineshell Crusher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149569] = {
					"Dazari Worshipper", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138308] = {
					"Ook-Aak", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138820] = {
					"Bloodwake Vrykul", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164414] = {
					"Reanimated Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[140356] = {
					"Brightscale Hatchling", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[19668] = {
					"Shadowfiend", -- [1]
					"Isle of Conquest", -- [2]
				},
				[138309] = {
					"Nibnub", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138821] = {
					"Bloodwake Warmaiden", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[167998] = {
					"Portal Guardian", -- [1]
					"Theater of Pain", -- [2]
				},
				[140357] = {
					"Venomreaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[14187] = {
					"Athramanis", -- [1]
					"Alterac Valley", -- [2]
				},
				[14283] = {
					"Stormpike Owl", -- [1]
					"Alterac Valley", -- [2]
				},
				[138822] = {
					"Bloodwake Harpooner", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[167999] = {
					"Echo of Sin", -- [1]
					"Castle Nathria", -- [2]
				},
				[156226] = {
					"Coldheart Binder", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140358] = {
					"Sorrowcall", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37665] = {
					"Darkfallen Lieutenant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[138823] = {
					"Bloodwake Wayfinder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140359] = {
					"Thunderhawk Devourer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[21268] = {
					"Netherstrand Longbow", -- [1]
					"Tempest Keep", -- [2]
				},
				[14763] = {
					"Dun Baldar South Marshal", -- [1]
					"Alterac Valley", -- [2]
				},
				[138824] = {
					"Halfid Ironeye", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140360] = {
					"Sunback", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138825] = {
					"Ingathora Blood-Drinker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139337] = {
					"Icetusk Blood-Drinker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129318] = {
					"Sandskitter Crab", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140361] = {
					"Darkshadow the Omen", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129830] = {
					"Clackclaw the Behemoth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138826] = {
					"Leikneir the Brave", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168003] = {
					"Empowered Coldheart Ascendant", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[37026] = {
					"Skybreaker Sorcerer", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140362] = {
					"Shimmerwing", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[37666] = {
					"Darkfallen Tactician", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[33699] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[168004] = {
					"Empowered Imperial Consular", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157255] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167493] = {
					"Venomous Sniper", -- [1]
					"Plaguefall", -- [2]
				},
				[139340] = {
					"Icetusk Necromancer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[11948] = {
					"Vanndar Stormpike", -- [1]
					"Alterac Valley", -- [2]
				},
				[138829] = {
					"Ingel the Cunning", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139341] = {
					"Icetusk Shadowcaster", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136270] = {
					"Captain Nials", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[76597] = {
					"Frost Wolf Alpha", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[138830] = {
					"Thorvast, Guided by the Stars", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135247] = {
					"Varigg", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[144973] = {
					"Kaldorei Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[33572] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[138831] = {
					"Horvuld Oceanscythe", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135248] = {
					"Briona the Bloodthirsty", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135760] = {
					"7th Legion Marine", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[21269] = {
					"Devastation", -- [1]
					"Tempest Keep", -- [2]
				},
				[139344] = {
					"Drakani Death-Defiler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[153165] = {
					"Custodian Thonar", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163915] = {
					"Hatchling Nest", -- [1]
					"Plaguefall", -- [2]
				},
				[164427] = {
					"Reanimated Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[140369] = {
					"Cryptseeker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173641] = {
					"Nathrian Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134739] = {
					"Purification Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[139346] = {
					"Soul-Speaker Galani", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[32933] = {
					"Left Arm", -- [1]
					"Ulduar", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155215] = {
					"Faeleaf Lasher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139347] = {
					"Berserker Gola", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156239] = {
					"Dark Ascended Corrus", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152656] = {
					"Deadsoul Stalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[170572] = {
					"Atal'ai Hoodoo Hexxer", -- [1]
					"De Other Side", -- [2]
				},
				[155216] = {
					"Faeleaf Warden", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139348] = {
					"Baga the Frostshield", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[99891] = {
					"Storm Drake", -- [1]
					"Halls of Valor", -- [2]
				},
				[138837] = {
					"Zara'thik Ambershaper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139349] = {
					"Grave-Caller Muja", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156241] = {
					"Monstrous Guardian", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[14188] = {
					"Dirk Swindle", -- [1]
					"Alterac Valley", -- [2]
				},
				[65310] = {
					"Turnip Punching Bag", -- [1]
					"Tol Dagor", -- [2]
				},
				[138838] = {
					"Zara'thik Mantid", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[37029] = {
					"Kor'kron Reaver", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[173134] = {
					"Darksworn Goliath", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155219] = {
					"Gormling Spitter", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139351] = {
					"Shadowspeaker Angolo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[113201] = {
					"Joshua", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[21270] = {
					"Cosmic Infuser", -- [1]
					"Tempest Keep", -- [2]
				},
				[14764] = {
					"Icewing Marshal", -- [1]
					"Alterac Valley", -- [2]
				},
				[138840] = {
					"Zara'thik Impaler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139352] = {
					"Death-Caller Majuli", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156244] = {
					"Winged Automaton", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[173136] = {
					"Blightsmasher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[136793] = {
					"Circle Apprentice", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[138841] = {
					"Zara'thik Battlesinger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139353] = {
					"Unliving Champion", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[60576] = {
					"Stone Quilen", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[140377] = {
					"Duneshell Harvester", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149591] = {
					"Rastari Marksman", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138842] = {
					"Ta'kil the Resonator", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139354] = {
					"Butun the Boneripper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140378] = {
					"Duneshell Broodwatcher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174162] = {
					"Countess Gloomveil", -- [1]
					"Castle Nathria", -- [2]
				},
				[151128] = {
					"Lord of Locks", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139355] = {
					"Guran the Frostblade", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[148569] = {
					"Breakwater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138844] = {
					"Ya'vik the Imperial Blade", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[159320] = {
					"Amahtet", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139357] = {
					"Icetusk Shambler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138846] = {
					"Amberwinged Mindsinger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[37031] = {
					"Kor'kron Oracle", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140382] = {
					"Jeweled Harvester", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[45477] = {
					"Gust Soldier", -- [1]
					"The Vortex Pinnacle", -- [2]
				},
				[170071] = {
					"Mawsworn Shadestalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[138847] = {
					"Battle-Mender Ka'vaz", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140383] = {
					"Jeweled Scarab", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157275] = {
					"Darkwhisper Disciple", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[21271] = {
					"Infinity Blades", -- [1]
					"Tempest Keep", -- [2]
				},
				[138848] = {
					"Blade-Dancer Zorlak", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139360] = {
					"Risen Icetusk Brute", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140384] = {
					"Jeweled Broodwatcher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[8910] = {
					"Blazing Fireguard", -- [1]
					"Blackrock Depths", -- [2]
				},
				[138849] = {
					"Hivelord Vix'ick", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173145] = {
					"Gorging Mite", -- [1]
					"Castle Nathria", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[81726] = {
					"Gaul Dun Firok", -- [1]
					"Ashran", -- [2]
				},
				[152159] = {
					"Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[173146] = {
					"Winged Ravager", -- [1]
					"Castle Nathria", -- [2]
				},
				[144993] = {
					"Crazed Thistlebear", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[37544] = {
					"Spire Gargoyle", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[38184] = {
					"Corrupted Ymirjar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[165469] = {
					"Nathrian Enforcer", -- [1]
					"Castle Nathria", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[165470] = {
					"Nathrian Executor", -- [1]
					"Castle Nathria", -- [2]
				},
				[164447] = {
					"Skuld", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[165471] = {
					"Nathrian Duelist", -- [1]
					"Castle Nathria", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				[61347] = {
					"Kingsguard", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[32938] = {
					"Flash Freeze", -- [1]
					"Ulduar", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[165472] = {
					"Nathrian Siphoner", -- [1]
					"Castle Nathria", -- [2]
				},
				[37545] = {
					"Spire Minion", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[174175] = {
					"Loyal Stoneborn", -- [1]
					"Halls of Atonement", -- [2]
				},
				[172128] = {
					"Hero", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[164450] = {
					"Dealer Xy'exa", -- [1]
					"De Other Side", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[165474] = {
					"Nathrian Assassin", -- [1]
					"Castle Nathria", -- [2]
				},
				[10990] = {
					"Alterac Ram", -- [1]
					"Alterac Valley", -- [2]
				},
				[151654] = {
					"Deuce Mecha-Buffer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[96574] = {
					"Stormforged Sentinel", -- [1]
					"Halls of Valor", -- [2]
				},
				[60708] = {
					"Meng the Demented", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[61348] = {
					"Lorewalker Cho", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[37034] = {
					"Kor'kron Templar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[148584] = {
					"Archmage Mordent Evenshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[127799] = {
					"Dazar'ai Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[37546] = {
					"Frenzied Abomination", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[154727] = {
					"Sun Prophet Tenhamen", -- [1]
					"Halls of Origination", -- [2]
				},
				[134764] = {
					"Clattershell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[97087] = {
					"Valarjar Champion", -- [1]
					"Halls of Valor", -- [2]
				},
				[126776] = {
					"Slobbering Fiend", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[160871] = {
					"Possessed Package", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[149098] = {
					"Maiev Shadowsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138349] = {
					"Vengeful Ghost", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[134766] = {
					"Wavespitter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[164967] = {
					"Doctor Ickus", -- [1]
					"Plaguefall", -- [2]
				},
				[153194] = {
					"Briny Bubble", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149611] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134767] = {
					"Deathclaw Egg-Mother", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[37035] = {
					"Kor'kron Vanquisher", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[61989] = {
					"Cursed Mogu Sculpture", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[134768] = {
					"Sandskitter the Relentless", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[172647] = {
					"Parasitic Infestor", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137328] = {
					"Lightforged Champion", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[151149] = {
					"Hati", -- [1]
					"The Eternal Palace", -- [2]
				},
				[8911] = {
					"Fireguard Destroyer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[60710] = {
					"Subetai the Swift", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[165483] = {
					"Court Hierarch", -- [1]
					"Castle Nathria", -- [2]
				},
				[143985] = {
					"Absorb-o-Tron", -- [1]
					"The Eternal Palace", -- [2]
				},
				[141938] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[167532] = {
					"Heavin the Breaker", -- [1]
					"Theater of Pain", -- [2]
				},
				[164461] = {
					"Sathel the Accursed", -- [1]
					"Theater of Pain", -- [2]
				},
				[157807] = {
					"Mawsworn Soulweaver", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[141939] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[167533] = {
					"Advent Nevermore", -- [1]
					"Theater of Pain", -- [2]
				},
				[170093] = {
					"Mawsworn Seeker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[167534] = {
					"Rek the Hardened", -- [1]
					"Theater of Pain", -- [2]
				},
				[164463] = {
					"Paceran the Virulent", -- [1]
					"Theater of Pain", -- [2]
				},
				[157809] = {
					"Mawsworn Darkcaster", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[130620] = {
					"Frostfencer Seraphi", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155250] = {
					"Decayspeaker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[119103] = {
					"Sable Enforcer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157810] = {
					"Mawsworn Endbringer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155251] = {
					"Elder Longbranch", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[155763] = {
					"Darkweaver Kar'dress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[33966] = {
					"Crusher Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[21274] = {
					"Staff of Disintegration", -- [1]
					"Tempest Keep", -- [2]
				},
				[130621] = {
					"Squallshaper Bryson", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155764] = {
					"Rak'sha the Swift", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167538] = {
					"Dokigg the Brutalizer", -- [1]
					"Theater of Pain", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146552] = {
					"Kul Tiran Tideweaver", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139386] = {
					"Forked-Tongue", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37038] = {
					"Vengeful Fleshreaper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[174194] = {
					"Court Executor", -- [1]
					"Castle Nathria", -- [2]
				},
				[146553] = {
					"Kul Tiran Strongarm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139387] = {
					"Nassa the Cold-Blooded", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[136828] = {
					"Witherbranch Warrior", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139388] = {
					"Zess'ez", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[35119] = {
					"Eadric the Pure", -- [1]
					"Trial of the Champion", -- [2]
				},
				[136829] = {
					"Witherbranch Axe Thrower", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[158328] = {
					"Il'gynoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139389] = {
					"Steelscale Volshasis", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[136830] = {
					"Witherbranch Headhunter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[174197] = {
					"Battlefield Ritualist", -- [1]
					"Theater of Pain", -- [2]
				},
				[69455] = {
					"Zandalari Water-Binder", -- [1]
					"Throne of Thunder", -- [2]
				},
				[139390] = {
					"Scaleguard Sarrisz", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136831] = {
					"Witherbranch Witch Doctor", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139391] = {
					"Darkwave Assassin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136832] = {
					"Witherbranch Berserker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150653] = {
					"Blackwater Behemoth", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139392] = {
					"Mirelurk Saurok", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136833] = {
					"Witherbranch Venom Priest", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134786] = {
					"Spineclaw Sandsnapper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139393] = {
					"Mirelurk Clutchguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148607] = {
					"Kal'ia Pa'kuaya", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[36272] = {
					"Apothecary Frye", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[166523] = {
					"Vesper Totem", -- [1]
					"Ashran", -- [2]
				},
				[138370] = {
					"Horko", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134787] = {
					"Spineclaw Crab", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139394] = {
					"Mirelurk Bog Priest", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[13359] = {
					"Frostwolf Bowman", -- [1]
					"Alterac Valley", -- [2]
				},
				[173178] = {
					"Stone Legion Goliath", -- [1]
					"Castle Nathria", -- [2]
				},
				[136835] = {
					"Kin'toga Beastbane", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[166524] = {
					"Deathwalker", -- [1]
					"Theater of Pain", -- [2]
				},
				[134788] = {
					"Spineclaw Rockshell", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139395] = {
					"Mirelurk Bogtender", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168572] = {
					"Fungi Stormer", -- [1]
					"Plaguefall", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136836] = {
					"Shadowbreaker Urzula", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				[114247] = {
					"The Curator", -- [1]
					"Return to Karazhan", -- [2]
				},
				[134789] = {
					"Monstrous Spineclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[163966] = {
					"Dread Siphonist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[136837] = {
					"Venomancer Ant'su", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139397] = {
					"Mirelurk Lurker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168574] = {
					"Pestilent Harvester", -- [1]
					"Plaguefall", -- [2]
				},
				[148611] = {
					"Yoru'cha", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136838] = {
					"Zgordo the Brutalizer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[149635] = {
					"Blooming Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[162432] = {
					"Awakened Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138374] = {
					"Sand Fur", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134791] = {
					"Luminous Crawler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139398] = {
					"Mirelurk Assassin", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136839] = {
					"Mrogan", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134280] = {
					"Vindicator Baatul", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138887] = {
					"Bloodwake Mystic", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139399] = {
					"Mirelurk Basher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148613] = {
					"Commander Broadside", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132745] = {
					"Frostscale Wanderer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163458] = {
					"Forsworn Castigator", -- [1]
					"Spires of Ascension", -- [2]
				},
				[139400] = {
					"Mirelurk Rivercaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135817] = {
					"Zephyr", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148614] = {
					"Kul Tiran Cannoneer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136841] = {
					"Thu'zun the Vile", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[174208] = {
					"Court Executor", -- [1]
					"Castle Nathria", -- [2]
				},
				[138889] = {
					"Uvuld the Forseer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168578] = {
					"Fungalmancer", -- [1]
					"Plaguefall", -- [2]
				},
				[140425] = {
					"Surefoot", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126023] = {
					"Harbor Saurid", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134283] = {
					"Anchorite Lanna", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138890] = {
					"Dargulf the Spirit-Seeker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168579] = {
					"Fen Hatchling", -- [1]
					"Plaguefall", -- [2]
				},
				[140426] = {
					"Moonbeard", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145033] = {
					"Arctic Hunter", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174210] = {
					"Blighted Sludge-Spewer", -- [1]
					"Theater of Pain", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[155271] = {
					"Abyssal Spearhunter", -- [1]
					"The Eternal Palace", -- [2]
				},
				[168580] = {
					"Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[148617] = {
					"Akunda the Devout", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136844] = {
					"Sandscalp Warrior", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158343] = {
					"Organ of Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[114251] = {
					"Galindre", -- [1]
					"Return to Karazhan", -- [2]
				},
				[155272] = {
					"Blackwater Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[127048] = {
					"Drywhisker Digger", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[131726] = {
					"Gunnolf the Ferocious", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140428] = {
					"Chasm-Jumper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136845] = {
					"Sandscalp Axe Thrower", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[104014] = {
					"Dastardly Thief", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[155273] = {
					"Garval the Vanquisher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131727] = {
					"Fenrae the Cunning", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[100943] = {
					"Earthen Wall Totem", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136846] = {
					"Sandscalp Blood Drinker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114252] = {
					"Mana Devourer", -- [1]
					"Return to Karazhan", -- [2]
				},
				[134799] = {
					"Fathomclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127049] = {
					"Drywhisker Surveyor", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[131728] = {
					"Raul the Tenacious", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140430] = {
					"Craghoof Bounder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136847] = {
					"Sandscalp Shadow Hunter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[175238] = {
					"Arch-Tyrant Zerios", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134800] = {
					"Hardened Snapjaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131729] = {
					"Lyco", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[173191] = {
					"Soulstalker V'lara", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[136848] = {
					"Sandscalp Soothsayer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171656] = {
					"Venomous Sniper Captain", -- [1]
					"Plaguefall", -- [2]
				},
				[140432] = {
					"Craghoof Leaper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136849] = {
					"Sandscalp Berserker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[104016] = {
					"Covetous Hoarder", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[134802] = {
					"Razorback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148623] = {
					"Echo of Gonk", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145040] = {
					"Llorin the Clever", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69465] = {
					"Jin'rokh the Breaker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[155790] = {
					"Mawsworn Acolyte", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[148624] = {
					"Echo of Pa'ku", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[145041] = {
					"Swifttail Stalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138387] = {
					"Mangol", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134804] = {
					"Timeless Runeback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155791] = {
					"Horrific Shrieker", -- [1]
					"The Eternal Palace", -- [2]
				},
				[148625] = {
					"Echo of Krag'wa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134805] = {
					"Wandering Behemoth", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139412] = {
					"Gashasz", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135829] = {
					"Dustwind", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140436] = {
					"Snorthoof", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138389] = {
					"Smasha", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134806] = {
					"Bloodsnapper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155793] = {
					"Skeletal Remains", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[20062] = {
					"Grand Astromancer Capernian", -- [1]
					"Tempest Keep", -- [2]
				},
				[140437] = {
					"Slow Olo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134807] = {
					"Ancient Spineshell", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139414] = {
					"Mire Priest Vassz", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168591] = {
					"Ravenous Dreadbat", -- [1]
					"Sanguine Depths", -- [2]
				},
				[140438] = {
					"Old Longtooth", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[95061] = {
					"Greater Fire Elemental", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[138391] = {
					"Norko the Thrower", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37813] = {
					"Deathbringer Saurfang", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139415] = {
					"Slitherscale", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140439] = {
					"Muskflank Herdleader", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[165521] = {
					"Lady Inerva Darkvein", -- [1]
					"Castle Nathria", -- [2]
				},
				[38453] = {
					"NoahWhite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138392] = {
					"Bono", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139416] = {
					"Volshas", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138393] = {
					"Biter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[168594] = {
					"Chamber Sentinel", -- [1]
					"Sanguine Depths", -- [2]
				},
				[140441] = {
					"Muskflank Calf", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136858] = {
					"Jan'li", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130638] = {
					"Vicejaw Crocolisk", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139418] = {
					"Stagnant One", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[160405] = {
					"Angry Treant Chair Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140442] = {
					"Muskflank Yak", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[173714] = {
					"Mistveil Nightblossom", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139419] = {
					"High Oracle Asayza", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[164501] = {
					"Mistcaller", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[140443] = {
					"Muskflank Charger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136860] = {
					"Tracker Vu'ka", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130639] = {
					"Vicejaw Chomper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147098] = {
					"Spirit of Xuen", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135837] = {
					"Cyclonic Lieutenant", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140444] = {
					"Muskflank Bull", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136861] = {
					"Duskstalker Kuli", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[20063] = {
					"Master Engineer Telonicus", -- [1]
					"Tempest Keep", -- [2]
				},
				[136862] = {
					"Orgo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130640] = {
					"Vicejaw Sawtooth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[135839] = {
					"Swampgas", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136863] = {
					"Great Mota", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140447] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[165529] = {
					"Depraved Collector", -- [1]
					"Halls of Atonement", -- [2]
				},
				[147614] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[164506] = {
					"Ancient Captain", -- [1]
					"Theater of Pain", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136865] = {
					"Uzan the Sandreaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[95834] = {
					"Valarjar Mystic", -- [1]
					"Halls of Valor", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[140449] = {
					"Thickflank", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[126291] = {
					"Alliance Footman", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140450] = {
					"Dunu the Blind", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135844] = {
					"Lord Sumar", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140451] = {
					"Doting Calfmother", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145058] = {
					"Shadefeather Raven", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134821] = {
					"Vilegaze Petrifier", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122965] = {
					"Vol'kaal", -- [1]
					"Atal'Dazar", -- [2]
				},
				[164510] = {
					"Shambling Arbalest", -- [1]
					"Theater of Pain", -- [2]
				},
				[140452] = {
					"Pikehorn the Sleeper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145059] = {
					"Cunning Nightwing", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134822] = {
					"Gritplate Matriarch", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139429] = {
					"Stonebound Warrior", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[160416] = {
					"Angry Ale Barrel Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140453] = {
					"Bramblefur Herdleader", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145060] = {
					"Monstrous Shadefeather", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130644] = {
					"Daggertooth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134823] = {
					"Unbreakable Crystalspine", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139430] = {
					"Zaliz' Eternal Hound", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140454] = {
					"Many-Braids the Elder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145061] = {
					"Screeching Nightwing", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[161953] = {
					"Inimot, the Radiant Blade", -- [1]
					"Halls of Origination", -- [2]
				},
				[33722] = {
					"Storm Tempered Keeper", -- [1]
					"Ulduar", -- [2]
				},
				[139431] = {
					"Guardian of Tombs", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140455] = {
					"Bramblefur Calf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34234] = {
					"Runeforged Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155812] = {
					"Mawsworn Ritualist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140456] = {
					"Bramblefur Musken", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140968] = {
					"Garnetback Striker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139433] = {
					"Sister of Anguish", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140457] = {
					"Bramblefur Grazer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[173729] = {
					"Manifestation of Pride", -- [1]
					"Plaguefall", -- [2]
				},
				[158373] = {
					"Roberto Pupellyverbos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155814] = {
					"Eldritch Understudy", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[140458] = {
					"Bramblefur Bull", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140970] = {
					"Cragburster", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[170147] = {
					"Volatile Memory", -- [1]
					"De Other Side", -- [2]
				},
				[171171] = {
					"Mawsworn Archer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[164517] = {
					"Tred'ova", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[171172] = {
					"Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[168101] = {
					"Empowered Deadsoul Shade", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165030] = {
					"Lady Inerva Darkvein", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[95072] = {
					"Greater Earth Elemental", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[171173] = {
					"Mawsworn Shadestalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[12050] = {
					"Stormpike Defender", -- [1]
					"Alterac Valley", -- [2]
				},
				[96608] = {
					"Ebonclaw Worg", -- [1]
					"Halls of Valor", -- [2]
				},
				[140973] = {
					"Bore Tunneler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139438] = {
					"Soul-Bringer Togan", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[160937] = {
					"Night Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[62005] = {
					"Beast", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[83812] = {
					"Ashmaul Enforcer", -- [1]
					"Ashran", -- [2]
				},
				[168104] = {
					"Empowered Flameforge Master", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[96609] = {
					"Gildedfur Stag", -- [1]
					"Halls of Valor", -- [2]
				},
				[140975] = {
					"Youngercraw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122971] = {
					"Dazar'ai Juggernaut", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140976] = {
					"Bore Worm", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[142000] = {
					"Haunting Tendril", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[95842] = {
					"Valarjar Thundercaller", -- [1]
					"Halls of Valor", -- [2]
				},
				[168106] = {
					"Empowered Mawsworn Guard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136882] = {
					"Bristlemane Defender", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[114526] = {
					"Ghostly Understudy", -- [1]
					"Return to Karazhan", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[136883] = {
					"Bristlemane Thorncaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[137395] = {
					"Veteran Footman", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[83814] = {
					"Stormshield Mine Guard", -- [1]
					"Ashran", -- [2]
				},
				[168108] = {
					"Empowered Lumbering Creation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129371] = {
					"Riptide Shredder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136884] = {
					"Bristlethorn Battleguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[114783] = {
					"Reformed Maiden", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140980] = {
					"Jadescale Worm", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[171181] = {
					"Territorial Bladebeak", -- [1]
					"De Other Side", -- [2]
				},
				[83815] = {
					"Mastiff", -- [1]
					"Ashran", -- [2]
				},
				[168110] = {
					"Empowered Imperial Duelist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129372] = {
					"Blacktar Bomber", -- [1]
					"Siege of Boralus", -- [2]
				},
				[136886] = {
					"Banner-Bearer Koral", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136887] = {
					"Needlemane", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168112] = {
					"General Kaal", -- [1]
					"Castle Nathria", -- [2]
				},
				[129373] = {
					"Dockhound Packmaster", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140983] = {
					"Frostbore Burster", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[141495] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146102] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[168113] = {
					"General Grashaal", -- [1]
					"Castle Nathria", -- [2]
				},
				[140984] = {
					"Frostbore Worm", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[64183] = {
					"Enormous Stone Quilen", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[140985] = {
					"Acidic Worm", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[146104] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[155830] = {
					"Mawsworn Disciple", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[168627] = {
					"Plaguebinder", -- [1]
					"Plaguefall", -- [2]
				},
				[165556] = {
					"Fleeting Manifestation", -- [1]
					"Sanguine Depths", -- [2]
				},
				[128095] = {
					"Sister of the Lash", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[138427] = {
					"Spitefin Harpooner", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155831] = {
					"Mawsworn Soulbinder", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33983] = {
					"Constrictor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[148665] = {
					"Rastari Royal Guard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136892] = {
					"Brutalsnout", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171188] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[11859] = {
					"Doomguard", -- [1]
					"Castle Nathria", -- [2]
				},
				[140988] = {
					"Steelshred", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137405] = {
					"Gripping Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138429] = {
					"Spitefin Tidebinder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[159416] = {
					"Spiked Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[12051] = {
					"Frostwolf Legionnaire", -- [1]
					"Alterac Valley", -- [2]
				},
				[148667] = {
					"Rastari Punisher", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140989] = {
					"Bonescale Worm", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140990] = {
					"Bonescale Spitter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146109] = {
					"Midnight Charger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138431] = {
					"Tidemistress Najula", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140991] = {
					"Marrowbore", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[17252] = {
					"Leeshvazin", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138432] = {
					"Tidemistress Nessa", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140992] = {
					"Corpseburster", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[124259] = {
					"Jungle Tiger", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[167610] = {
					"Stonefiend Anklebiter", -- [1]
					"Halls of Atonement", -- [2]
				},
				[139457] = {
					"Stonebound Quilen", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132803] = {
					"Rockmane Wendigo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146112] = {
					"Inkfur Behemoth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138434] = {
					"Spitefin Tempest Witch", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[167611] = {
					"Stoneborn Eviscerator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[146113] = {
					"Thunderhoof", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[167612] = {
					"Stoneborn Reaver", -- [1]
					"Halls of Atonement", -- [2]
				},
				[139459] = {
					"Stonebound Soldier", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33985] = {
					"Corruptor Tentacle", -- [1]
					"Ulduar", -- [2]
				},
				[148673] = {
					"Vessel of Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140995] = {
					"Ruinstalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[166589] = {
					"Animated Weapon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[138436] = {
					"Lord Coilfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[19428] = {
					"Wind Serpent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139460] = {
					"Stonebound Earthweaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140996] = {
					"Deepbore", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138437] = {
					"Szerris the Invader", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139461] = {
					"Stonebound Rockmaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[20196] = {
					"Torvald", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[166079] = {
					"Brittlebone Crossbowman", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[138438] = {
					"Tidereaver Steelfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163520] = {
					"Forsworn Squad-Leader", -- [1]
					"Spires of Ascension", -- [2]
				},
				[102507] = {
					"Underlight Supplicant", -- [1]
					"Gloaming Reef", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138439] = {
					"Slitherqueen Valla", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139463] = {
					"Stonebound Annihilator", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				[76914] = {
					"Coldtusk", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[146118] = {
					"Territorial Needleback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138440] = {
					"Lady Assana", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[102508] = {
					"Underlight Sentry", -- [1]
					"Gloaming Reef", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146119] = {
					"Needleback Brute", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138441] = {
					"Songstress of the Deep", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155845] = {
					"Crushing Depths", -- [1]
					"The Eternal Palace", -- [2]
				},
				[165059] = {
					"Crimson Protector", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[138442] = {
					"Wavebreaker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130918] = {
					"Archelion Great Turtle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[114794] = {
					"Skeletal Hound", -- [1]
					"Return to Karazhan", -- [2]
				},
				[165060] = {
					"Animimic", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[138443] = {
					"Scaleguard Buleth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139467] = {
					"Qinsu the Granite Fist", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[165061] = {
					"Crimson Assassin", -- [1]
					"Castle Nathria Scenario", -- [2]
				},
				[138444] = {
					"General Vesparak", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[102510] = {
					"Underlight Sorceror", -- [1]
					"Gloaming Reef", -- [2]
				},
				[164550] = {
					"Slithering Ooze", -- [1]
					"Plaguefall", -- [2]
				},
				[169157] = {
					"Mudlump", -- [1]
					"Castle Nathria", -- [2]
				},
				[139469] = {
					"Zu-Xan of Thunder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129640] = {
					"Snarling Dockhound", -- [1]
					"Siege of Boralus", -- [2]
				},
				[167111] = {
					"Spinemaw Staghorn", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[139470] = {
					"Serpent Master Xisho", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[164552] = {
					"Rotmarrow Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[169159] = {
					"Unstable Canister", -- [1]
					"Plaguefall", -- [2]
				},
				[37571] = {
					"Darkfallen Advisor", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[138447] = {
					"Battle-Maiden Salaria", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37955] = {
					"Blood-Queen Lana'thel", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[167113] = {
					"Spinemaw Acidgullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[114541] = {
					"Spectral Patron", -- [1]
					"Return to Karazhan", -- [2]
				},
				[139472] = {
					"Stone-Lord Qinsho", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[165066] = {
					"Huntsman Altimor", -- [1]
					"Castle Nathria", -- [2]
				},
				[64061] = {
					"Mogu'shan Warden", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139473] = {
					"Stone Machinist Nu-Xin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164555] = {
					"Millificent Manastorm", -- [1]
					"De Other Side", -- [2]
				},
				[165067] = {
					"Margore", -- [1]
					"Castle Nathria", -- [2]
				},
				[132819] = {
					"Rustpelt Pup", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145616] = {
					"King Rastakhan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[114542] = {
					"Ghostly Philanthropist", -- [1]
					"Return to Karazhan", -- [2]
				},
				[139474] = {
					"Qor-Xin the Earth-Caller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164556] = {
					"Millhouse Manastorm", -- [1]
					"De Other Side", -- [2]
				},
				[132820] = {
					"Mudsnout Piglet", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[167116] = {
					"Spinemaw Reaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[139475] = {
					"Jade-Formed Bonesnapper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135892] = {
					"Unleashed Inferno", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[167117] = {
					"Spinemaw Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[164558] = {
					"Hakkar the Soulflayer", -- [1]
					"De Other Side", -- [2]
				},
				[19622] = {
					"Kael'thas Sunstrider", -- [1]
					"Tempest Keep", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146131] = {
					"Bartok the Burrower", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135894] = {
					"Fire Elemental", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[114544] = {
					"Skeletal Usher", -- [1]
					"Return to Karazhan", -- [2]
				},
				[102515] = {
					"Saltbeak Snapper", -- [1]
					"Gloaming Reef", -- [2]
				},
				[135895] = {
					"Blazing Spark", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33350] = {
					"Mimiron", -- [1]
					"Ulduar", -- [2]
				},
				[166608] = {
					"Mueh'zala", -- [1]
					"De Other Side", -- [2]
				},
				[155859] = {
					"Vizja'ra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[68220] = {
					"Gastropod", -- [1]
					"Throne of Thunder", -- [2]
				},
				[68476] = {
					"Horridon", -- [1]
					"Throne of Thunder", -- [2]
				},
				[146134] = {
					"Speedy", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138968] = {
					"Zian-Ti Ironmaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[155860] = {
					"Shirakess Voidreaper", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164562] = {
					"Depraved Houndmaster", -- [1]
					"Halls of Atonement", -- [2]
				},
				[156884] = {
					"Essence of Vita", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[64063] = {
					"Mogu'shan Arcanist", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[138969] = {
					"Zian-Ti Spirit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164563] = {
					"Vicious Gargon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[68221] = {
					"Bore Worm", -- [1]
					"Throne of Thunder", -- [2]
				},
				[36678] = {
					"Professor Putricide", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[138970] = {
					"Vengeful Spirit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114802] = {
					"Spectral Journeyman", -- [1]
					"Return to Karazhan", -- [2]
				},
				[165076] = {
					"Gluttonous Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138971] = {
					"Zian-Ti Serpent", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[68222] = {
					"Bow Fly Swarm", -- [1]
					"Throne of Thunder", -- [2]
				},
				[138972] = {
					"Zian-Ti Cloudbreaker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114803] = {
					"Spectral Stable Hand", -- [1]
					"Return to Karazhan", -- [2]
				},
				[169173] = {
					"Meatball's Tormentor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[170197] = {
					"Conjured Manifestation", -- [1]
					"Castle Nathria", -- [2]
				},
				[146139] = {
					"Goldspine", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[12053] = {
					"Frostwolf Guardian", -- [1]
					"Alterac Valley", -- [2]
				},
				[164567] = {
					"Ingra Maloch", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[146140] = {
					"Quilldozer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[36807] = {
					"Deathspeaker Disciple", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139486] = {
					"Skycrack", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[170199] = {
					"Harnessed Specter", -- [1]
					"Castle Nathria", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138464] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[168153] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[165594] = {
					"Coldheart Ambusher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[146143] = {
					"Razorspike", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155869] = {
					"Shirakess Shadowcaster", -- [1]
					"The Eternal Palace", -- [2]
				},
				[132835] = {
					"Dreadfang Snake", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138466] = {
					"Obsidian Whelp", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138978] = {
					"Gargantuan Muckfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138467] = {
					"Obsidian Dragonkin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138979] = {
					"Muckfin Tidecaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155871] = {
					"Voidbound Terror", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160990] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165597] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[138468] = {
					"Obsidian Flamecaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138980] = {
					"Muckfin Raider", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155872] = {
					"Trapped Saurok", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[148194] = {
					"Icy Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144611] = {
					"Coralback Scuttler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[145123] = {
					"Myara Nightsong", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[115831] = {
					"Mana Devourer", -- [1]
					"Return to Karazhan", -- [2]
				},
				[138469] = {
					"Obsidian Scalebane", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138981] = {
					"Muckfin Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155873] = {
					"Darkcast Annihilator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138470] = {
					"Obsidian Drake", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138982] = {
					"Muckfin Murloc", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138471] = {
					"Obsidian Wyrmguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138983] = {
					"Muckfin Tidehunter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[169696] = {
					"Mire Soldier", -- [1]
					"Plaguefall", -- [2]
				},
				[162018] = {
					"Temple Guard", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[14773] = {
					"Iceblood Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[138472] = {
					"Obsidian Captain", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138984] = {
					"Scarscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[173280] = {
					"Stone Legion Skirmisher", -- [1]
					"Castle Nathria", -- [2]
				},
				[137449] = {
					"Dust Devil", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138473] = {
					"Stygia", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138985] = {
					"Old Grmgl", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[84097] = {
					"Boneshallow Spider", -- [1]
					"Ashran", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[162020] = {
					"Priestess of Elune", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138986] = {
					"Borgl the Seeker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162021] = {
					"Temple Archer", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[128631] = {
					"Tidal Clickshell", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138987] = {
					"Muckfin High Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138988] = {
					"Mrgl-Eye", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[123001] = {
					"Dark Water", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152809] = {
					"Alx'kov the Infested", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[64068] = {
					"Mogu'shan Engine Keeper", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138477] = {
					"Talonguard Vrykiss", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138989] = {
					"Saltfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[145644] = {
					"Bwonsamdi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138990] = {
					"Urgl the Blind", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[36939] = {
					"High Overlord Saurfang", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[173798] = {
					"Rat of Unusual Size", -- [1]
					"Castle Nathria", -- [2]
				},
				[138479] = {
					"Obsidian Overlord", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138991] = {
					"Grrl", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[132849] = {
					"Grizzlefur Cub", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138992] = {
					"Muckfin Puddlejumper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168681] = {
					"Forsworn Helion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[173800] = {
					"Sewer Rat", -- [1]
					"Castle Nathria", -- [2]
				},
				[150254] = {
					"Scraphound", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138481] = {
					"Chromitus", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134898] = {
					"Venomfang Recluse", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[172265] = {
					"Remnant of Fury", -- [1]
					"Sanguine Depths", -- [2]
				},
				[67977] = {
					"Tortos", -- [1]
					"Throne of Thunder", -- [2]
				},
				[88708] = {
					"Sorry", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[138482] = {
					"Kaluriak the Alchemist", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[416] = {
					"Quzpit", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[417] = {
					"索乌鲁姆", -- [1]
					"Isle of Conquest", -- [2]
				},
				[135923] = {
					"Hound of Gazzran", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173802] = {
					"Carved Assistant", -- [1]
					"Castle Nathria", -- [2]
				},
				[138483] = {
					"Obsidian Monstrosity", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134900] = {
					"Venomfang Spider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135924] = {
					"Molten Fury", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[169196] = {
					"Crimson Cabalist", -- [1]
					"Castle Nathria", -- [2]
				},
				[162030] = {
					"Darkwhisper Ritualist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[138484] = {
					"Obsidian Prophet", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[135925] = {
					"Pyroblaze", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138485] = {
					"Nuzoriak the Experimenter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134902] = {
					"Shadow-Weaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135926] = {
					"Smolderheart", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138486] = {
					"Aluriak", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[138487] = {
					"Obsidian Wing-Spreader", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134904] = {
					"Nightlurker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37033] = {
					"Kor'kron Invoker", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37030] = {
					"Kor'kron Primalist", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37028] = {
					"Kor'kron Stalker", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37032] = {
					"Kor'kron Defender", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[150773] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[37146] = {
					"Kor'kron Sniper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[126764] = {
					"Bladesworn Ravager", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135929] = {
					"Baron Blazehollow", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147955] = {
					"Georb", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135893] = {
					"Burning Emberguard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123398] = {
					"Garothi Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[122135] = {
					"Shatug", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[123402] = {
					"Garothi Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135930] = {
					"Lavarok", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[128060] = {
					"Priestess of Delirium", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[123476] = {
					"Hulking Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[123477] = {
					"Antoran Doomguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[21272] = {
					"Warp Slicer", -- [1]
					"Tempest Keep", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[171500] = {
					"Shuffling Corpse", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[152311] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[165108] = {
					"Illusionary Clone", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[153335] = {
					"Potent Spark", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164861] = {
					"Spriggan Barkbinder", -- [1]
					"De Other Side", -- [2]
				},
				[166644] = {
					"Artificer Xy'mox", -- [1]
					"Castle Nathria", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152661] = {
					"Mawsworn Ward", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152312] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[147495] = {
					"Rastari Enforcer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[170228] = {
					"Bone Husk", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[21273] = {
					"Phaseshift Bulwark", -- [1]
					"Tempest Keep", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[151801] = {
					"Amathet Zealot", -- [1]
					"Halls of Origination", -- [2]
				},
				[152313] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140540] = {
					"Kindleweb Clutchkeeper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136264] = {
					"Half-Finished Mummy", -- [1]
					"Kings' Rest", -- [2]
				},
				[162039] = {
					"Wicked Oppressor", -- [1]
					"Sanguine Depths", -- [2]
				},
				[13577] = {
					"Stormpike Ram Rider Commander", -- [1]
					"Alterac Valley", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[134910] = {
					"Shimmerweb", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139339] = {
					"Icetusk Defender", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140332] = {
					"Chitterbore", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140541] = {
					"Kindleweb Creeper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[152612] = {
					"Subjugator Klontzas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162040] = {
					"Grand Overseer", -- [1]
					"Sanguine Depths", -- [2]
				},
				[37132] = {
					"Ymirjar Battle-Maiden", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[37004] = {
					"Skybreaker Dreadblade", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[13318] = {
					"Commander Mortimer", -- [1]
					"Alterac Valley", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[135935] = {
					"Lord Magmarr", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140542] = {
					"Kindleweb Spider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132864] = {
					"Juvenile Knucklebump", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[162041] = {
					"Grubby Dirtcruncher", -- [1]
					"Sanguine Depths", -- [2]
				},
				[155278] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138495] = {
					"Twilight Commander", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155899] = {
					"Sak'ja", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135936] = {
					"Lord Amar'zan", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[145928] = {
					"Skavis Nightstalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[169457] = {
					"Bargast", -- [1]
					"Castle Nathria", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140427] = {
					"Craghoof Herdfather", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138496] = {
					"Twilight Drakonaar", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114565] = {
					"Guardian of the Forgotten Queen", -- [1]
					"Eye of the Storm", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[147439] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144971] = {
					"Druid of the Branch", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138497] = {
					"Twilight Scalesworn", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134914] = {
					"Trapdoor Spider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[37025] = {
					"Stinky", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[22123] = {
					"Slasher", -- [1]
					"Isle of Conquest", -- [2]
				},
				[174093] = {
					"Nathrian Ranger", -- [1]
					"Castle Nathria", -- [2]
				},
				[80782] = {
					"Icespine Stinger", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[170234] = {
					"Oppressive Banner", -- [1]
					"Theater of Pain", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[138498] = {
					"Twilight Drake", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[172282] = {
					"Web Wrap", -- [1]
					"Plaguefall", -- [2]
				},
				[135770] = {
					"Veteran Sergeant Slayde", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[140546] = {
					"Broodqueen Vyl'tilac", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[132868] = {
					"Congealed Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[174842] = {
					"Belligerent Waiter", -- [1]
					"Castle Nathria", -- [2]
				},
				[138499] = {
					"Twilight Dragonkin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134916] = {
					"Trapdoor Hunter", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70445] = {
					"Stormbringer Draz'kil", -- [1]
					"Throne of Thunder", -- [2]
				},
				[168700] = {
					"Pestering Fiend", -- [1]
					"Castle Nathria", -- [2]
				},
				[130179] = {
					"Apocalypsis Module", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[136964] = {
					"High Perch Arbalest", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[162046] = {
					"Famished Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[174843] = {
					"Stoneborn Maitre D'", -- [1]
					"Castle Nathria", -- [2]
				},
				[138500] = {
					"Twilight Scalesister", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[171772] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[140974] = {
					"Eldercraw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123269] = {
					"Kook", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[165481] = {
					"Court Assassin", -- [1]
					"Castle Nathria", -- [2]
				},
				[140271] = {
					"Severhorn", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162047] = {
					"Insatiable Brute", -- [1]
					"Sanguine Depths", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[138501] = {
					"Twilight Whelp", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145064] = {
					"Blaze", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157441] = {
					"Void Wraith", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[61131] = {
					"Mogu'shan Secret-Keeper", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[138502] = {
					"Naroviak Wyrm-Bender", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140847] = {
					"Earth Spirit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156158] = {
					"Adjutant Felipos", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[106317] = {
					"Storm Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[138503] = {
					"Overseer of Twilight", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139817] = {
					"Chief Engineer Zazzy", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140270] = {
					"Wilderbuck", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139758] = {
					"Annie Two-Pistols", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[174335] = {
					"Stone Legion Skirmisher", -- [1]
					"Castle Nathria", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138504] = {
					"General Drakkarion", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[144972] = {
					"Kaldorei Hunter", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[155908] = {
					"Deathspeaker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[168109] = {
					"Empowered Mawsworn Ritualist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[167994] = {
					"Ossified Conscript", -- [1]
					"Theater of Pain", -- [2]
				},
				[162051] = {
					"Frenzied Ghoul", -- [1]
					"Sanguine Depths", -- [2]
				},
				[144941] = {
					"Akunda's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138505] = {
					"Evolved Clutch-Warden", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[69388] = {
					"Zandalari Spear-Shaper", -- [1]
					"Throne of Thunder", -- [2]
				},
				[151814] = {
					"Deadsoul Shade", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152326] = {
					"Kyra Boucher", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155225] = {
					"Faeleaf Grovesinger", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140269] = {
					"Ulu'tale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139757] = {
					"Sureshot Johnson", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138506] = {
					"Crimsonscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139530] = {
					"Earth-Wrought Siegebreaker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123272] = {
					"Saltfur Fish-Sticker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[173609] = {
					"Nathrian Conservator", -- [1]
					"Castle Nathria", -- [2]
				},
				[127879] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[174338] = {
					"Stinky Feedhauler", -- [1]
					"Castle Nathria", -- [2]
				},
				[146185] = {
					"Firesting Drone", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163077] = {
					"Azules", -- [1]
					"Spires of Ascension", -- [2]
				},
				[53006] = {
					"Spirit Link Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151816] = {
					"Deadsoul Scavenger", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139811] = {
					"Venture Sub-Lead", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[146186] = {
					"Firesting Warrior", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138508] = {
					"Unbreakable Vortax", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[151817] = {
					"Deadsoul Devil", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[139343] = {
					"Icetusk Drudge", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168098] = {
					"Empowered Coldheart Agent", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[146187] = {
					"Firesting Dominator", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138509] = {
					"Spellbinder Ulura", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[167967] = {
					"Sentient Oil", -- [1]
					"De Other Side", -- [2]
				},
				[151818] = {
					"Deadsoul Miscreation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152330] = {
					"Jelinek Sharpshear", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[70247] = {
					"Venomous Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[132879] = {
					"Crystalline Giant", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[162056] = {
					"Rockbound Sprite", -- [1]
					"Sanguine Depths", -- [2]
				},
				[146188] = {
					"Firesting Dominator", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138510] = {
					"Twilight Doomcaller", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[167536] = {
					"Harugia the Bloodthirsty", -- [1]
					"Theater of Pain", -- [2]
				},
				[136684] = {
					"Wildhammer Flame-Binder", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[123274] = {
					"Saltfur Brawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[38154] = {
					"Warhawk", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[139755] = {
					"First Mate McNally", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138511] = {
					"Azurescale", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136888] = {
					"Dirt-Speaker Barrul", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[60849] = {
					"Jade Serpent Statue", -- [1]
					"Warsong Gulch", -- [2]
				},
				[152332] = {
					"Lara Moore", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[68248] = {
					"Corpse Spider", -- [1]
					"Throne of Thunder", -- [2]
				},
				[136976] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				[162058] = {
					"Ventunax", -- [1]
					"Spires of Ascension", -- [2]
				},
				[61245] = {
					"Capacitor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138512] = {
					"Thorisiona", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130953] = {
					"Gorilla", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139536] = {
					"Zara'thik Drone", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[123275] = {
					"Saltfur Hozen", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139338] = {
					"Icetusk Prophet", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162059] = {
					"Kin-Tara", -- [1]
					"Spires of Ascension", -- [2]
				},
				[8889] = {
					"Anvilrage Overseer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[138513] = {
					"Vyrantion", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138836] = {
					"Zara'thik Swarmguard", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139537] = {
					"Zara'thik Kunchong", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[9017] = {
					"Lord Incendius", -- [1]
					"Blackrock Depths", -- [2]
				},
				[123276] = {
					"Saltfur Sandrunner", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[13176] = {
					"Smith Regzar", -- [1]
					"Alterac Valley", -- [2]
				},
				[162060] = {
					"Oryphrion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[138514] = {
					"Athiona", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[167691] = {
					"Stasis Trap", -- [1]
					"Castle Nathria", -- [2]
				},
				[139538] = {
					"Wall-Breaker Ha'vik", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[3343] = {
					"Grelkor", -- [1]
					"Alterac Valley", -- [2]
				},
				[123532] = {
					"Dark Keeper", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[33237] = {
					"Ulduar Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[162061] = {
					"Devos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128651] = {
					"Hadal Darkfathom", -- [1]
					"Siege of Boralus", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155919] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[136834] = {
					"Scalper Bazuulu", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[34133] = {
					"Champion of Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[132885] = {
					"Air Elemental", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126092] = {
					"Slitherblade Gladiator", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[33432] = {
					"Leviathan Mk II", -- [1]
					"Ulduar", -- [2]
				},
				[163086] = {
					"Rancid Gasbag", -- [1]
					"Theater of Pain", -- [2]
				},
				[147218] = {
					"Spirit of Gold", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155920] = {
					"Azsh'ari Galeblade", -- [1]
					"The Eternal Palace", -- [2]
				},
				[168717] = {
					"Forsworn Justicar", -- [1]
					"Spires of Ascension", -- [2]
				},
				[140564] = {
					"Brimstone Lavamaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128140] = {
					"Lightspawn", -- [1]
					"Warsong Gulch", -- [2]
				},
				[130319] = {
					"Slitherblade Phalanx", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[128652] = {
					"Viq'Goth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[151127] = {
					"Lord of Torment", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[3527] = {
					"Healing Stream Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[168718] = {
					"Forsworn Warden", -- [1]
					"Spires of Ascension", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[132887] = {
					"Deathsting Hatchling", -- [1]
					"Molten Cay (Islands 6)", -- [2]
				},
				[153874] = {
					"Mawsworn Sentry", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[36565] = {
					"Apothecary Baxter", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[114320] = {
					"Lord Robin Daris", -- [1]
					"Return to Karazhan", -- [2]
				},
				[134935] = {
					"Mother Vishis", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164897] = {
					"Fog Dweller", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[33110] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[145026] = {
					"Swifttail Scavenger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164476] = {
					"Tortured Amalgamation", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[163089] = {
					"Disgusting Refuse", -- [1]
					"Theater of Pain", -- [2]
				},
				[134936] = {
					"Kil'tilac", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135448] = {
					"Gol'than the Malodorous", -- [1]
					"Tol Dagor", -- [2]
				},
				[132744] = {
					"Frostscale Hydra", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34134] = {
					"Winter Revenant", -- [1]
					"Ulduar", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[126094] = {
					"Slitherblade Wavecaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[14776] = {
					"Tower Point Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[135830] = {
					"Galefury", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[116550] = {
					"Spectral Patron", -- [1]
					"Return to Karazhan", -- [2]
				},
				[135719] = {
					"Duskrunner", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135961] = {
					"Deepstone Crusher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[152853] = {
					"Silivaz the Zealous", -- [1]
					"The Eternal Palace", -- [2]
				},
				[173840] = {
					"Plaguebound Devoted", -- [1]
					"Plaguefall", -- [2]
				},
				[36805] = {
					"Deathspeaker Servant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132074] = {
					"Overseer Krix", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[149144] = {
					"Jaina's Tide Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135962] = {
					"Crag Rager", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[126095] = {
					"Vyliss", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[165515] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[134939] = {
					"Bristlethorn Maneater", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[36950] = {
					"Skybreaker Marine", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[135963] = {
					"Earth Elemental", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[132892] = {
					"Giddyleaf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153879] = {
					"Deadsoul Shadow", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135819] = {
					"Living Tornado", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164589] = {
					"Regenerating Wildseed", -- [1]
					"Silvershard Mines", -- [2]
				},
				[134940] = {
					"Bristlethorn Piercer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138375] = {
					"Smoos", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140059] = {
					"Grizzlefur Mauler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34135] = {
					"Winter Rumbler", -- [1]
					"Ulduar", -- [2]
				},
				[173190] = {
					"Court Hawkeye", -- [1]
					"Castle Nathria", -- [2]
				},
				[11673] = {
					"Core Hound", -- [1]
					"Isle of Conquest", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139812] = {
					"Venture Producer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134941] = {
					"Bristlethorn Spider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[154128] = {
					"Blazing Elemental", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140060] = {
					"Grizzlefur Bear", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139462] = {
					"Stonebound Shale-Speaker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37012] = {
					"Ancient Skeletal Soldier", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140345] = {
					"Stormscreech", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135932] = {
					"Volcanar", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Ashran", -- [2]
				},
				[127477] = {
					"Saltwater Snapper", -- [1]
					"Tol Dagor", -- [2]
				},
				[32906] = {
					"Freya", -- [1]
					"Ulduar", -- [2]
				},
				[96664] = {
					"Valarjar Runecarver", -- [1]
					"Halls of Valor", -- [2]
				},
				[12121] = {
					"Drakan", -- [1]
					"Alterac Valley", -- [2]
				},
				[136990] = {
					"Cursed Ankali", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153882] = {
					"Deadsoul Spirit", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140440] = {
					"Bloodfur the Gorer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[165430] = {
					"Malignant Spawn", -- [1]
					"Plaguefall", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155930] = {
					"Deephive Chosen", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[140062] = {
					"Diremaul", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70236] = {
					"Zandalari Storm-Caller", -- [1]
					"Throne of Thunder", -- [2]
				},
				[136991] = {
					"Blood-Hunter Dazal'ai", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[36880] = {
					"Decaying Colossus", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[171799] = {
					"Depths Warden", -- [1]
					"Sanguine Depths", -- [2]
				},
				[20040] = {
					"Crystalcore Devastator", -- [1]
					"Tempest Keep", -- [2]
				},
				[140063] = {
					"Smashmaw the Man-Eater", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145039] = {
					"Snowstalker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155797] = {
					"Animated Guardian", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[42710] = {
					"WillyB", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[172312] = {
					"Spinemaw Gorger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69792] = {
					"Deengdawnd", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[148254] = {
					"Frost Shard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[169753] = {
					"Famished Tick", -- [1]
					"Sanguine Depths", -- [2]
				},
				[153885] = {
					"Deadsoul Shambler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165408] = {
					"Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[139411] = {
					"Many-Fangs", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140795] = {
					"Dunecircler the Bleak", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147938] = {
					"Azergem Crystalback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140065] = {
					"Muskhide", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70235] = {
					"Frozen Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[13797] = {
					"Mountaineer Boombellow", -- [1]
					"Alterac Valley", -- [2]
				},
				[126099] = {
					"Duskcoat Den-Mother", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[61345] = {
					"Mogu Archer", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[33236] = {
					"Steelforged Defender", -- [1]
					"Ulduar", -- [2]
				},
				[163612] = {
					"Voidspawn Annihilator", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[36948] = {
					"Muradin Bronzebeard", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[140066] = {
					"Axeclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136483] = {
					"Ashvane Deckhand", -- [1]
					"Siege of Boralus", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[139810] = {
					"Venture Middle Manager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138019] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135838] = {
					"Grimebreeze", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134948] = {
					"Thicket Stalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147745] = {
					"The Indomitable", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[38104] = {
					"Plagued Zombie", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[34137] = {
					"Winter Jormungar", -- [1]
					"Ulduar", -- [2]
				},
				[33838] = {
					"Enslaved Fire Elemental", -- [1]
					"Ulduar", -- [2]
				},
				[126100] = {
					"Duskcoat Prowler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134437] = {
					"Medic Bot", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122773] = {
					"Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[140068] = {
					"Rustpelt Snarler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[162319] = {
					"Paladin", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[67235] = {
					"Shadowfiend", -- [1]
					"Isle of Conquest", -- [2]
				},
				[171805] = {
					"Research Scribe", -- [1]
					"Sanguine Depths", -- [2]
				},
				[60561] = {
					"Earthgrab Totem", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[140069] = {
					"Rustpelt Wolf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157337] = {
					"Spawn of Shad'har", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[140435] = {
					"Greyfur", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[126101] = {
					"Duskcoat Huntress", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[61139] = {
					"Shan-xi Watershaper", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[125828] = {
					"Avade", -- [1]
					"Atal'Dazar", -- [2]
				},
				[151331] = {
					"Cellblock Sentinel", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[5134] = {
					"Jonivera Farmountain", -- [1]
					"Alterac Valley", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[126093] = {
					"Slitherblade Saurok", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132904] = {
					"Sandscalp Villager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[154682] = {
					"Echo of Fear", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135723] = {
					"Moonclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33754] = {
					"Dark Rune Thunderer", -- [1]
					"Ulduar", -- [2]
				},
				[60047] = {
					"Amethyst Guardian", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[140071] = {
					"Old One-Fang", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134286] = {
					"Archmage Tamuura", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[58964] = {
					"Morrik", -- [1]
					"Warsong Gulch", -- [2]
				},
				[14777] = {
					"West Frostwolf Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"Siege of Boralus", -- [2]
				},
				[163618] = {
					"Zolramus Necromancer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[140072] = {
					"Direprowl the Ravager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[123287] = {
					"Southsea Swashbuckler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[70308] = {
					"Soul-Fed Construct", -- [1]
					"Throne of Thunder", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129832] = {
					"Krack", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153878] = {
					"Mawsworn Archer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[13617] = {
					"Stormpike Stable Master", -- [1]
					"Alterac Valley", -- [2]
				},
				[163619] = {
					"Zolramus Bonecarver", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[88224] = {
					"Rylai Crestfall", -- [1]
					"Ashran", -- [2]
				},
				[140073] = {
					"Rabidmaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144680] = {
					"Frida Ironbellows", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[143011] = {
					"Sandy Perch", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[122264] = {
					"Elder Spineshell", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146436] = {
					"Tempting Siren", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163620] = {
					"Rotspew", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[161243] = {
					"Samh'rek, Beckoner of Chaos", -- [1]
					"Siege of Boralus", -- [2]
				},
				[123288] = {
					"Southsea Cannoneer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138016] = {
					"Darokk", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[154174] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[107676] = {
					"Kevin", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155612] = {
					"Azsh'ari Channeler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[45912] = {
					"Wild Vortex", -- [1]
					"The Vortex Pinnacle", -- [2]
				},
				[33755] = {
					"Dark Rune Ravager", -- [1]
					"Ulduar", -- [2]
				},
				[85756] = {
					"Onyx Ravager", -- [1]
					"Ashran", -- [2]
				},
				[140075] = {
					"Canus", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140849] = {
					"Pernicious Stonekin", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34267] = {
					"Parts Recovery Technician", -- [1]
					"Ulduar", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122265] = {
					"Saltfur Smasher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140067] = {
					"Rustpelt Alpha", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163622] = {
					"Goregrind Bits", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[96611] = {
					"Angerhoof Bull", -- [1]
					"Halls of Valor", -- [2]
				},
				[123289] = {
					"Sparkleshell Deathclaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[103326] = {
					"Magnus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[79268] = {
					"Stormshield Footman", -- [1]
					"Ashran", -- [2]
				},
				[146731] = {
					"Zombie Dust Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163623] = {
					"Rotspew Leftovers", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[140077] = {
					"Knucklebump Stomper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[102672] = {
					"Nythendra", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[147933] = {
					"Geoactive Azershard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122266] = {
					"Spineshell Turtle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144948] = {
					"Leatherwing Hunter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155434] = {
					"Emissary of the Tides", -- [1]
					"The Underrot", -- [2]
				},
				[114584] = {
					"Phantom Crew", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140078] = {
					"Knucklebump Gorilla", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[152875] = {
					"Massive Crusher", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[137007] = {
					"High Perch Defender", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[151144] = {
					"Hati", -- [1]
					"Isle of Conquest", -- [2]
				},
				[37595] = {
					"Darkfallen Blood Knight", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[151333] = {
					"Sentinel Shard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[128921] = {
					"Duskcoat Tiger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[152364] = {
					"Radiance of Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157483] = {
					"Ysedra the Darkener", -- [1]
					"Halls of Origination", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[145067] = {
					"Shadefeather Hatchling", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147932] = {
					"Agitated Azershard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[160495] = {
					"Maniacal Soulbinder", -- [1]
					"Theater of Pain", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[123291] = {
					"Sparkleshell Crab", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134899] = {
					"Venomfang Lurker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155706] = {
					"Yox'ith", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[123290] = {
					"Sparkleshell Clacker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[20039] = {
					"Phoenix-Hawk", -- [1]
					"Tempest Keep", -- [2]
				},
				[76593] = {
					"Frost Wolf", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[164351] = {
					"Fading Shade", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[131356] = {
					"Jungle Stalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[164926] = {
					"Drust Boughbreaker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[175401] = {
					"Warden of Souls", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[123292] = {
					"Sparkleshell Pincher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[140082] = {
					"Gibb", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70245] = {
					"Training Dummy", -- [1]
					"Throne of Thunder", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[64947] = {
					"Mogu'shan Warden", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[134797] = {
					"Ocean Recluse", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134214] = {
					"Riftblade Kelain", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[124828] = {
					"Argus the Unmaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140083] = {
					"Kula the Thunderer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144690] = {
					"Mestrah", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139445] = {
					"Tumat", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[159405] = {
					"Aqir Scarab", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146103] = {
					"Living Bomb", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138839] = {
					"Zara'thik Deathsinger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140084] = {
					"Crushknuckle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155952] = {
					"Suffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[123293] = {
					"Royal Sand Crab", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132918] = {
					"Spitefin Raider", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144951] = {
					"Palefur Devourer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[60375] = {
					"Zandalari Skullcharger", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140085] = {
					"Pinegraze Greatstag", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135763] = {
					"Voidling", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132919] = {
					"Spitefin Behemoth", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132797] = {
					"Pinegraze Calf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[118175] = {
					"Storm Elemental", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[36957] = {
					"Kor'kron Reaver", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[36829] = {
					"Deathspeaker High Priest", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[151859] = {
					"Tomb Scarab", -- [1]
					"Halls of Origination", -- [2]
				},
				[140086] = {
					"Pinegraze Courser", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144693] = {
					"Manceroy Flamefist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132920] = {
					"Shadow Serpent", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[45915] = {
					"Armored Mistral", -- [1]
					"The Vortex Pinnacle", -- [2]
				},
				[140376] = {
					"Duneshell Scarab", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[58456] = {
					"Classfantasy", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140087] = {
					"Pinegraze Doe", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70060] = {
					"Shadowed Voodoo Spirit", -- [1]
					"Throne of Thunder", -- [2]
				},
				[132921] = {
					"Tidemistress Sser'ah", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[81065] = {
					"Risen Brute", -- [1]
					"Ashran", -- [2]
				},
				[21362] = {
					"Phoenix", -- [1]
					"Tempest Keep", -- [2]
				},
				[163122] = {
					"Brittlebone Warrior", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[37126] = {
					"Sister Svalna", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[1860] = {
					"Thoktast", -- [1]
					"Isle of Conquest", -- [2]
				},
				[140088] = {
					"Stonehorn the Charger", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156980] = {
					"Essence of Void", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132922] = {
					"Enslaved Murloc", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162099] = {
					"General Kaal", -- [1]
					"Sanguine Depths", -- [2]
				},
				[36998] = {
					"Skybreaker Protector", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[85753] = {
					"Kaliri Skyterror", -- [1]
					"Ashran", -- [2]
				},
				[36296] = {
					"Apothecary Hummel", -- [1]
					"Shadowfang Keep", -- [2]
				},
				[135994] = {
					"Lord Amythite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[96934] = {
					"Valarjar Trapper", -- [1]
					"Halls of Valor", -- [2]
				},
				[132923] = {
					"Coldlight Murloc", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162100] = {
					"Kryxis the Voracious", -- [1]
					"Sanguine Depths", -- [2]
				},
				[140374] = {
					"Hive Guardian Yx'nil", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[114338] = {
					"Mana Confluence", -- [1]
					"Return to Karazhan", -- [2]
				},
				[167731] = {
					"Separation Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140090] = {
					"Ana'tashe", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157366] = {
					"Void Hunter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136246] = {
					"Stromgarde Faithful", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[163501] = {
					"Forsworn Skirmisher", -- [1]
					"Spires of Ascension", -- [2]
				},
				[31216] = {
					"Berradan", -- [1]
					"Eye of the Storm", -- [2]
				},
				[114804] = {
					"Spectral Charger", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140091] = {
					"Snowhoof", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138307] = {
					"Smashface", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[34271] = {
					"XD-175 Compactobot", -- [1]
					"Ulduar", -- [2]
				},
				[162102] = {
					"Grand Proctor Beryllia", -- [1]
					"Sanguine Depths", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138556] = {
					"Tainted Ooze", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[151353] = {
					"Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139396] = {
					"Mirelurk Guardian", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140092] = {
					"Longstrider", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[162103] = {
					"Executor Tarvold", -- [1]
					"Sanguine Depths", -- [2]
				},
				[130334] = {
					"Gritplate Gazer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138557] = {
					"Living Corruption", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[128928] = {
					"Crab Egg", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168246] = {
					"Reanimated Crossbowman", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[140093] = {
					"Pinegraze Fawnmother", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156866] = {
					"Ra-den", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146116] = {
					"Needleback Forager", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[85752] = {
					"Outcast Harbinger", -- [1]
					"Ashran", -- [2]
				},
				[146110] = {
					"Waxing Moon", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163128] = {
					"Zolramus Sorcerer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[126190] = {
					"Zian-Ti Brutalizer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135999] = {
					"Heliodor", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140094] = {
					"Mudsnout Thornback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[115484] = {
					"Fel Bat", -- [1]
					"Return to Karazhan", -- [2]
				},
				[126832] = {
					"Skycap'n Kragg", -- [1]
					"Freehold", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138559] = {
					"Forgotten One", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33670] = {
					"Aerial Command Unit", -- [1]
					"Ulduar", -- [2]
				},
				[136000] = {
					"Beryllus", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140095] = {
					"Mudsnout Gorer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Isle of Conquest", -- [2]
				},
				[37663] = {
					"Darkfallen Noble", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[70557] = {
					"Zandalari Prophet", -- [1]
					"Throne of Thunder", -- [2]
				},
				[146238] = {
					"Blacksting", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138560] = {
					"Faceless Horror", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140096] = {
					"Mudsnout Boar", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[60701] = {
					"Zian of the Endless Shadow", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155767] = {
					"Grul'taj", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138561] = {
					"Faceless Mindlasher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134893] = {
					"Ironweb Spider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114319] = {
					"Lady Keira Berrybuck", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140097] = {
					"Great Dirtbelly", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140609] = {
					"Ravenous Mako", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149311] = {
					"Shandris Feathermoon", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[172858] = {
					"Stone Legion Goliath", -- [1]
					"Castle Nathria", -- [2]
				},
				[61146] = {
					"Black Ox Statue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[138562] = {
					"Void Maggot", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37088] = {
					"Sagittarius", -- [1]
					"Isle of Conquest", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140098] = {
					"Vicious Scarhide", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168398] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[149312] = {
					"Ferocious Swiftclaw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[165010] = {
					"Congealed Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[146753] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138516] = {
					"Twilight Evolutionist", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[13448] = {
					"Sergeant Yazra Bloodsnarl", -- [1]
					"Alterac Valley", -- [2]
				},
				[140099] = {
					"Thundersnort the Loud", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[34273] = {
					"XB-488 Disposalbot", -- [1]
					"Ulduar", -- [2]
				},
				[162049] = {
					"Vestige of Doubt", -- [1]
					"Sanguine Depths", -- [2]
				},
				[2630] = {
					"Earthbind Totem", -- [1]
					"Warsong Gulch", -- [2]
				},
				[138564] = {
					"Kshuun", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[170690] = {
					"Diseased Horror", -- [1]
					"Theater of Pain", -- [2]
				},
				[163524] = {
					"Kyrian Dark-Praetor", -- [1]
					"Spires of Ascension", -- [2]
				},
				[140100] = {
					"Warsnort", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[37972] = {
					"Prince Keleseth", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[98035] = {
					"Dreadstalker", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157340] = {
					"Skeletal Remains", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[138565] = {
					"My'lyth", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139439] = {
					"Duskbinder Zuun", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153552] = {
					"Weeping Wraith", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152898] = {
					"Deadsoul Chorus", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139468] = {
					"Spineripper Ku-Kon", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138566] = {
					"Nyl'sozz", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146244] = {
					"Stinging Fiend", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146756] = {
					"Energized Storm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138843] = {
					"Wingleader Srak'ik", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[5135] = {
					"Svalbrad Farmountain", -- [1]
					"Alterac Valley", -- [2]
				},
				[140102] = {
					"Razorhog", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37217] = {
					"Precious", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[10364] = {
					"Yaelika Farclaw", -- [1]
					"Alterac Valley", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146245] = {
					"Skitterwing", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138567] = {
					"Shathhoth the Punisher", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[69712] = {
					"Ji-Kun", -- [1]
					"Throne of Thunder", -- [2]
				},
				[135496] = {
					"Cami Cogwizzle", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[139466] = {
					"Cobalt Stoneguard", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139345] = {
					"Deathwhisperer Kulu", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[104493] = {
					"Spitting Cobra", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[146246] = {
					"Ovix the Toxic", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138568] = {
					"Shuk'shuguun the Subjugator", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168907] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[139464] = {
					"Zian-Ti Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[167485] = {
					"Starving Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162115] = {
					"Koda Steelclaw", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[146247] = {
					"White Death", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138569] = {
					"Harbinger Vor'zzyx", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[36612] = {
					"Lord Marrowgar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136010] = {
					"Faceted Earthbreaker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151147] = {
					"Hati", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164557] = {
					"Shard of Halkias", -- [1]
					"Halls of Atonement", -- [2]
				},
				[162116] = {
					"Lyanis Moonfall", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138570] = {
					"Herald Razzaqi", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34702] = {
					"Ambrose Boltspark", -- [1]
					"Trial of the Champion", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136011] = {
					"Bloodstone", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[175123] = {
					"Warden Arkoban", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162117] = {
					"Tyrande Whisperwind", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[144970] = {
					"Kaldorei Archer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[148483] = {
					"Ancestral Avenger", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141566] = {
					"Scrimshaw Gutter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140619] = {
					"Coastal Fathomjaw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140107] = {
					"Deathsting Lasher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[165189] = {
					"Avis", -- [1]
					"Warsong Gulch", -- [2]
				},
				[37027] = {
					"Skybreaker Hierophant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[102517] = {
					"Mglrrp", -- [1]
					"Gloaming Reef", -- [2]
				},
				[139480] = {
					"Stonebound Protector", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[163503] = {
					"Etherdiver", -- [1]
					"Spires of Ascension", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Isle of Conquest", -- [2]
				},
				[151881] = {
					"Abyssal Commander Sivara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144963] = {
					"Kimbul's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152905] = {
					"Tower Sentinel", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135258] = {
					"Irontide Marauder", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144949] = {
					"Canopy Stalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[171333] = {
					"Atal'ai Devoted", -- [1]
					"De Other Side", -- [2]
				},
				[60381] = {
					"Zandalari Infiltrator", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[131407] = {
					"Venture Goon", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[106319] = {
					"Ember Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[69899] = {
					"Farraki Sand Conjurer", -- [1]
					"Throne of Thunder", -- [2]
				},
				[135715] = {
					"Ferocious Nightsaber", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133666] = {
					"Dizzy's Decoy", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150859] = {
					"Za'qul", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131408] = {
					"Venture Muscle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148619] = {
					"Echo of Akunda", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157002] = {
					"Imperial Enforcer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140986] = {
					"Acidic Burrower", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168156] = {
					"Remornia", -- [1]
					"Castle Nathria", -- [2]
				},
				[146253] = {
					"Brother Joseph", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[122963] = {
					"Rezan", -- [1]
					"Atal'Dazar", -- [2]
				},
				[155226] = {
					"Verdant Keeper", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[152396] = {
					"Guardian of Azeroth", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157003] = {
					"Imperial Duelist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[171184] = {
					"Mythresh, Sky's Talons", -- [1]
					"De Other Side", -- [2]
				},
				[174802] = {
					"Venomous Sniper", -- [1]
					"Plaguefall", -- [2]
				},
				[155723] = {
					"Swarmguard Kzaz", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[138576] = {
					"Faceless Tendril", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[131410] = {
					"Gargantuan Venomscale", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146251] = {
					"Sister Katherine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[119724] = {
					"Tidal Surger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[159321] = {
					"Khateph", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140298] = {
					"Gol'kun the Vicious", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138577] = {
					"Crushing Tentacle", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[131411] = {
					"Venomscale Monitor", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140113] = {
					"Venomlash", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136885] = {
					"Bristlemane Bramble-Weaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122284] = {
					"Greater Jungle Stalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[114350] = {
					"Shade of Medivh", -- [1]
					"Return to Karazhan", -- [2]
				},
				[146657] = {
					"Veteran Sentinel", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[163457] = {
					"Forsworn Vanguard", -- [1]
					"Spires of Ascension", -- [2]
				},
				[169925] = {
					"Begrudging Waiter", -- [1]
					"Castle Nathria", -- [2]
				},
				[145932] = {
					"Celestra Brightmoon", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[35273] = {
					"Glaive Thrower", -- [1]
					"Isle of Conquest", -- [2]
				},
				[102516] = {
					"Tidescuttler", -- [1]
					"Gloaming Reef", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[138579] = {
					"Giant Claw Tentacle", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135964] = {
					"Rumbling Earth", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130791] = {
					"Khut'een", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165197] = {
					"Skeletal Monstrosity", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[130333] = {
					"Gritplate Basilisk", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133461] = {
					"Alliance Priestess", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[140993] = {
					"Darktunnel Ambusher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146770] = {
					"Druid of the Claw", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[136840] = {
					"Zoga", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168105] = {
					"Empowered Mawsworn Flametender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165560] = {
					"Gormling Larva", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[143306] = {
					"Majestic Penguin", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70586] = {
					"Eternal Guardian", -- [1]
					"Throne of Thunder", -- [2]
				},
				[130307] = {
					"Unstable Typhoon", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[171341] = {
					"Bladebeak Hatchling", -- [1]
					"De Other Side", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[168099] = {
					"Empowered Coldheart Javelineer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139804] = {
					"Venture Inspector", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157009] = {
					"Beast", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149331] = {
					"Luminous Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[171342] = {
					"Juvenile Runestag", -- [1]
					"De Other Side", -- [2]
				},
				[140798] = {
					"Cragcaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[96640] = {
					"Valarjar Marksman", -- [1]
					"Halls of Valor", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140630] = {
					"Ornate Puffer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[70587] = {
					"Shale Stalker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[34192] = {
					"Boomer XP-500", -- [1]
					"Ulduar", -- [2]
				},
				[139471] = {
					"Bugan the Flesh-Crusher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171343] = {
					"Bladebeak Matriarch", -- [1]
					"De Other Side", -- [2]
				},
				[164578] = {
					"Stitchflesh's Creation", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[164177] = {
					"Royal Nightcloak", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[145035] = {
					"Swifttail Courser", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140631] = {
					"South Sea Ray", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156157] = {
					"Coldheart Ascendant", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163506] = {
					"Forsworn Stealthclaw", -- [1]
					"Spires of Ascension", -- [2]
				},
				[146766] = {
					"Greater Serpent Totem", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146887] = {
					"Ghern the Rancid", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[34918] = {
					"Kor'kron Guard", -- [1]
					"Isle of Conquest", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140632] = {
					"Scaleback Snapper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[149334] = {
					"Tectonic Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[173276] = {
					"Stone Legion Commando", -- [1]
					"Castle Nathria", -- [2]
				},
				[134903] = {
					"Leeching Horror", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[60384] = {
					"Zandalari Pterror Wing", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[134801] = {
					"Cracked-Shell", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[32845] = {
					"Hodir", -- [1]
					"Ulduar", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[149335] = {
					"Tumultuous Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[8913] = {
					"Twilight Emissary", -- [1]
					"Blackrock Depths", -- [2]
				},
				[135246] = {
					"\"Stabby\" Lottie", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146678] = {
					"Ancient Protector", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[105451] = {
					"Counterstrike Totem", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[122970] = {
					"Shadowblade Stalker", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139529] = {
					"Muklai", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[149336] = {
					"Basaltic Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[162133] = {
					"General Kaal", -- [1]
					"Sanguine Depths", -- [2]
				},
				[144637] = {
					"Grong", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[163157] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[114796] = {
					"Wholesome Hostess", -- [1]
					"Return to Karazhan", -- [2]
				},
				[171455] = {
					"Stonewall Gargon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[147621] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[10404] = {
					"Pustulating Horror", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[149337] = {
					"Coalesced Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[165824] = {
					"Nar'zudah", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[99922] = {
					"Ebonclaw Packmate", -- [1]
					"Halls of Valor", -- [2]
				},
				[148621] = {
					"Jek'kwa", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34919] = {
					"7th Legion Infantry", -- [1]
					"Isle of Conquest", -- [2]
				},
				[160420] = {
					"Angry Book Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157016] = {
					"Imperial Archivist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[149338] = {
					"Volatile Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[162647] = {
					"Hideous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[168002] = {
					"Empowered Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[126181] = {
					"Ramut the Black", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[84155] = {
					"Risen Mage", -- [1]
					"Ashran", -- [2]
				},
				[29034] = {
					"Whathappen", -- [1]
					"The Battle for Gilneas", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"Siege of Boralus", -- [2]
				},
				[149339] = {
					"Permeated Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[170838] = {
					"Unyielding Contender", -- [1]
					"Theater of Pain", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[32872] = {
					"Runic Colossus", -- [1]
					"Ulduar", -- [2]
				},
				[20036] = {
					"Bloodwarder Squire", -- [1]
					"Tempest Keep", -- [2]
				},
				[141565] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[146884] = {
					"Warlord Hjelskard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[155828] = {
					"Runecarved Colossus", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33768] = {
					"Rubble", -- [1]
					"Ulduar", -- [2]
				},
				[155483] = {
					"Faeleaf Shimmerwing", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[164185] = {
					"Echelon", -- [1]
					"Halls of Atonement", -- [2]
				},
				[135931] = {
					"Ashstone", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147958] = {
					"Geoactive Refraction", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[149341] = {
					"Vitrified Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[115844] = {
					"Goroth", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[155900] = {
					"Zsal'iss", -- [1]
					"The Eternal Palace", -- [2]
				},
				[148622] = {
					"Echo of Kimbul", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[137057] = {
					"Gurthani the Elder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[95674] = {
					"Fenryr", -- [1]
					"Halls of Valor", -- [2]
				},
				[168107] = {
					"Empowered Mawsworn Interceptor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[60386] = {
					"Zandalari Terror Rider", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[137058] = {
					"Hexxer Magoda", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[149343] = {
					"Frenzy Imbued Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[147787] = {
					"7th Legion Battlemage", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[36968] = {
					"Kor'kron Axethrower", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[32873] = {
					"Ancient Rune Giant", -- [1]
					"Ulduar", -- [2]
				},
				[147202] = {
					"Animated Azershard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[151815] = {
					"Deadsoul Echo", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[13437] = {
					"Wing Commander Ichman", -- [1]
					"Alterac Valley", -- [2]
				},
				[114312] = {
					"Moroes", -- [1]
					"Return to Karazhan", -- [2]
				},
				[128435] = {
					"Toxic Saurid", -- [1]
					"Atal'Dazar", -- [2]
				},
				[164171] = {
					"Honored Duelist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[151900] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[164189] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140643] = {
					"Ferocious Craghorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[37970] = {
					"Prince Valanar", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[81087] = {
					"Gor'vosh Necromancer", -- [1]
					"Ashran", -- [2]
				},
				[163678] = {
					"Clotted Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[70594] = {
					"Mist Lurker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[34793] = {
					"Catapult", -- [1]
					"Isle of Conquest", -- [2]
				},
				[149346] = {
					"Suffused Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164702] = {
					"Carrion Worm", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[137061] = {
					"Suluz Wind-Tamer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[119990] = {
					"Theodore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[175234] = {
					"Tractus the Icebreaker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165137] = {
					"Zolramus Gatekeeper", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[131431] = {
					"Safety Inspection Bot", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[164191] = {
					"Noble Courtier", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[155768] = {
					"Squallbinder Mal'ur", -- [1]
					"The Eternal Palace", -- [2]
				},
				[173405] = {
					"Deathspeaker Yutla", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[137062] = {
					"Blood-Hunter Akal", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[152331] = {
					"Captain Lancy Revshon", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[36969] = {
					"Skybreaker Rifleman", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[32874] = {
					"Iron Ring Guard", -- [1]
					"Ulduar", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[146111] = {
					"Twenty Points", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[169823] = {
					"Gorm Behemoth", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139539] = {
					"Tavok, Hammer of the Empress", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134793] = {
					"Glowspine", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[121571] = {
					"Gon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[164705] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[137064] = {
					"Valorcall Marksman", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[149349] = {
					"Calcified Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[122986] = {
					"Wild Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[135959] = {
					"Quakestomp the Rumbler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146365] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34922] = {
					"Overlord Agmar", -- [1]
					"Isle of Conquest", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[134795] = {
					"Veiled Hermit", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168007] = {
					"Empowered Mawsworn Soulbinder", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144232] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130486] = {
					"Cat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[32875] = {
					"Iron Honor Guard", -- [1]
					"Ulduar", -- [2]
				},
				[164707] = {
					"Congealed Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"Siege of Boralus", -- [2]
				},
				[149351] = {
					"Rhodochrosite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[162744] = {
					"Nekthara the Mangler", -- [1]
					"Theater of Pain", -- [2]
				},
				[170850] = {
					"Raging Bloodhorn", -- [1]
					"Theater of Pain", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[11262] = {
					"Onyxian Whelp", -- [1]
					"Onyxia's Lair", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[37098] = {
					"Val'kyr Herald", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[70341] = {
					"Tormented Spirit", -- [1]
					"Throne of Thunder", -- [2]
				},
				[137067] = {
					"Valorcall Defender", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[137579] = {
					"Unbound Azerite", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33515] = {
					"Auriaya", -- [1]
					"Ulduar", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[149353] = {
					"Incandescent Azergem Crystalback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168886] = {
					"Virulax Blightweaver", -- [1]
					"Plaguefall", -- [2]
				},
				[136044] = {
					"Venomswell", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137068] = {
					"Valorcall Cavalry", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[37973] = {
					"Prince Taldaram", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152816] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144747] = {
					"Pa'ku's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136045] = {
					"Crushtide", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[165222] = {
					"Zolramus Bonemender", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[35307] = {
					"Argent Priestess", -- [1]
					"Trial of the Champion", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[169601] = {
					"Stone Legion Commando", -- [1]
					"Castle Nathria", -- [2]
				},
				[149354] = {
					"Monstrous Azergem Crystalback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[165138] = {
					"Blight Bag", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[129208] = {
					"Dread Captain Lockwood", -- [1]
					"Siege of Boralus", -- [2]
				},
				[140620] = {
					"South Sea Stinger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[162664] = {
					"Aqir Swarmer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[149355] = {
					"Aberrant Azergem Crystalback", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[61029] = {
					"Primal Fire Elemental", -- [1]
					"The Eternal Palace", -- [2]
				},
				[6112] = {
					"Windfury Totem", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[153451] = {
					"Kosarus the Fallen", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[149356] = {
					"Enraged Azergem Crystalback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32876] = {
					"Dark Rune Champion", -- [1]
					"Ulduar", -- [2]
				},
				[136047] = {
					"Iceheart", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[152939] = {
					"Boundless Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[145261] = {
					"Opulence", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155917] = {
					"Azsh'ari Stormcaller", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134894] = {
					"Ironweb Spinner", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138475] = {
					"Tyrantion", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33772] = {
					"Faceless Horror", -- [1]
					"Ulduar", -- [2]
				},
				[157333] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[173189] = {
					"Nathrian Hawkeye", -- [1]
					"Castle Nathria", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140845] = {
					"Playful Gust", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148582] = {
					"Stormbound Guardian", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[143215] = {
					"Orca", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[34924] = {
					"High Commander Halford Wyrmbane", -- [1]
					"Isle of Conquest", -- [2]
				},
				[136049] = {
					"Algenon", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[145337] = {
					"Sandclaw Crab", -- [1]
					"The Eternal Palace", -- [2]
				},
				[149358] = {
					"Colossal Azergem Crystalback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137585] = {
					"Earthgrab Totem", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[8895] = {
					"Anvilrage Officer", -- [1]
					"Blackrock Depths", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[144825] = {
					"Toxinbelly Croaker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146256] = {
					"Laminaria", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[136050] = {
					"Gorestream", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140657] = {
					"Craghorn Behemoth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149359] = {
					"Azerite Behemoth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[70212] = {
					"Flaming Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[159767] = {
					"Sanguimar", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140658] = {
					"Bristlefur", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[36844] = {
					"Risen Deathspeaker Servant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[32877] = {
					"Dark Rune Warbringer", -- [1]
					"Ulduar", -- [2]
				},
				[136051] = {
					"Fathomus", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37228] = {
					"Frostwarden Warrior", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[149360] = {
					"Hulking Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[121021] = {
					"Shadowsworn Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[156015] = {
					"Writhing Soulmass", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[37868] = {
					"Risen Archmage", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[147825] = {
					"7th Legion Medic", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140147] = {
					"Great Ursu", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140659] = {
					"Ragestomp", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[78001] = {
					"Cloudburst Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[138563] = {
					"Vudax", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[19514] = {
					"Al'ar", -- [1]
					"Tempest Keep", -- [2]
				},
				[140148] = {
					"Rampaging Grizzlefur", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140660] = {
					"Big-Horn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[35309] = {
					"Argent Lightwielder", -- [1]
					"Trial of the Champion", -- [2]
				},
				[168457] = {
					"Stonewall Gargon", -- [1]
					"Sanguine Depths", -- [2]
				},
				[124349] = {
					"Kunzen Leafeater", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[164929] = {
					"Tirnenn Villager", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[160112] = {
					"Stone Legion Nightblade", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[147827] = {
					"7th Legion Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140661] = {
					"Valethunder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[69791] = {
					"Deengdawnd", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[33134] = {
					"Sara", -- [1]
					"Ulduar", -- [2]
				},
				[140151] = {
					"Rotclaw Cub", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[114624] = {
					"Arcane Warden", -- [1]
					"Return to Karazhan", -- [2]
				},
				[32878] = {
					"Dark Rune Evoker", -- [1]
					"Ulduar", -- [2]
				},
				[144245] = {
					"South Sea Glider", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37229] = {
					"Frostwarden Sorceress", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[10367] = {
					"Shrye Ragefist", -- [1]
					"Alterac Valley", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[124350] = {
					"Kunzen Crusher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[38125] = {
					"Ymirjar Deathbringer", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[171887] = {
					"Slimy Smorgasbord", -- [1]
					"Plaguefall", -- [2]
				},
				[150965] = {
					"Mawsworn Shackler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140663] = {
					"Mountain Lord Grum", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[124582] = {
					"Chasm-Hunter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[124581] = {
					"Spineshell Snapper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171376] = {
					"Head Custodian Javlin", -- [1]
					"Sanguine Depths", -- [2]
				},
				[114625] = {
					"Phantom Guest", -- [1]
					"Return to Karazhan", -- [2]
				},
				[138845] = {
					"Commander Jo'vak", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140152] = {
					"Rotclaw Mauler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[159309] = {
					"Leeching Parasite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[33890] = {
					"Brain of Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[129470] = {
					"Deepsea Crab", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[124351] = {
					"Kunzen Boneripper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[10467] = {
					"Mana Tide Totem", -- [1]
					"Rated Eye of the Storm", -- [2]
				},
				[161140] = {
					"Bwemba", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[169330] = {
					"Mucky Grunt", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[140153] = {
					"Rotclaw Bear", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[168022] = {
					"Slime Tentacle", -- [1]
					"Plaguefall", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[114626] = {
					"Forlorn Spirit", -- [1]
					"Return to Karazhan", -- [2]
				},
				[156022] = {
					"Bubbling Soulmass", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140154] = {
					"Rotclaw Patriarch", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37230] = {
					"Spire Frostwyrm", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[145273] = {
					"The Hand of In'zashi", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[124352] = {
					"Kunzen Stalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134909] = {
					"Chittering Spindleweb", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[174161] = {
					"Lady Sinsear", -- [1]
					"Castle Nathria", -- [2]
				},
				[129471] = {
					"Deepsea Sandcrawler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139417] = {
					"Rotwood the Cursed", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145274] = {
					"Yalat's Bulwark", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[155276] = {
					"Bursting Cragfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140267] = {
					"Greathorn Uwanu", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[112068] = {
					"Leo", -- [1]
					"Isle of Conquest", -- [2]
				},
				[114627] = {
					"Shrieking Terror", -- [1]
					"Return to Karazhan", -- [2]
				},
				[20034] = {
					"Star Scryer", -- [1]
					"Tempest Keep", -- [2]
				},
				[140156] = {
					"Vilemaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138624] = {
					"Amathet Champion", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[2225] = {
					"Zora Guthrek", -- [1]
					"Alterac Valley", -- [2]
				},
				[140670] = {
					"Hulking Rockmane", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[124353] = {
					"Kunzen Hozen", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140159] = {
					"Dreadgrowl the Pustulent", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[171384] = {
					"Research Scribe", -- [1]
					"Sanguine Depths", -- [2]
				},
				[168310] = {
					"Plagueroc", -- [1]
					"Plaguefall", -- [2]
				},
				[140157] = {
					"Rotclaw Cub-Eater", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140669] = {
					"Rockmane Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[131009] = {
					"Spirit of Gold", -- [1]
					"Atal'Dazar", -- [2]
				},
				[144767] = {
					"Gonk's Aspect", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[8896] = {
					"Shadowforge Peasant", -- [1]
					"Blackrock Depths", -- [2]
				},
				[34802] = {
					"Glaive Thrower", -- [1]
					"Isle of Conquest", -- [2]
				},
				[114628] = {
					"Skeletal Waiter", -- [1]
					"Return to Karazhan", -- [2]
				},
				[146816] = {
					"Sir Barton Brigham", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140158] = {
					"Bilesoaked Rotclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33136] = {
					"Guardian of Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[33264] = {
					"Ironwork Cannon", -- [1]
					"Ulduar", -- [2]
				},
				[166264] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[124354] = {
					"Kunzen Hunter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138623] = {
					"Amathet Archer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33776] = {
					"Thugnasty", -- [1]
					"Eye of the Storm", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[4257] = {
					"Lana Thunderbrew", -- [1]
					"Alterac Valley", -- [2]
				},
				[132481] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[135043] = {
					"Vicious Vicejaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140674] = {
					"Deephowl", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[51052] = {
					"Dinky", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[114629] = {
					"Spectral Retainer", -- [1]
					"Return to Karazhan", -- [2]
				},
				[164218] = {
					"Lord Chamberlain", -- [1]
					"Halls of Atonement", -- [2]
				},
				[140160] = {
					"Boilhide the Raging", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140672] = {
					"Dusthide the Mangy", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[165805] = {
					"Shade of Kael'thas", -- [1]
					"Castle Nathria", -- [2]
				},
				[166266] = {
					"Spare Parts", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138625] = {
					"Amathet Enforcer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[175992] = {
					"Dutiful Attendant", -- [1]
					"Castle Nathria", -- [2]
				},
				[34161] = {
					"Mechanostriker 54-A", -- [1]
					"Ulduar", -- [2]
				},
				[114633] = {
					"Spectral Valet", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140673] = {
					"Ragesnarl", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173949] = {
					"Nathrian Soldier", -- [1]
					"Castle Nathria", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[32882] = {
					"Jormungar Behemoth", -- [1]
					"Ulduar", -- [2]
				},
				[138626] = {
					"Amathet Zealot", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[81362] = {
					"Frostwall Goren", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[162689] = {
					"Surgeon Stitchflesh", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[37232] = {
					"Nerub'ar Broodling", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[137091] = {
					"High Perch Initiate", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[13442] = {
					"Archdruid Renferal", -- [1]
					"Alterac Valley", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138627] = {
					"Amathet Hierophant", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135044] = {
					"Shredmaw the Voracious", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139651] = {
					"Coldlight Deepseer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[105419] = {
					"Dire Basilisk", -- [1]
					"Isle of Conquest", -- [2]
				},
				[140675] = {
					"Den Mother Mugo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137092] = {
					"Valorcall Faithful", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[165762] = {
					"Soul Infuser", -- [1]
					"Castle Nathria", -- [2]
				},
				[138628] = {
					"Amathet Priest", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135045] = {
					"Spinesnapper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[139652] = {
					"Coldlight Coastrunner", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[146864] = {
					"Mistscorn Earthbinder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140676] = {
					"Gigantic Stoneback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[138635] = {
					"Commander Husan", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[133510] = {
					"Alliance Paladin", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[13218] = {
					"Grunnda Wolfheart", -- [1]
					"Alterac Valley", -- [2]
				},
				[138629] = {
					"Vicar Djosa", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135046] = {
					"Crawmog", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168318] = {
					"Forsworn Goliath", -- [1]
					"Spires of Ascension", -- [2]
				},
				[138633] = {
					"Brother Maat", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140677] = {
					"Hulking Frostbeard", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132999] = {
					"Nexus-Lord Ashaal", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[165251] = {
					"Illusionary Vulpin", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[138630] = {
					"Cleric Izzad", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114632] = {
					"Spectral Attendant", -- [1]
					"Return to Karazhan", -- [2]
				},
				[139654] = {
					"Dampscale Mudskipper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[165763] = {
					"Vile Occultist", -- [1]
					"Castle Nathria", -- [2]
				},
				[140678] = {
					"Frostbeard Howler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[170882] = {
					"Bone Magus", -- [1]
					"Theater of Pain", -- [2]
				},
				[150958] = {
					"Mawsworn Guard", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138631] = {
					"Pathfinder Qadim", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139655] = {
					"Coldlight Seer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164737] = {
					"Brood Ambusher", -- [1]
					"Plaguefall", -- [2]
				},
				[140679] = {
					"Frostbeard Wendigo", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157571] = {
					"Mawsworn Flametender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139658] = {
					"Coldlight Murkdweller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[128455] = {
					"T'lonja", -- [1]
					"Atal'Dazar", -- [2]
				},
				[138632] = {
					"Guardian Asuda", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139656] = {
					"Coldlight Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140168] = {
					"Elder Chest-Thump", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140680] = {
					"Frozenhorn Rampager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137097] = {
					"Valorcall Spellweaver", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[33651] = {
					"VX-001", -- [1]
					"Ulduar", -- [2]
				},
				[162691] = {
					"Blightbone", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[87760] = {
					"Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[143754] = {
					"Forgus Anvilrage", -- [1]
					"Skittering Hollow (Islands 5)", -- [2]
				},
				[139657] = {
					"Coldlight Shorestriker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144776] = {
					"Airyn Swiftfeet", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173953] = {
					"Loyal Gargon", -- [1]
					"Castle Nathria", -- [2]
				},
				[166275] = {
					"Mistveil Shaper", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162692] = {
					"Amarth", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[138634] = {
					"Prophet Lapisa", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[36978] = {
					"Skybreaker Mortar Soldier", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[168361] = {
					"Fen Hornet", -- [1]
					"Plaguefall", -- [2]
				},
				[140682] = {
					"Glacierfist", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[169859] = {
					"Observer Zelgar", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[166276] = {
					"Mistveil Guardian", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162693] = {
					"Nalthor the Rimebinder", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[87761] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139659] = {
					"Dampscale Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140171] = {
					"Mistfur", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140683] = {
					"Darkfur the Smasher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156245] = {
					"Grand Automaton", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[171432] = {
					"Suppressor Hersi", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[69078] = {
					"Sul the Sandcrawler", -- [1]
					"Throne of Thunder", -- [2]
				},
				[138636] = {
					"Prince Abari", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[173444] = {
					"Caramain", -- [1]
					"Castle Nathria", -- [2]
				},
				[139660] = {
					"Dampscale Murloc", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168837] = {
					"Stealthling", -- [1]
					"Plaguefall", -- [2]
				},
				[140684] = {
					"Crushstomp", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[169861] = {
					"Ickor Bileflesh", -- [1]
					"Plaguefall", -- [2]
				},
				[140979] = {
					"Greatfangs", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[87762] = {
					"Raider's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[146827] = {
					"Feral Dog", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168326] = {
					"Shattered Visage", -- [1]
					"De Other Side", -- [2]
				},
				[139661] = {
					"Dampscale Forager", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[12096] = {
					"Stormpike Quartermaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[173445] = {
					"Sindrel", -- [1]
					"Castle Nathria", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[137614] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[29264] = {
					"Spirit Wolf", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[140685] = {
					"Elderhorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[23775] = {
					"Head of the Horseman", -- [1]
					"Scarlet Monastery", -- [2]
				},
				[139662] = {
					"Dampscale Raincaller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[161334] = {
					"Gnashing Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[173446] = {
					"Hargitas", -- [1]
					"Castle Nathria", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[137375] = {
					"Lightforged Warframe", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[163126] = {
					"Brittlebone Mage", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[136592] = {
					"Flynn Fairwind", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139663] = {
					"Dampscale Reedweaver", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[34164] = {
					"Mechagnome Battletank", -- [1]
					"Ulduar", -- [2]
				},
				[144782] = {
					"Brother Bruen", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146832] = {
					"Necromancer Disciple", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[160169] = {
					"Honored Duelist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[140689] = {
					"Dreadfang Slitherer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146860] = {
					"Mistscorn Marauder", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[114637] = {
					"Spectral Sentry", -- [1]
					"Return to Karazhan", -- [2]
				},
				[139664] = {
					"Dampscale Terrorfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138642] = {
					"Kvaldir Reaver", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[173448] = {
					"Dragost", -- [1]
					"Castle Nathria", -- [2]
				},
				[139666] = {
					"Orgl the Totemic", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[8897] = {
					"Doomforge Craftsman", -- [1]
					"Blackrock Depths", -- [2]
				},
				[138641] = {
					"Kvaldir Dreadbringer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168843] = {
					"Klotos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[165260] = {
					"Oozing Leftovers", -- [1]
					"Theater of Pain", -- [2]
				},
				[138643] = {
					"Kvaldir Berserker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[13152] = {
					"Commander Malgor", -- [1]
					"Alterac Valley", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146834] = {
					"Necromancer Master", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146320] = {
					"Prelate Za'lan", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[36724] = {
					"Servant of the Throne", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139668] = {
					"Wavebinder Gorgl", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[32885] = {
					"Captured Mercenary Soldier", -- [1]
					"Ulduar", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[140690] = {
					"Dreadfang Viper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[123853] = {
					"Alliance Sorceress", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[146835] = {
					"Ghoul", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[33525] = {
					"Mangrove Ent", -- [1]
					"Ulduar", -- [2]
				},
				[146833] = {
					"Necromancer Conjurer", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139667] = {
					"Seer Grglok", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168844] = {
					"Lakesis", -- [1]
					"Spires of Ascension", -- [2]
				},
				[140691] = {
					"Giant Dreadfang", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157583] = {
					"Forge Keeper", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[138646] = {
					"Kvaldir Mistcaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146322] = {
					"Siegebreaker Roka", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[138644] = {
					"Kvaldir Cursewalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[143763] = {
					"Lieutenant Elda", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168845] = {
					"Astronos", -- [1]
					"Spires of Ascension", -- [2]
				},
				[140692] = {
					"Bloodbore", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[157584] = {
					"Flameforge Master", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[168357] = {
					"Zolramus Sorcerer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[60143] = {
					"Gara'jal the Spiritbinder", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[138645] = {
					"Kvaldir Soulflayer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139669] = {
					"Shaman Garmr", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140181] = {
					"Cragtusk", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140693] = {
					"Hisskarath", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[32886] = {
					"Dark Rune Acolyte", -- [1]
					"Ulduar", -- [2]
				},
				[146838] = {
					"Brittle Skeleton", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[36597] = {
					"The Lich King", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[36725] = {
					"Nerub'ar Broodkeeper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[36853] = {
					"Sindragosa", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139670] = {
					"Morgok", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140182] = {
					"Trampleleaf the Jungle Quake", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140694] = {
					"Gorgejaw the Glutton", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[169871] = {
					"Hungry Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[3625] = {
					"Rarck", -- [1]
					"Alterac Valley", -- [2]
				},
				[33526] = {
					"Ironroot Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[138647] = {
					"Hjana Fogbringer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171919] = {
					"Ayeleth's Torturer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[139671] = {
					"Sharkslayer Mugluk", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140183] = {
					"Old Muckhide", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140695] = {
					"Albino Dreadfang", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[105427] = {
					"Skyfury Totem", -- [1]
					"Deepwind Gorge", -- [2]
				},
				[138648] = {
					"Sigrid the Shroud-Weaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130765] = {
					"Jungle Stalker Cub", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140070] = {
					"Bloodscent the Tracker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[168337] = {
					"Moldovaak", -- [1]
					"Castle Nathria", -- [2]
				},
				[99541] = {
					"Risen Skulker", -- [1]
					"Isle of Conquest", -- [2]
				},
				[140696] = {
					"Da'zu the Feared", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145303] = {
					"Kaldorei Glaive Thrower", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[137625] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122263] = {
					"Spineshell Snapjaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138649] = {
					"Vulf Stormshore", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[80858] = {
					"Kor'lok", -- [1]
					"Ashran", -- [2]
				},
				[139673] = {
					"Many-Teeth", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[164261] = {
					"Hungering Destroyer", -- [1]
					"Castle Nathria", -- [2]
				},
				[140697] = {
					"Vile Asp", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145304] = {
					"Feral Strangler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137626] = {
					"Demolishing Terror", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138558] = {
					"Faceless One", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[146840] = {
					"Skeleton Guardian", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[33271] = {
					"General Vezax", -- [1]
					"Ulduar", -- [2]
				},
				[139674] = {
					"Deepscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145305] = {
					"Feral Hulk", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[169875] = {
					"Shackled Soul", -- [1]
					"Theater of Pain", -- [2]
				},
				[148262] = {
					"Tidewater Elemental", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33527] = {
					"Nature's Blade", -- [1]
					"Ulduar", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157094] = {
					"Imperial Curator", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[151960] = {
					"Suntouched Acolyte", -- [1]
					"Halls of Origination", -- [2]
				},
				[164464] = {
					"Xira the Underhanded", -- [1]
					"Theater of Pain", -- [2]
				},
				[172435] = {
					"Sinfall Recruit", -- [1]
					"Sinfall Scenario", -- [2]
				},
				[61341] = {
					"Mounted Mogu", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[139676] = {
					"Wave-Speaker Ormrg", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138652] = {
					"Tide-Cursed Mistress", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[172436] = {
					"Sinfall Recruit", -- [1]
					"Sinfall Scenario", -- [2]
				},
				[160663] = {
					"Essence of Nightmare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131486] = {
					"High Exarch Turalyon", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[106321] = {
					"Tailwind Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146843] = {
					"Spiked Ghoul", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139677] = {
					"Depth-Caller", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138653] = {
					"Hosvir of the Rotting Hull", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[20031] = {
					"Bloodwarder Legionnaire", -- [1]
					"Tempest Keep", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[170323] = {
					"General Grashaal", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[144796] = {
					"High Tinker Mekkatorque", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[173973] = {
					"Nathrian Tracker", -- [1]
					"Castle Nathria", -- [2]
				},
				[146844] = {
					"Olfkrig the Indentured", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139678] = {
					"Shoal-Walker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138654] = {
					"Vestar of the Tattered Sail", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[36855] = {
					"Lady Deathwhisper", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[172438] = {
					"Sinfall Recruit", -- [1]
					"Sinfall Scenario", -- [2]
				},
				[155432] = {
					"Enchanted Emissary", -- [1]
					"The Underrot", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154011] = {
					"Armed Prisoner", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33528] = {
					"Guardian of Life", -- [1]
					"Ulduar", -- [2]
				},
				[146845] = {
					"Jared the Jagged", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144955] = {
					"Zal'zi the Bloodgorged", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139679] = {
					"Argl", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[144807] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[36811] = {
					"Deathspeaker Attendant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[163621] = {
					"Goregrind", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[138827] = {
					"Bodalf the Strong", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139680] = {
					"Lightless Hunter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155945] = {
					"Gherus the Chained", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[173464] = {
					"Deplina", -- [1]
					"Castle Nathria", -- [2]
				},
				[123146] = {
					"Torn Spirit", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[8898] = {
					"Anvilrage Marshal", -- [1]
					"Blackrock Depths", -- [2]
				},
				[146847] = {
					"Summoner Laniella", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[60402] = {
					"Zandalari Fire-Dancer", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[139681] = {
					"Bleakfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132910] = {
					"Bristlemane Squealer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[13153] = {
					"Commander Mulfort", -- [1]
					"Alterac Valley", -- [2]
				},
				[166299] = {
					"Mistveil Tender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[154014] = {
					"Imprisoned Cabalist", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146848] = {
					"Eerie Conglomeration", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[12122] = {
					"Duros", -- [1]
					"Alterac Valley", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[168968] = {
					"Plaguebound Fallen", -- [1]
					"Plaguefall", -- [2]
				},
				[173466] = {
					"Fara", -- [1]
					"Castle Nathria", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146849] = {
					"Spirit Master Rowena", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[176026] = {
					"Dancing Fools", -- [1]
					"Castle Nathria", -- [2]
				},
				[84190] = {
					"Boneshallow Spider", -- [1]
					"Ashran", -- [2]
				},
				[132005] = {
					"Grayson Bell", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[138659] = {
					"Risen Hound", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[14465] = {
					"Alliance Battle Standard", -- [1]
					"Warsong Gulch", -- [2]
				},
				[166301] = {
					"Mistveil Stalker", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[138660] = {
					"Mist Hound", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[152644] = {
					"Deadsoul Drifter", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[146850] = {
					"Grand Master Ulrich", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[171433] = {
					"Suppressor Cer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[152993] = {
					"Garona Halforcen", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138428] = {
					"Spitefin Myrmidon", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[166302] = {
					"Corpse Harvester", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146852] = {
					"Konrad the Enslaver", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[115417] = {
					"Rat", -- [1]
					"Return to Karazhan", -- [2]
				},
				[164255] = {
					"Globgrog", -- [1]
					"Plaguefall", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[173469] = {
					"Kullan", -- [1]
					"Castle Nathria", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[154018] = {
					"Prisonbreak Mauler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[20032] = {
					"Bloodwarder Vindicator", -- [1]
					"Tempest Keep", -- [2]
				},
				[171422] = {
					"Arch-Suppressor Laguas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[168747] = {
					"Venomfang", -- [1]
					"Plaguefall", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69943] = {
					"Spirit Beast", -- [1]
					"Isle of Conquest", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[166304] = {
					"Mistveil Stinger", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[99804] = {
					"Valarjar Falconer", -- [1]
					"Halls of Valor", -- [2]
				},
				[146853] = {
					"Kefolkis the Unburied", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[36961] = {
					"Skybreaker Sergeant", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[172447] = {
					"Sinfall Recruit", -- [1]
					"Sinfall Scenario", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[173633] = {
					"Nathrian Archivist", -- [1]
					"Castle Nathria", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[154020] = {
					"Prisonbreak Cursewalker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[126422] = {
					"Coralback Scuttler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[146854] = {
					"Stella Darkpaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[119000] = {
					"Dreadbeard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[59764] = {
					"Healing Tide Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[168005] = {
					"Empowered Deadsoul Shambler", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146855] = {
					"Akina", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[12129] = {
					"Onyxian Warder", -- [1]
					"Onyxia's Lair", -- [2]
				},
				[88288] = {
					"Dungeoneer's Training Dummy", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155433] = {
					"Void-Touched Emissary", -- [1]
					"The Underrot", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140074] = {
					"Sharptooth", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126423] = {
					"Coralback Crab", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139384] = {
					"Slitherblade Striker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[111570] = {
					"wingdog", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139690] = {
					"Brineshell Seacaller", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[145001] = {
					"Lanara Moonshade", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[115418] = {
					"Spider", -- [1]
					"Return to Karazhan", -- [2]
				},
				[139675] = {
					"Fathom-Seeker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[146114] = {
					"Surging Winds", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[172434] = {
					"Sinfall Recruit", -- [1]
					"Sinfall Scenario", -- [2]
				},
				[138650] = {
					"Tide-Lost Champion", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139691] = {
					"Brineshell Squallshaper", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[123286] = {
					"Southsea Gambler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139672] = {
					"Gibberfin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146326] = {
					"Headhunter Gal'wana", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147370] = {
					"Bladeguard Kaja", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139692] = {
					"Brineshell Elder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[115419] = {
					"Ancient Tome", -- [1]
					"Return to Karazhan", -- [2]
				},
				[169893] = {
					"Nefarious Darkspeaker", -- [1]
					"Theater of Pain", -- [2]
				},
				[35451] = {
					"The Black Knight", -- [1]
					"Trial of the Champion", -- [2]
				},
				[140180] = {
					"Brutalgore", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146859] = {
					"Enslaved Rock Elemental", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145298] = {
					"Feral Hungerer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[20033] = {
					"Astromancer", -- [1]
					"Tempest Keep", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[148907] = {
					"Prismatic Image", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126169] = {
					"Jungle King Runtu", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[69351] = {
					"Greater Cave Bat", -- [1]
					"Throne of Thunder", -- [2]
				},
				[146831] = {
					"Kul Tiran Stormbringer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139694] = {
					"Mordshell", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[153003] = {
					"Soul Fragment", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[111004] = {
					"Gelatinized Decay", -- [1]
					"The Emerald Nightmare", -- [2]
				},
				[162729] = {
					"Patchwerk Soldier", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[171431] = {
					"Suppressor Vellon", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129553] = {
					"Dinomancer Kish'o", -- [1]
					"Atal'Dazar", -- [2]
				},
				[139695] = {
					"Swipeclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[104818] = {
					"Ancestral Protection Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157099] = {
					"Imperial Censor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[69352] = {
					"Vampiric Cave Bat", -- [1]
					"Throne of Thunder", -- [2]
				},
				[58605] = {
					"Scarlet Judicator", -- [1]
					"Scarlet Monastery", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[146862] = {
					"Mistscorn Subjugator", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[164266] = {
					"Domina Venomblade", -- [1]
					"Plaguefall", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[132530] = {
					"Kul Tiran Vanguard", -- [1]
					"Siege of Boralus", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[165764] = {
					"Rockbound Vanquisher", -- [1]
					"Castle Nathria", -- [2]
				},
				[8899] = {
					"Doomforge Dragoon", -- [1]
					"Blackrock Depths", -- [2]
				},
				[146863] = {
					"Mistscorn Ravager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114634] = {
					"Undying Servant", -- [1]
					"Return to Karazhan", -- [2]
				},
				[164267] = {
					"Margrave Stradama", -- [1]
					"Plaguefall", -- [2]
				},
				[140681] = {
					"Gurudu The Gorge", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[13154] = {
					"Commander Louis Philips", -- [1]
					"Alterac Valley", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122076] = {
					"Snow Orb", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[150959] = {
					"Mawsworn Interceptor", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[147376] = {
					"Barrier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[139698] = {
					"Clattercraw the Oracle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37116] = {
					"Skybreaker Sorcerer", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[157102] = {
					"Imperial Consular", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133556] = {
					"Razak Ironsides", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144772] = {
					"Lady Tamakeen", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[167806] = {
					"Animated Sin", -- [1]
					"Halls of Atonement", -- [2]
				},
				[154030] = {
					"Oddly Large Mawrat", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[157572] = {
					"Mawsworn Firecaller", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[133557] = {
					"Razak Ironsides", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146866] = {
					"Enslaved Frost Elemental", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[9056] = {
					"Fineous Darkvire", -- [1]
					"Blackrock Depths", -- [2]
				},
				[168365] = {
					"Fungret Shroomtender", -- [1]
					"Plaguefall", -- [2]
				},
				[55659] = {
					"Wild Imp", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[173484] = {
					"Conjured Manifestation", -- [1]
					"Castle Nathria", -- [2]
				},
				[140671] = {
					"Feralclaw the Rager", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146813] = {
					"Gunther the Gray", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146867] = {
					"Mistscorn Sharphorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[12127] = {
					"Stormpike Guardsman", -- [1]
					"Alterac Valley", -- [2]
				},
				[139701] = {
					"Brineshell Minor Oracle", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168878] = {
					"Rigged Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[32865] = {
					"Thorim", -- [1]
					"Ulduar", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[170414] = {
					"Howling Spectre", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[126429] = {
					"Encrusted Coralback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140101] = {
					"Swampwallow", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122846] = {
					"Leftovers", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[37117] = {
					"Kor'kron Battle-Mage", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[153011] = {
					"Binder Baritas", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[14466] = {
					"Horde Battle Standard", -- [1]
					"Rated Eye of the Storm", -- [2]
				},
				[37501] = {
					"Nerub'ar Champion", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[170927] = {
					"Erupting Ooze", -- [1]
					"Plaguefall", -- [2]
				},
				[146869] = {
					"Gyrum the Virulent", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144160] = {
					"Chopper Redhook", -- [1]
					"Siege of Boralus", -- [2]
				},
				[152500] = {
					"Deadsoul Amalgam", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[144822] = {
					"Golden Flametongue", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155824] = {
					"Lumbering Creation", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[129469] = {
					"Deepsea Crawler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[138388] = {
					"Kung", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146870] = {
					"Spellbinder Ohnazae", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140662] = {
					"Elder Greatfur", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[147828] = {
					"7th Legion Cavalier", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[169905] = {
					"Risen Warlord", -- [1]
					"De Other Side", -- [2]
				},
				[170417] = {
					"Animated Stygia", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[165415] = {
					"Toiling Groundskeeper", -- [1]
					"Halls of Atonement", -- [2]
				},
				[146871] = {
					"Matriarch Nas'naya", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[119742] = {
					"Felguard Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[172064] = {
					"Unstable Larva", -- [1]
					"Plaguefall", -- [2]
				},
				[168882] = {
					"Fleeting Manifestation", -- [1]
					"Sanguine Depths", -- [2]
				},
				[144824] = {
					"Slimeskin Toad", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[170418] = {
					"Goxul the Devourer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140338] = {
					"Clutch Guardian Jinka'lo", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146872] = {
					"Kachota the Exiled", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157368] = {
					"Velinaria", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[160181] = {
					"Royal Arcanist", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[139413] = {
					"Mirelurk Oasis-Speaker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[153015] = {
					"Bound Soul", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[37502] = {
					"Nerub'ar Webweaver", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[165414] = {
					"Depraved Obliterator", -- [1]
					"Halls of Atonement", -- [2]
				},
				[146873] = {
					"Murderous Tempest", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148615] = {
					"Div'yane", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[70246] = {
					"Spirit Flayer", -- [1]
					"Throne of Thunder", -- [2]
				},
				[148921] = {
					"Kaldorei Glaive Thrower", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[14772] = {
					"East Frostwolf Warmaster", -- [1]
					"Alterac Valley", -- [2]
				},
				[145850] = {
					"Gilnean Defuser", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[154552] = {
					"Amathet Zealot", -- [1]
					"Halls of Origination", -- [2]
				},
				[146874] = {
					"Windcaller Mariah", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[23682] = {
					"Headless Horseman", -- [1]
					"Scarlet Monastery", -- [2]
				},
				[144827] = {
					"Bogbelcher", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[157122] = {
					"Patrician Cromwell", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[145851] = {
					"Kaldorei Hippogryph Rider", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[140058] = {
					"Grizzlefur Patriarch", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146875] = {
					"Valimok the Vicious", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[172899] = {
					"Nathrian Enforcer", -- [1]
					"Castle Nathria", -- [2]
				},
				[20035] = {
					"Bloodwarder Marshal", -- [1]
					"Tempest Keep", -- [2]
				},
				[172981] = {
					"Kyrian Stitchwerk", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[147225] = {
					"Azerite Extractor", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136043] = {
					"Brackish", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[149352] = {
					"Jeweled Azergem Crystalback", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[154554] = {
					"Amathet Guardian", -- [1]
					"Halls of Origination", -- [2]
				},
				[146876] = {
					"Machitu the Brutal", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135834] = {
					"Vile Cloud", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140322] = {
					"Stonehusk Broodwatcher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144829] = {
					"Thundercroak", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[139813] = {
					"Senior Producer Gixi", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[154555] = {
					"Amathet Artificer", -- [1]
					"Halls of Origination", -- [2]
				},
				[155275] = {
					"Tideshaper Korvess", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130622] = {
					"Squallshaper Auran", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[103822] = {
					"Treant", -- [1]
					"Isle of Conquest", -- [2]
				},
				[152508] = {
					"Dusky Tremorbeast", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[144830] = {
					"Yaz'za the Devourer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[169912] = {
					"Enraged Mask", -- [1]
					"De Other Side", -- [2]
				},
				[135002] = {
					"Demonic Tyrant", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146366] = {
					"Molten Hound", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[171448] = {
					"Dreadful Huntmaster", -- [1]
					"Sanguine Depths", -- [2]
				},
				[32908] = {
					"Captured Mercenary Captain", -- [1]
					"Ulduar", -- [2]
				},
				[34944] = {
					"Keep Cannon", -- [1]
					"Isle of Conquest", -- [2]
				},
				[160699] = {
					"Angry Mailemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[123285] = {
					"Southsea Swabbie", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[128649] = {
					"Sergeant Bainbridge", -- [1]
					"Siege of Boralus", -- [2]
				},
				[158140] = {
					"Frenzied Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146367] = {
					"Char'golm", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[169265] = {
					"Creepy Crawler", -- [1]
					"Plaguefall", -- [2]
				},
				[60410] = {
					"Elegon", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[35305] = {
					"Argent Monk", -- [1]
					"Trial of the Champion", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[168058] = {
					"Infused Quill-feather", -- [1]
					"Sanguine Depths", -- [2]
				},
				[5913] = {
					"Tremor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[146880] = {
					"Gholvran the Cryptic", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[137059] = {
					"Headshrinker Gaha", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[149344] = {
					"Fury Imbued Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168891] = {
					"Rigged Plagueborer", -- [1]
					"Plaguefall", -- [2]
				},
				[144833] = {
					"Whiptongue", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[13443] = {
					"Druid of the Grove", -- [1]
					"Alterac Valley", -- [2]
				},
				[132741] = {
					"Flamescale Hydra", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[174336] = {
					"Kennel Overseer", -- [1]
					"Castle Nathria", -- [2]
				},
				[146881] = {
					"Soothsayer Brinvulf", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132802] = {
					"Craghorn Yeti", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152512] = {
					"Stormwraith", -- [1]
					"The Eternal Palace", -- [2]
				},
				[165479] = {
					"Court Enforcer", -- [1]
					"Castle Nathria", -- [2]
				},
				[149441] = {
					"Frozen Ballista", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[162238] = {
					"Darkwhisper Cultist", -- [1]
					"Blackwing Descent Scenario", -- [2]
				},
				[146370] = {
					"Dark Iron Vanguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146882] = {
					"Gargantuan Blighthound", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132742] = {
					"Flamescale Strider", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[123271] = {
					"Saltfur Stick-Thrower", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[137246] = {
					"Alliance Siege Engine", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[174012] = {
					"Executrix Ophelia", -- [1]
					"Castle Nathria", -- [2]
				},
				[140089] = {
					"Gloamhoof the Elder", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146371] = {
					"Dark Iron Primalist", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[146883] = {
					"Houndmaster Angvold", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[136003] = {
					"Gravellus", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[160704] = {
					"Letter Encrusted Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[114284] = {
					"Elfyra", -- [1]
					"Return to Karazhan", -- [2]
				},
				[174773] = {
					"Spiteful Shade", -- [1]
					"Plaguefall", -- [2]
				},
				[122086] = {
					"Slitherblade Ironscale", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[33431] = {
					"Forest Swarmer", -- [1]
					"Ulduar", -- [2]
				},
				[130788] = {
					"Taghira", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[5139] = {
					"Kurdrum Barleybeard", -- [1]
					"Alterac Valley", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144837] = {
					"Darkshore Stag", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[157634] = {
					"Flameforge Enforcer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146885] = {
					"Foulshriek", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[119052] = {
					"War Banner", -- [1]
					"Rated Eye of the Storm", -- [2]
				},
				[134798] = {
					"Abyss Crawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[172991] = {
					"Drust Soulcleaver", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137160] = {
					"Valorcall Engineer", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[135718] = {
					"Nightsaber Cub", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[146886] = {
					"Hrolskald the Fetid", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[124583] = {
					"Garnetback Worm", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[162038] = {
					"Regal Mistdancer", -- [1]
					"Sanguine Depths", -- [2]
				},
				[69132] = {
					"High Priestess Mar'li", -- [1]
					"Throne of Thunder", -- [2]
				},
				[144839] = {
					"Whitetail Doe", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[5925] = {
					"Grounding Totem", -- [1]
					"Silvershard Mines", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[163058] = {
					"Mistveil Defender", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[144840] = {
					"Mottled Fawn", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[34657] = {
					"Jaelyne Evensong", -- [1]
					"Trial of the Champion", -- [2]
				},
				[122088] = {
					"Slitherblade Skulker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[159301] = {
					"General Kaal", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[164804] = {
					"Droman Oulfarran", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[37122] = {
					"Captain Arnath", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[140424] = {
					"Scythehorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145865] = {
					"Worgen Musketeer", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[146889] = {
					"Fleshrot Deathwalker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[167876] = {
					"Inquisitor Sigar", -- [1]
					"Halls of Atonement", -- [2]
				},
				[102509] = {
					"Underlight Crusader", -- [1]
					"Gloaming Reef", -- [2]
				},
				[96677] = {
					"Steeljaw Grizzly", -- [1]
					"Halls of Valor", -- [2]
				},
				[144842] = {
					"Tide Crawler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[167615] = {
					"Depraved Darkblade", -- [1]
					"Halls of Atonement", -- [2]
				},
				[122089] = {
					"Slitherblade Oracle", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140076] = {
					"Knucklebump Silverback", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146890] = {
					"Fleshrot Runeweaver", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131578] = {
					"Burning Exile", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140106] = {
					"Deathsting Broodwatcher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[94960] = {
					"Hymdall", -- [1]
					"Halls of Valor", -- [2]
				},
				[35331] = {
					"Gnomeregan Champion", -- [1]
					"Trial of the Champion", -- [2]
				},
				[162325] = {
					"Warrior", -- [1]
					"Vision of Ysera Scenario", -- [2]
				},
				[145065] = {
					"Fledgling Nightwing", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[167965] = {
					"Lubricator", -- [1]
					"De Other Side", -- [2]
				},
				[129000] = {
					"Southsea Brawler", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[20037] = {
					"Tempest Falconer", -- [1]
					"Tempest Keep", -- [2]
				},
				[102506] = {
					"Underlight Herald", -- [1]
					"Gloaming Reef", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[126185] = {
					"Zian-Ti Shadowcaster", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[114801] = {
					"Spectral Apprentice", -- [1]
					"Return to Karazhan", -- [2]
				},
				[146892] = {
					"Fleshrot Marauder", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140987] = {
					"Fleshmelter the Insatiable", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140297] = {
					"Nok-arak", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139443] = {
					"Spinebender Kuntai", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148940] = {
					"Kaldorei Chimaera", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[169927] = {
					"Putrid Butcher", -- [1]
					"Theater of Pain", -- [2]
				},
				[138515] = {
					"Endalion", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139442] = {
					"Backbreaker Zukan", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146893] = {
					"Fleshrot Mystic", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140844] = {
					"Zephis", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[13358] = {
					"Stormpike Bowman", -- [1]
					"Alterac Valley", -- [2]
				},
				[33216] = {
					"Mechagnome Pilot", -- [1]
					"Ulduar", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[133585] = {
					"Dizzy Dina", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[132913] = {
					"Island Ettin", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[146894] = {
					"Fleshrot Cabalist", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148618] = {
					"Archdruid Andrenius", -- [1]
					"Warfronts Darkshore - Horde", -- [2]
				},
				[168393] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[136012] = {
					"Mountanus the Immovable", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[35332] = {
					"Darnassus Champion", -- [1]
					"Trial of the Champion", -- [2]
				},
				[85766] = {
					"Cursed Sharptalon", -- [1]
					"Ashran", -- [2]
				},
				[162763] = {
					"Soulforged Bonereaver", -- [1]
					"Theater of Pain", -- [2]
				},
				[146895] = {
					"Fleshrot Vandal", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140431] = {
					"Craghoof Goat", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168394] = {
					"Slimy Morsel", -- [1]
					"Plaguefall", -- [2]
				},
				[132051] = {
					"Blood Tick", -- [1]
					"The Underrot", -- [2]
				},
				[69905] = {
					"Gurubashi Berserker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[81398] = {
					"Frostwall Goren Hatchling", -- [1]
					"FW Horde Garrison Level 3", -- [2]
				},
				[161815] = {
					"K'thir Voidcaller", -- [1]
					"Chamber of Heart - Scenario", -- [2]
				},
				[20047] = {
					"Crimson Hand Battle Mage", -- [1]
					"Tempest Keep", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[37124] = {
					"Captain Grondel", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[37534] = {
					"Spinestalker", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[133588] = {
					"Automatic Explosive Ejector", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134794] = {
					"Darklurker", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[122967] = {
					"Priestess Alun'za", -- [1]
					"Atal'Dazar", -- [2]
				},
				[168396] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[140429] = {
					"Drifthopper the Swift", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[138446] = {
					"Fathom-Caller Zelissa", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[102511] = {
					"Underlight Deepfeeder", -- [1]
					"Gloaming Reef", -- [2]
				},
				[60709] = {
					"Qiang the Merciless", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[85750] = {
					"Sharptalon Outcast", -- [1]
					"Ashran", -- [2]
				},
				[70230] = {
					"Zandalari Blade Initiate", -- [1]
					"Throne of Thunder", -- [2]
				},
				[122004] = {
					"Clevergirl", -- [1]
					"Isle of Conquest", -- [2]
				},
				[20060] = {
					"Lord Sanguinar", -- [1]
					"Tempest Keep", -- [2]
				},
				[34014] = {
					"Sanctum Sentry", -- [1]
					"Ulduar", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"The Eternal Palace", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[132760] = {
					"Plains Creeper", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[124580] = {
					"Grotto Terrapin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[114317] = {
					"Lady Catriona Von'Indi", -- [1]
					"Return to Karazhan", -- [2]
				},
				[20038] = {
					"Phoenix-Hawk Hatchling", -- [1]
					"Tempest Keep", -- [2]
				},
				[164815] = {
					"Zolramus Siphoner", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[157137] = {
					"Terror Tendril", -- [1]
					"Halls of Origination", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[135245] = {
					"Bilge Rat Demolisher", -- [1]
					"Siege of Boralus", -- [2]
				},
				[20064] = {
					"Thaladred the Darkener", -- [1]
					"Tempest Keep", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[4255] = {
					"Brogus Thunderbrew", -- [1]
					"Alterac Valley", -- [2]
				},
				[147924] = {
					"Geoshard", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37125] = {
					"Captain Rupert", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[69390] = {
					"Zandalari Storm-Caller", -- [1]
					"Throne of Thunder", -- [2]
				},
				[161745] = {
					"Hepthys", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[14185] = {
					"Najak Hexxen", -- [1]
					"Alterac Valley", -- [2]
				},
				[99828] = {
					"Trained Hawk", -- [1]
					"Halls of Valor", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[138828] = {
					"Berhild the Fierce", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129517] = {
					"Reanimated Raptor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[173720] = {
					"Mistveil Gorgegullet", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[167607] = {
					"Stoneborn Slasher", -- [1]
					"Halls of Atonement", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[132126] = {
					"Gilded Priestess", -- [1]
					"Atal'Dazar", -- [2]
				},
				[126216] = {
					"Zian-Ti Destroyer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140248] = {
					"Moonchaser the Swift", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140760] = {
					"Earthliving Giant", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[147928] = {
					"Geoscatter", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[32904] = {
					"Dark Rune Commoner", -- [1]
					"Ulduar", -- [2]
				},
				[35590] = {
					"Risen Champion", -- [1]
					"Trial of the Champion", -- [2]
				},
				[10981] = {
					"Frost Wolf", -- [1]
					"Alterac Valley", -- [2]
				},
				[135130] = {
					"Siege Tower", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[135642] = {
					"Duskcoat Tiger Cub", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140249] = {
					"Slatehide", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[33113] = {
					"Flame Leviathan", -- [1]
					"Ulduar", -- [2]
				},
				[168443] = {
					"Zolramus Necromancer", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[61056] = {
					"Primal Earth Elemental", -- [1]
					"Silvershard Mines", -- [2]
				},
				[136859] = {
					"Bloodscalp", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[171474] = {
					"Finger Food", -- [1]
					"Plaguefall", -- [2]
				},
				[123270] = {
					"Chef Gru", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[135643] = {
					"Ren'kiri", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140250] = {
					"Pinegraze Stag", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[173360] = {
					"Plaguebelcher", -- [1]
					"Plaguefall", -- [2]
				},
				[118176] = {
					"Thundershock", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163121] = {
					"Stitched Vanguard", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[138888] = {
					"Bloodwake Soothsayer", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[159190] = {
					"Synod", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[167892] = {
					"Tormented Soul", -- [1]
					"Halls of Atonement", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[148441] = {
					"Gnomish Gyro-Engineer", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[34183] = {
					"Arachnopod Destroyer", -- [1]
					"Ulduar", -- [2]
				},
				[135989] = {
					"Shieldbearer of Zul", -- [1]
					"Atal'Dazar", -- [2]
				},
				[140982] = {
					"Icecracker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[140977] = {
					"Jadescale Gnasher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132877] = {
					"Dankscale", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140981] = {
					"Gnashing Horror", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[135645] = {
					"Elder Pridemother", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[148442] = {
					"Gnomish Commando", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140854] = {
					"Flow", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[158168] = {
					"Dark Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[139342] = {
					"Icetusk Warrior", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[174126] = {
					"Baron Duskhollow", -- [1]
					"Castle Nathria", -- [2]
				},
				[135646] = {
					"Bloodstripe the Render", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[148443] = {
					"Defense-A-Bot", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140978] = {
					"Doomtunnel", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[145372] = {
					"Wild Mooncaller", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[158169] = {
					"Devout Disciple", -- [1]
					"Halls of Origination", -- [2]
				},
				[126449] = {
					"Siltspitter", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[164451] = {
					"Dessia the Decapitator", -- [1]
					"Theater of Pain", -- [2]
				},
				[135647] = {
					"Ituakee", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[37127] = {
					"Ymirjar Frostbinder", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Siege of Boralus", -- [2]
				},
				[33288] = {
					"Yogg-Saron", -- [1]
					"Ulduar", -- [2]
				},
				[174550] = {
					"Myskia", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[162057] = {
					"Chamber Sentinel", -- [1]
					"Sanguine Depths", -- [2]
				},
				[136864] = {
					"Uguu the Feared", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[122778] = {
					"Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135648] = {
					"Driftcoat", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[34184] = {
					"Clockwork Mechanic", -- [1]
					"Ulduar", -- [2]
				},
				[69944] = {
					"Sand Elemental", -- [1]
					"Throne of Thunder", -- [2]
				},
				[158171] = {
					"Faceless Destroyer", -- [1]
					"Halls of Origination", -- [2]
				},
				[156837] = {
					"Valeera Sanguinar", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[146910] = {
					"Fleshrot Plaguetalon", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[102392] = {
					"Resonance Totem", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135649] = {
					"Clawflurry", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[173016] = {
					"Corpse Collector", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[140768] = {
					"Guuru the Mountain-Breaker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140064] = {
					"Bloodsoaked Grizzlefur", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[8902] = {
					"Shadowforge Citizen", -- [1]
					"Blackrock Depths", -- [2]
				},
				[146911] = {
					"Fleshrot Blighthound", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[167898] = {
					"Manifestation of Envy", -- [1]
					"Halls of Atonement", -- [2]
				},
				[147935] = {
					"Azergem Crawler", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140769] = {
					"Goldenvein", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155810] = {
					"Frozen Sentry", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160404] = {
					"Angry Bear Rug Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[126451] = {
					"Crushclaw", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140371] = {
					"Egg-Tender Ny'xik", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[126963] = {
					"Gwyndra Wildhammer", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[152852] = {
					"Pashmar the Fanatical", -- [1]
					"The Eternal Palace", -- [2]
				},
				[145030] = {
					"Arctic Poacher", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[141282] = {
					"Kul Tiran Footman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[103673] = {
					"Darkglare", -- [1]
					"Temple of Kotmogu", -- [2]
				},
				[135958] = {
					"Malachite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[139814] = {
					"Merger Specialist Huzzle", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[58959] = {
					"Niple", -- [1]
					"The Eternal Palace", -- [2]
				},
				[114792] = {
					"Virtuous Lady", -- [1]
					"Return to Karazhan", -- [2]
				},
				[140259] = {
					"Runehoof Greatstag", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[134215] = {
					"Duskrunner Lorinas", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[133605] = {
					"Escaped Convict", -- [1]
					"Tol Dagor", -- [2]
				},
				[114316] = {
					"Baroness Dorothea Millstipe", -- [1]
					"Return to Karazhan", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[155616] = {
					"Zanj'ir Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[140260] = {
					"Runehoof Courser", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[148962] = {
					"Ravenous Stalker", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[138507] = {
					"Warlord Ultriss", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[146178] = {
					"Azurespine", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[152236] = {
					"Lady Ashvane", -- [1]
					"The Eternal Palace", -- [2]
				},
				[161562] = {
					"General Shar'az", -- [1]
					"Halls of Origination", -- [2]
				},
				[84223] = {
					"Harrison Jones", -- [1]
					"Ashran", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[32517] = {
					"Epic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139410] = {
					"Visz the Silent Blade", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[140061] = {
					"Grizzlefur Den-Mother", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[155618] = {
					"Zanj'ir Huntress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156130] = {
					"Lesser Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140262] = {
					"Runehoof Doe", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139444] = {
					"Necrolord Zian", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[155813] = {
					"Court Attendant", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[165111] = {
					"Drust Spiteclaw", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[155619] = {
					"Zanj'ir Honor Guard", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156131] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140263] = {
					"Runehoof Stag", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				[167566] = {
					"Bleakwing Assassin", -- [1]
					"Castle Nathria", -- [2]
				},
				[163459] = {
					"Forsworn Mender", -- [1]
					"Spires of Ascension", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151612] = {
					"Amathet Sun Priest", -- [1]
					"Halls of Origination", -- [2]
				},
				[134796] = {
					"King Spineclaw", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[156132] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[140264] = {
					"Runehoof Calf", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[161251] = {
					"Cultist Sycophant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135818] = {
					"Gust Soldier", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[132746] = {
					"Frostscale Broodmother", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[163559] = {
					"Royal Servant", -- [1]
					"Revendreth Scenario", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[132743] = {
					"Flamescale Wavebreaker", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[168418] = {
					"Forsworn Inquisitor", -- [1]
					"Spires of Ascension", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[140777] = {
					"Gemshard Colossus", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[132740] = {
					"Venomscale Hydra", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[37133] = {
					"Ymirjar Warlord", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[152703] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[123533] = {
					"Tarneth", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[138433] = {
					"Tidemistress Vessana", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156134] = {
					"Ghastly Charger", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[140266] = {
					"Broken-Horn the Ancient", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159312] = {
					"Living Blood", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[26125] = {
					"Cogemédula", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[146409] = {
					"Lady Jaina Proudmoore", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132755] = {
					"Breakbeak Scavenger", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129015] = {
					"Southsea Third Mate", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[168420] = {
					"Forsworn Champion", -- [1]
					"Spires of Ascension", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[168001] = {
					"Empowered Flameforge Enforcer", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[145898] = {
					"Anointed Disciple", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[33430] = {
					"Guardian Lasher", -- [1]
					"Ulduar", -- [2]
				},
				[164873] = {
					"Runestag Elderhorn", -- [1]
					"De Other Side", -- [2]
				},
				[37003] = {
					"Skybreaker Vindicator", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[139756] = {
					"Cutthroat Sheila", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140268] = {
					"Ano Forest-Keeper", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[69911] = {
					"Zandalari Warlord", -- [1]
					"Throne of Thunder", -- [2]
				},
				[155684] = {
					"Depthcaller Xith'el", -- [1]
					"Mogu'shan Scenario", -- [2]
				},
				[155738] = {
					"Rallying Banner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[83715] = {
					"Risen Ancient", -- [1]
					"Ashran", -- [2]
				},
				[129016] = {
					"Southsea Musketeer", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[20041] = {
					"Crystalcore Sentinel", -- [1]
					"Tempest Keep", -- [2]
				},
				[168934] = {
					"Enraged Spirit", -- [1]
					"De Other Side", -- [2]
				},
				[144876] = {
					"Apetagonizer 3000", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[132807] = {
					"Zian-Ti Quilen", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[36808] = {
					"Deathspeaker Zealot", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[138254] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[164345] = {
					"Scavenging Soul Eater", -- [1]
					"Ardenweald Covenant Chapter 2 Scenario", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[147948] = {
					"Coagulated Azerite", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137765] = {
					"Veteran Priestess", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[173142] = {
					"Dread Feaster", -- [1]
					"Castle Nathria", -- [2]
				},
				[61250] = {
					"Sorcerer Mogu", -- [1]
					"Mogu'shan Vaults", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[122968] = {
					"Yazma", -- [1]
					"Atal'Dazar", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139759] = {
					"Mutineer Jalia", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[168102] = {
					"Empowered Deadsoul Echo", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[138224] = {
					"Crusading Lightbringer", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[155221] = {
					"Faeleaf Tender", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[155628] = {
					"Azsh'ari Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139760] = {
					"Head Navigator Franklin", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[140272] = {
					"Forest-Strider", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[139432] = {
					"Lu'si", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[147968] = {
					"Agitated Azerite", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[145903] = {
					"Darkforged Crusader", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[140434] = {
					"Craghoof Rockhorn", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[116549] = {
					"Backup Singer", -- [1]
					"Return to Karazhan", -- [2]
				},
				[155629] = {
					"Azsh'ari Stormbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[139761] = {
					"Deckmaster O'Rourke", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[140273] = {
					"Runehoof Denkeeper", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129786] = {
					"Brineshell Makrura", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[134216] = {
					"Shadeweaver Zarra", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[170474] = {
					"Brood Assassin", -- [1]
					"Plaguefall", -- [2]
				},
				[148120] = {
					"Kul Tiran Marine", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[148631] = {
					"Unexploded Ordnance", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[147440] = {
					"Blazing Fireguard", -- [1]
					"Battle of Dazar'alor", -- [2]
				},
				[156142] = {
					"Seeker of Souls", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[70153] = {
					"Fungal Growth", -- [1]
					"Throne of Thunder", -- [2]
				},
				[152708] = {
					"Mawsworn Seeker", -- [1]
					"Torghast, Tower of the Damned", -- [2]
				},
				[33293] = {
					"XT-002 Deconstructor", -- [1]
					"Ulduar", -- [2]
				},
				[173613] = {
					"Nathrian Registrar", -- [1]
					"Castle Nathria", -- [2]
				},
				[173655] = {
					"Mistveil Matriarch", -- [1]
					"Mists of Tirna Scithe", -- [2]
				},
				[136713] = {
					"Highlands Laborer", -- [1]
					"Warfronts Arathi - Horde", -- [2]
				},
				[140292] = {
					"Snowfur Alpha", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[38028] = {
					"Web Wrap", -- [1]
					"Icecrown Citadel", -- [2]
				},
				[173044] = {
					"Stitching Assistant", -- [1]
					"The Necrotic Wake", -- [2]
				},
				[165357] = {
					"Pestilence Slime", -- [1]
					"Plaguefall", -- [2]
				},
				[62982] = {
					"Mindbender", -- [1]
					"Warsong Gulch", -- [2]
				},
				[130299] = {
					"Droplet", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[129828] = {
					"Brineshell Clacker", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[13798] = {
					"Jotek", -- [1]
					"Alterac Valley", -- [2]
				},
				[155691] = {
					"Zanj'ir Wrangler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[123478] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[136181] = {
					"Volcano", -- [1]
					"The Dread Chain (Islands 4)", -- [2]
				},
				[134769] = {
					"Jagged Claw", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[122450] = {
					"Garothi Worldbreaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[123480] = {
					"Antoran Champion", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Un'gol Ruins (Islands 1)", -- [2]
				},
				[167406] = {
					"Sire Denathrius", -- [1]
					"Castle Nathria", -- [2]
				},
				[127233] = {
					"Flameweaver", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[168942] = {
					"Death Speaker", -- [1]
					"De Other Side", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[122477] = {
					"F'harg", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[126205] = {
					"Profit-O-Matic", -- [1]
					"Whispering Reef (Islands 10)", -- [2]
				},
				[69131] = {
					"Frost King Malakk", -- [1]
					"Throne of Thunder", -- [2]
				},
				[97068] = {
					"Storm Drake", -- [1]
					"Halls of Valor", -- [2]
				},
			},
			["aura_frame1_anchor"] = {
				["y"] = 3.0299987792969,
				["side"] = 1,
			},
			["indicator_scale"] = 0.62000000476837,
			["aura_grow_direction"] = 3,
			["focus_color"] = {
				0.36470588235294, -- [1]
				0.36470588235294, -- [2]
				0.36470588235294, -- [3]
			},
			["indicator_anchor"] = {
				["y"] = 0.1199951171875,
				["x"] = -4,
			},
			["health_selection_overlay_alpha"] = 0.1499999910593,
			["extra_icon_timer_font"] = "Accidental Presidency",
			["not_affecting_combat_alpha"] = 1,
			["extra_icon_stack_font"] = "Accidental Presidency",
			["aura_height"] = 11,
			["aura_padding"] = 0.5,
			["cast_statusbar_bgtexture"] = "PlaterBackground",
			["aura2_x_offset"] = 0,
			["target_indicator"] = "EthricArrow10",
			["hook_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 88,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Options"] = {
					},
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Spike Tentacle\"] = \"#0000FF\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        [\"K'thir Mindcarver\"] = \"#0000FF\",\n        [\"SI:7 Informant\"] = \"#0000FF\",\n        [\"K'thir Dominator\"] = \"#0000FF\",\n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1608397166,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["PlaterCore"] = 1,
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 112,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Options"] = {
					},
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        [\"Ignite\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"#990000\"\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
					},
					["Prio"] = 81,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["Time"] = 1607981211,
					["Icon"] = 136207,
					["PlaterCore"] = 1,
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 180,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Options"] = {
					},
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["Time"] = 1607981225,
					["Icon"] = 133689,
					["PlaterCore"] = 1,
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 56,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Options"] = {
					},
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2280,
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663572,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["PlaterCore"] = 1,
				}, -- [4]
				{
					["Enabled"] = false,
					["Revision"] = 74,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Options"] = {
					},
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663593,
					["Icon"] = 1990989,
					["PlaterCore"] = 1,
				}, -- [5]
				{
					["Enabled"] = false,
					["Revision"] = 220,
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1548612537,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
							["1"] = 2281,
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Options"] = {
					},
					["Name"] = "Jaina Encounter [Plater]",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["HooksTemp"] = {
					},
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 159,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Options"] = {
					},
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.30\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"#33FF00\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 32,
					["Name"] = "Execute Range [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "",
					["Time"] = 1580679749,
					["Icon"] = 135358,
					["PlaterCore"] = 1,
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 225,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Options"] = {
					},
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663570,
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["PlaterCore"] = 1,
				}, -- [8]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    local bf1Anchor = Plater.db.profile.aura_frame1_anchor\n    Plater.SetAnchor (buffFrame1, {side = bf1Anchor.side, x = bf1Anchor.x, y = bf1Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura_grow_direction or 2) == 2)\n    \n    local bf2Anchor = Plater.db.profile.aura_frame2_anchor\n    Plater.SetAnchor (buffFrame2, {side = bf2Anchor.side, x = bf2Anchor.x, y = bf2Anchor.y + plateConfigs.buff_frame_y_offset}, unitFrame.healthBar, (Plater.db.profile.aura2_grow_direction or 2) == 2)\n    \nend\n\n\n",
					},
					["Time"] = 1596791840,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "",
					["Icon"] = 574574,
					["Enabled"] = false,
					["Revision"] = 93,
					["semver"] = "",
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [9]
				{
					["Enabled"] = false,
					["Revision"] = 37,
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["PlaterCore"] = 1,
					["Time"] = 1549827281,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
							["Enabled"] = true,
							["117"] = true,
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Options"] = {
					},
					["Name"] = "M+ Bwonsamdi Reaping",
					["Icon"] = 2446016,
					["HooksTemp"] = {
					},
				}, -- [10]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {0/128, 21/128, 101/128, 122/128},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {3/128, 18/128, 81/128, 96/128},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = (namePlateWidth - sizes.width * comboPoints)  / comboPoints \n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                if i == 1 then\n                    comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace/2, 0)\n                else\n                    comboPoint:SetPoint (\"left\", envTable.ComboPoints[i-1], \"right\", reservedSpace, 0)\n                end\n                \n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1603567332,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							["103"] = true,
							["Enabled"] = true,
						},
					},
					["url"] = "",
					["Icon"] = 135426,
					["Enabled"] = false,
					["Revision"] = 254,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 184,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Options"] = {
					},
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Prio"] = 99,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663572,
					["Icon"] = 1966587,
					["PlaterCore"] = 1,
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 96,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Options"] = {
					},
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663600,
					["Icon"] = 878211,
					["PlaterCore"] = 1,
				}, -- [13]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    \n    --ATTENTION: after enabling this mod, you may have to adjust the anchor point at the Buff Settings tab\n    \n    local sortByTime = false\n    local invertSort = false\n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    local priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n        [\"Pistol Shot\"] = 50,\n        [\"Marked for Death\"] = 99,\n    }\n    \n    -- Sort function - do not touch\n    Plater.db.profile.aura_sort = true\n    \n    \n    function Plater.AuraIconsSortFunction (aura1, aura2)\n        local p1 = priority[aura1.SpellId] or priority[aura1.SpellName] or 1\n        local p2 = priority[aura2.SpellId] or priority[aura2.SpellName] or 1\n        \n        if sortByTime and p1 == p2 then\n            if invertSort then\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) > (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            else\n                return (aura1.Duration == 0 and 99999999 or aura1.RemainingTime or 0) < (aura2.Duration == 0 and 99999999 or aura2.RemainingTime or 0)\n            end\n        else\n            if invertSort then\n                 return p1 < p2\n            else\n                return p1 > p2\n            end\n        end\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1608663128,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["Enabled"] = false,
					["Revision"] = 356,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["HooksTemp"] = {
					},
					["Options"] = {
					},
				}, -- [14]
				{
					["Enabled"] = false,
					["Revision"] = 63,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Rhk-Tarren Mill",
					["Options"] = {
					},
					["Desc"] = "Plays a sound and colours a corrupted mob, These drop momentos",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    envTable.mobList = {\n        --[\"87761\"] = true,\n        [\"162249\"] = true, --Corrupted Acolyte\n        [\"162252\"] = true, --Corrupted Beheader\n        [\"159087\"] = true, --Corrupted Bonestripper\n        [\"162246\"] = true, --Corrupted Dominator\n        [\"158632\"] = true, --Corrupted Fleshbeast\n        [\"162243\"] = true, --Corrupted Mind Eater\n        [\"162254\"] = true, --Corrupted Observer\n        [\"162251\"] = true, --Corrupted Summoner\n        [\"162241\"] = true, --Corrupted Thoughtstealer\n        [\"162248\"] = true, --Corrupted Watcher\n        [\"162250\"] = true, --Corrupted Assassin    \n        [\"162290\"] = true, --Corrupted Bloodseeker\n        [\"156709\"] = true, --Corrupted Despoiler\n        [\"162244\"] = true, --Corrupted Doomsayer\n        [\"162247\"] = true, --Corrupted Jailer\n        [\"158531\"] = true, --Corrupted Neferset Guard    \n        [\"158706\"] = true, --Corrupted Putrefaction\n        [\"162253\"] = true, --Corrupted Thaumaturge    \n        [\"162245\"] = true, --Corrupted Tormentor\n    }\n    \n    -- Default: r = 0.13, g = 0.67, b = 0.95\n    envTable.color = {r = 0.13, g = 0.67, b = 0.95}\n    \nend\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    local guid = UnitGUID(unitId)\n    local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit(\"-\",guid);\n \n    if npc_id and envTable.mobList[npc_id] then\n        PlaySound(54125, \"MASTER\") -- UI_70_ARTIFACT_FORGE_TRAIT_GOLD_TRAIT = 54125, \n        -- https://github.com/Gethe/wow-ui-source/blob/live/SharedXML/SoundKitConstants.lua#L240\n        Plater.SetNameplateColor (unitFrame, envTable.color)\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "8.3 Corrupted Rares",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1580663760,
					["Icon"] = 134262,
					["PlaterCore"] = 1,
				}, -- [15]
				{
					["Enabled"] = true,
					["Revision"] = 209,
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Author"] = "Fragile-烈焰峰",
					["Options"] = {
					},
					["Desc"] = "",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local raidMark = Plater.GetRaidMark (unitFrame)\n    \n    local color = envTable.MarkToColor[raidMark]\n    \n    if raidMark then\n        \n        Plater.SetNameplateColor (unitFrame, color)\n        envTable.HasRaidMark = true\n        \n    end\n    \nend\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.MarkToColor = {\n        [1] = \"#d9cf45\",--YellowStar\n        [2] = \"#ed820f\", --Orange Circle\n        [3] = \"#b30fd6\", --Purple Diamond\n        [4] = \"#24a824\", --Green Triangle\n        [5] = \"#99bfd9\", --Silver Moon\n        [6] = \"#00a3ff\", --Blue Square\n        [7] = \"#d12e2e\", --Red Cross\n        [8] = \"#e3d4bd\", --White Skull    \n    }\n    \nend\n\n\n",
						["Raid Target"] = "function (self, unitId, unitFrame, envTable)\n    \n    local raidMark = Plater.GetRaidMark (unitFrame)    \n    \n    if (not raidMark) then\n        if envTable.HasRaidMark then\n            \n            Plater.RefreshNameplateColor(unitFrame)\n            envTable.HasRaidMark = nil\n            \n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					},
					["Prio"] = 99,
					["Name"] = "Target Mark Color Change",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["LastHookEdited"] = "Constructor",
					["Time"] = 1582758934,
					["Icon"] = "INTERFACE\\ICONS\\Achievement_DoubleRainbow",
					["PlaterCore"] = 1,
				}, -- [16]
				{
					["OptionsValues"] = {
					},
					["LastHookEdited"] = "",
					["Hooks"] = {
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.castBar.BorderShield:SetDrawLayer(\"artwork\")\n    envTable.UpdateIconPosition (unitFrame)\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Cast Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.UpdateIconPosition (unitFrame)\n    self.ThrottleUpdate = -1\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    --private:\n    function envTable.UpdateIconPosition (unitFrame)\n        local castBar = unitFrame.castBar\n        local icon = castBar.Icon\n        local noInterruptTexture = castBar.BorderShield\n        \n        if (modTable.config.showIcon) then\n            icon:ClearAllPoints()\n            \n            if (modTable.config.iconOnLeftSide) then\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topright\", unitFrame.healthBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topright\", unitFrame.castBar, \"topleft\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomright\", unitFrame.castBar, \"bottomleft\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n                \n            else\n                if (modTable.config.useFullSize) then\n                    icon:SetPoint (\"topleft\", unitFrame.healthBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                    \n                else\n                    \n                    icon:SetPoint (\"topleft\", unitFrame.castBar, \"topright\", modTable.config.iconPadding, modTable.config.iconSizeOffset)\n                    icon:SetPoint (\"bottomleft\", unitFrame.castBar, \"bottomright\", modTable.config.iconPadding, -modTable.config.iconSizeOffset)\n                end\n            end\n            \n            icon:SetWidth (icon:GetHeight())\n            icon:Show()\n        else\n            icon:Hide()\n        end\n        \n        if (modTable.config.showTexture and not castBar.canInterrupt) then\n            noInterruptTexture:Show()\n            \n            local texturePath = modTable.config.iconTexturePath\n            texturePath = texturePath:gsub(\"//\", \"/\")\n            texturePath = texturePath:gsub(\"\\\\\", \"/\")\n            \n            noInterruptTexture:SetTexture (texturePath)\n            noInterruptTexture:SetTexCoord (0, 1, 0, 1)\n            \n            if (modTable.config.desaturatedTexture) then\n                noInterruptTexture:SetDesaturated (modTable.config.desaturatedTexture)\n            else\n                noInterruptTexture:SetVertexColor (DetailsFramework:ParseColors (modTable.config.textureColor))\n            end\n            \n            noInterruptTexture:SetSize (modTable.config.textureWidth, castBar:GetHeight() + modTable.config.textureHeightMod)\n            noInterruptTexture:ClearAllPoints()\n            noInterruptTexture:SetPoint (\"center\", castBar, \"left\", modTable.config.texturePosition, 0)\n            noInterruptTexture:SetAlpha (modTable.config.textureAlpha)\n        else\n            noInterruptTexture:Hide()\n        end\n    end\nend",
					},
					["Time"] = 1597097268,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\castbar_icon",
					["Enabled"] = false,
					["Revision"] = 348,
					["semver"] = "",
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Move the icon of the spell cast to the left or right side of the nameplate.",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Name"] = "Cast Bar Icon Settings [P]",
					["HooksTemp"] = {
					},
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option4",
							["Value"] = "Icon Settings:",
							["Name"] = "Icon Settings",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Key"] = "showIcon",
							["Value"] = true,
							["Name"] = "Show Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Show the castbar icon when enabled",
						}, -- [2]
						{
							["Type"] = 4,
							["Key"] = "iconOnLeftSide",
							["Value"] = true,
							["Name"] = "Icon on Left Side",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled it anchor the icon on the left side, right otherwise",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "useFullSize",
							["Value"] = false,
							["Name"] = "Use Big Icon",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled the icon has the size of the cast bar plus the healthbar",
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Fine tune the icon size",
							["Min"] = 0,
							["Key"] = "iconSizeOffset",
							["Value"] = 0,
							["Name"] = "Icon Size Offset",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 5,
							["Desc"] = "Space between the icon and the cast bar",
							["Min"] = -5,
							["Key"] = "iconPadding",
							["Value"] = 0,
							["Name"] = "Icon Padding",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [6]
						{
							["Type"] = 6,
							["Key"] = "option6",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 5,
							["Key"] = "option5",
							["Value"] = "Can't Interrupt Texture:",
							["Name"] = "Interrupt Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "showTexture",
							["Value"] = true,
							["Name"] = "Show Texture",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enabled show a texture to tell the cast can't be interrupted",
						}, -- [9]
						{
							["Type"] = 3,
							["Key"] = "iconTexturePath",
							["Value"] = "Interface\\GROUPFRAME\\UI-GROUP-MAINTANKICON",
							["Name"] = "Texture Path",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_text",
							["Desc"] = "Insert the path for the texture",
						}, -- [10]
						{
							["Type"] = 4,
							["Key"] = "desaturatedTexture",
							["Value"] = true,
							["Name"] = "Texture Desaturated",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "If enbaled, texture is shown in black & white",
						}, -- [11]
						{
							["Type"] = 1,
							["Key"] = "textureColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.30567157268524, -- [4]
							},
							["Name"] = "Texture Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Select the color of the texture",
						}, -- [12]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture width",
							["Min"] = 1,
							["Key"] = "textureWidth",
							["Value"] = 10,
							["Name"] = "Texture Width",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "The texture is set to be the same size as the cast bar, fine tune the height as wanted",
							["Min"] = -16,
							["Key"] = "textureHeightMod",
							["Value"] = 0,
							["Name"] = "Texture Height Mod",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 32,
							["Desc"] = "Adjust the texture position",
							["Min"] = -32,
							["Key"] = "texturePosition",
							["Value"] = 0,
							["Name"] = "Texture Position",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [15]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Adjust the texture transparency",
							["Min"] = 0,
							["Key"] = "textureAlpha",
							["Value"] = 1,
							["Name"] = "Texture Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [16]
					},
				}, -- [17]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Player Logon"] = "function()\n    \n    \n    --Reload after importing or changing anything\n    --Choose the Arrow from the Target Tab\n    \n    Plater.TargetIndicators  [\"EthricArrow\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow2\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow2.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow3\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow2.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow4\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow4.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow5\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow5.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow6\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow6.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow7\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow7.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 14, -- Change size\n        height = 14,\n        x = 18, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow8\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow8.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 17, -- Change size\n        height = 17,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow9\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow9.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0,\n    }\n    \n    Plater.TargetIndicators  [\"EthricArrow10\"] = {\n        path = [[Interface\\Addons\\SharedMedia_MyMedia\\media\\EthricArrow10.tga]],\n        coords = {\n            {0, 1, 0, 1}, --Left arrow - {0, 0, 0, 0} to hide. {0, 1, 0, 1} to show\n            {1, 0, 0, 1} --Right arrow - {0, 0, 0, 0} to hide. {1, 0, 0, 1} to show\n        },\n        desaturated = false,\n        width = 20, -- Change size\n        height = 20,\n        x = 20, -- Change position\n        y = 0, \n    }\n    \nend",
					},
					["Time"] = 1608395444,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/okQgj8zoy/4",
					["Icon"] = "INTERFACE\\ICONS\\70_inscription_vantus_rune_nightmare",
					["Enabled"] = true,
					["Revision"] = 266,
					["semver"] = "1.0.3",
					["Author"] = "Revanbane-Tarren Mill",
					["Desc"] = "Target Arrows",
					["Prio"] = 99,
					["version"] = 4,
					["PlaterCore"] = 1,
					["Name"] = "Ethric's Arrows",
					["LastHookEdited"] = "",
					["Options"] = {
						{
							["Type"] = 1,
							["Key"] = "option1",
							["Value"] = {
								0.15686274509804, -- [1]
								1, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Option 1",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [1]
					},
				}, -- [18]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Initialization"] = "function (modTable)\n    -- settings:\n    \n    -- for the LibCustomGlow implementation:\n    modTable.options = {\n        glowType = \"pixel\",\n        color = modTable.config.glowColor,--\"red\", -- all plater color types accepted, from lib: {r,g,b,a}, color of lines and opacity, from 0 to 1. Defaul value is {0.95, 0.95, 0.32, 1}\n        N = modTable.config.antsAmount, --8, -- number of lines. Defaul value is 8;\n        frequency = modTable.config.frequency, -- frequency, set to negative to inverse direction of rotation. Default value is 0.25;\n        length = modTable.config.antsLength, -- length of lines. Default value depends on region size and number of lines;\n        th = modTable.config.antsThickness, -- thickness of lines. Default value is 2;\n        xOffset = 0,\n        yOffset = 0, -- offset of glow relative to region border;\n        border = modTable.config.antsBorder, -- set to true to create border under lines;\n        key = \"StealPurgeAuraGlow\", -- key of glow, allows for multiple glows on one frame;\n    }\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    local buffSpecialGlow = true\n    \n    \n    -- functions --\n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n    \n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        local auraContainer = auraContainers [containerID]\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown() and auraIcon.CanStealOrPurge) then\n                Plater.StartGlow(auraIcon, nil, modTable.options)\n                if modTable.config.outerGlow and auraIcon.__PlaterGlowFrame then\n                    auraIcon.__PlaterGlowFrame:ClearAllPoints()\n                    local offset = modTable.config.antsThickness\n                    auraIcon.__PlaterGlowFrame:SetPoint(\"topleft\", auraIcon, \"topleft\", -offset, offset)\n                    auraIcon.__PlaterGlowFrame:SetPoint(\"bottomright\", auraIcon, \"bottomright\", offset, -offset)\n                end\n            else\n                Plater.StopGlow(auraIcon, modTable.options.glowType, modTable.options.key)\n            end\n        end\n    end\n    \n    if buffSpecialGlow then\n        for _, auraIcon in ipairs (unitFrame.ExtraIconFrame.IconPool) do\n            if auraIcon:IsShown() then\n                if (auraIcon:IsShown() and auraIcon.canStealOrPurge) then\n                    Plater.StartGlow(auraIcon, nil, modTable.options)\n                    if modTable.config.outerGlow and auraIcon.__PlaterGlowFrame then\n                        auraIcon.__PlaterGlowFrame:ClearAllPoints()\n                        local offset = modTable.config.antsThickness\n                        auraIcon.__PlaterGlowFrame:SetPoint(\"topleft\", auraIcon, \"topleft\", -offset, offset)\n                        auraIcon.__PlaterGlowFrame:SetPoint(\"bottomright\", auraIcon, \"bottomright\", offset, -offset)\n                    end\n                else\n                    Plater.StopGlow(auraIcon, modTable.options.glowType, modTable.options.key)\n                end                \n            end\n        end\n    end\n    \nend",
					},
					["Time"] = 1608398238,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/turHC0a5k/7",
					["Icon"] = "INTERFACE\\ICONS\\Ability_Creature_Cursed_04",
					["Enabled"] = true,
					["Revision"] = 294,
					["semver"] = "1.0.6",
					["Author"] = "Viashi-Antonidas",
					["Desc"] = "Adds a glow to the aura if you can steal or purge the buff.",
					["Prio"] = 99,
					["version"] = 7,
					["PlaterCore"] = 1,
					["Name"] = "Steal/Purge Aura Glow",
					["LastHookEdited"] = "Initialization",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "option3",
							["Value"] = "@scriptname Options:",
							["Name"] = "Option 3",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 6,
							["Key"] = "option4",
							["Value"] = 0,
							["Name"] = "Option 4",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "glowColor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Glow Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "The color of the glow ants.",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 16,
							["Desc"] = "Amount of ants in the glow effect.",
							["Min"] = 1,
							["Key"] = "antsAmount",
							["Value"] = 6,
							["Name"] = "Ants Amount",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "Ants move speed",
							["Min"] = -1,
							["Key"] = "frequency",
							["Value"] = 0.25,
							["Name"] = "Speed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [5]
						{
							["Type"] = 2,
							["Max"] = 12,
							["Desc"] = "",
							["Min"] = 1,
							["Key"] = "antsLength",
							["Value"] = 4,
							["Name"] = "Ants length",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 4,
							["Desc"] = "",
							["Min"] = 1,
							["Key"] = "antsThickness",
							["Value"] = 2,
							["Name"] = "Ants Thickness",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "antsBorder",
							["Value"] = false,
							["Name"] = "Ants Border",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [8]
						{
							["Type"] = 4,
							["Key"] = "outerGlow",
							["Value"] = false,
							["Name"] = "Outer Glow",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "",
						}, -- [9]
					},
				}, -- [19]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    if (envTable.UseCustomExecutePercent) then --manual detection\n        \n        if UnitIsTapDenied (unitId) or unitFrame.IsSelf or unitFrame.PlayerCannotAttack then return end\n        \n        local healthBar = unitFrame.healthBar\n        local percent = healthBar.CurrentHealth / healthBar.CurrentHealthMax\n        local alert = envTable.ExecutePercent\n        \n        if (percent <= envTable.ExecutePercent) then\n            envTable.InExecuteRange = true\n            if (envTable.InExecuteAlertRange) then\n                envTable.InExecuteAlertRange = false\n            end\n        elseif (percent < envTable.SecondRangeStart and percent >= envTable.SecondRangeEnd) then\n            envTable.InExecuteRange = true\n            alert = envTable.SecondRangeEnd\n            if (envTable.InExecuteAlertRange) then\n                envTable.InExecuteAlertRange = false\n            end\n        elseif (percent > envTable.ExecutePercent and percent <= envTable.ExecutePercent + envTable.ExcuteAlertPercent) then\n            envTable.InExecuteAlertRange = true\n            if (envTable.InExecuteRange) then\n                envTable.InExecuteRange = false\n            end\n        else\n            if (envTable.InExecuteRange) then\n                Plater.RefreshNameplateColor (unitFrame)\n                Plater.SetBorderColor (unitFrame)    \n                envTable.InExecuteRange = false\n            end\n            \n            if (envTable.InExecuteAlertRange) then\n                envTable.InExecuteAlertRange = false\n            end\n        end\n        \n        if (envTable.InExecuteRange) then \n            envTable.UnitInExecuteRange(unitFrame)\n            envTable.UnitInExecuteAlertRange (unitFrame, alert)\n        else\n            if (envTable.InExecuteAlertRange) then\n                envTable.UnitInExecuteAlertRange (unitFrame, alert)\n            else\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n            end\n        end\n        \n    else\n        if (unitFrame.InExecuteRange) then --auto detection\n            envTable.UnitInExecuteRange (unitFrame, 0)\n        end\n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable, modTable)\n    modTable.UpdateEXETalent()\nend\n\n\n",
						["Initialization"] = "function (modTable)\n    \n    function modTable.UpdateEXETalent()\n        modTable.EXEenabled = false\n        modTable.EXEpercent = 0\n        modTable.EAP = 0\n        modTable.SRS = 1\n        modTable.SRE = 1\n        \n        local _, class = UnitClass (\"player\")\n        local spec = GetSpecialization()\n        local specID = GetSpecializationInfo (spec) or 0\n        if not (spec or class or specID) or specID == 0 then return end\n        \n        if (class == \"MAGE\") then\n            if (specID == 62) then \n                if (modTable.config.Pressure) then\n                    modTable.EXEenabled = true\n                    modTable.EXEpercent = 0.35\n                    modTable.EAP = 0.1\n                end\n            elseif (specID == 63) then \n                local _, _, _, using_Firestarter = GetTalentInfo (1, 1, 1)\n                local _, _, _, using_Touch = GetTalentInfo (1, 3, 1)\n                if (using_Firestarter) then\n                    modTable.EXEenabled = true\n                    modTable.SRS = 0.999\n                    modTable.SRE = 0.9\n                elseif (using_Touch) then\n                    modTable.EXEenabled = true\n                    modTable.EXEpercent = 0.3\n                    modTable.EAP = 0.1\n                end\n            end\n        elseif (class == \"WARLOCK\") then\n            if (specID == 265) then \n                local _, _, _, using_Souldrain = GetTalentInfo (1, 3, 1)\n                if (using_Souldrain) then\n                    modTable.EXEenabled = true\n                    modTable.EXEpercent = 0.2\n                    modTable.EAP = 0.1\n                end\n            elseif (specID == 267) then \n                local _, _, _, using_Shadowburn = GetTalentInfo (2, 3, 1)\n                if (using_Shadowburn) or (modTable.config.Flashpoint) then\n                    modTable.EXEenabled = true\n                    if (using_Shadowburn) then\n                        modTable.EXEpercent = 0.2\n                        modTable.EAP = 0.1\n                    end\n                end\n            end\n        elseif (class == \"PRIEST\") then\n            if IsSpellKnown(32379) then\n                modTable.EXEenabled = true\n                modTable.EXEpercent = 0.2\n                if (specID == 258) then --shadow\n                    local _, _, _, using_ToF = GetTalentInfo (3, 1, 1)\n                    if (using_Tof) then\n                        modTable.EXEpercent = 0.35\n                    end\n                end\n                modTable.EAP = 0.1\n            end\n        elseif (class == \"WARRIOR\") then\n            if IsSpellKnown(317483) then\n                modTable.EXEenabled = true\n                modTable.SRS = 0.999\n                modTable.SRE = 0.8\n                modTable.EXEpercent = 0.2\n                modTable.EAP = 0.1       \n            end\n            \n            if IsSpellKnown(163201) then\n                modTable.EXEenabled = true\n                modTable.EXEpercent = 0.2\n                if (specID == 71 or specID == 72) then\n                    local _, _, _, using_Massacre = GetTalentInfo (3, 1, 1)\n                    if (using_Massacre) then\n                        modTable.EXEpercent = 0.35\n                    end\n                end \n                modTable.EAP = 0.1       \n            end\n        elseif (class == \"HUNTER\") then\n            if IsSpellKnown(53351) then\n                modTable.EXEenabled = true\n                modTable.EXEpercent = 0.2\n                modTable.EAP = 0.1\n            end   \n            if (specID == 252) then\n                local _, _, _, using_CarefulAim = GetTalentInfo (2, 1, 1)\n                if (using_CarefulAim) then\n                    if not modTable.EXEenabled then\n                        modTable.EXEenabled = true\n                    end\n                    modTable.SRS = 0.999\n                    modTable.SRE = 0.9\n                end\n            elseif (specID == 253) then\n                local _, _, _, using_KillerInstinct = GetTalentInfo (1, 1, 1)\n                if (using_KillerInstinct) then\n                    if not IsSpellKnown(53351) then\n                        modTable.EXEenabled = true\n                        modTable.EAP = 0.1\n                    end\n                    modTable.EXEpercent = 0.35\n                end\n            end\n        elseif (class == \"ROGUE\") then\n            if (specID == 259) then \n                local _, _, _, using_Blindside = GetTalentInfo (1, 3, 1)\n                if (using_Blindside) then\n                    modTable.EXEenabled = true\n                    modTable.EXEpercent = 0.35\n                    modTable.EAP = 0.1\n                end\n            end\n        elseif (class == \"PALADIN\") then\n            if IsSpellKnown(24275) then\n                modTable.EXEenabled = true\n                modTable.EXEpercent = 0.2\n                modTable.EAP = 0.1\n            end\n        elseif (class == \"MONK\") then\n            if IsSpellKnown(322109) then\n                modTable.EXEenabled = true\n                modTable.EXEpercent = 0.15\n                modTable.EAP = 0.1\n            end\n        elseif (class == \"DEATHKNIGHT\") then\n            if (specID == 252) then \n                local _, _, _, using_Soulreaper = GetTalentInfo (4, 3, 1)\n                if (using_Soulreaper) then\n                    modTable.EXEenabled = true\n                    modTable.EXEpercent = 0.35\n                    modTable.EAP = 0.1\n                end\n            end\n        end\n    end\n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    \n    local ADV = modTable.EXEenabled\n    \n    --execute detection, if true the script will handle the execute Percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = ADV or false\n    --execute Percent, if not detecting automatic, this is the Percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = (ADV and modTable.EXEpercent) or 0\n    envTable.ExcuteAlertPercent =  (ADV and modTable.EAP) or 0\n    --second execute range (UseCustomExecutePercent must be Enabled)\n    envTable.SecondRangeStart = (ADV and modTable.SRS) or 1\n    envTable.SecondRangeEnd = (ADV and modTable.SRE) or 0\n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            if (modTable.config.EXEhbcon) then\n                Plater.SetNameplateColor (unitFrame, modTable.config.EXEhbcolor)\n            end\n            \n            if (modTable.config.EXEbdron) then\n                Plater.SetBorderColor (unitFrame, modTable.config.EXEbdrcolor)\n            end\n        end\n        \n        function envTable.UnitInExecuteAlertRange (unitFrame, divisorPercent)\n            if (modTable.config.EXEhdoff) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n            else\n                envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame, divisorPercent)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (modTable.config.EXEhdcolor))\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (modTable.config.EXEhicolor))\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * divisorPercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                if (divisorPercent == envTable.ExecutePercent) then\n                    healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                    healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n                else\n                    healthBar.executeRange:SetPoint (\"right\", healthBar, \"right\", 0, 0)\n                    healthBar.executeRange:SetPoint (\"left\", healthBar.healthCutOff, \"center\")\n                end\n            end\n        end\n    end\n    \n    if not unitFrame.healthBar.ExecuteHooked then\n        hooksecurefunc(\"TalentFrame_UpdateSpecInfoCache\", function() modTable.UpdateEXETalent() end)\n        hooksecurefunc(\"TalentFrame_Update\", function() modTable.UpdateEXETalent() end)\n        unitFrame.healthBar.ExecuteHooked = true\n    end\n    \nend",
					},
					["Time"] = 1608396227,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/Jnr-pBixS/14",
					["Icon"] = 135358,
					["Enabled"] = true,
					["Revision"] = 1510,
					["semver"] = "1.0.13",
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Adds extra effects to execute range and allow to setup two execute ranges for classes with execute when the unit has almost full healh. See the constructor script for options.",
					["Prio"] = 99,
					["version"] = 14,
					["PlaterCore"] = 1,
					["Name"] = "Advanced Execute Range [FIxed]",
					["LastHookEdited"] = "Nameplate Added",
					["Options"] = {
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Execute Color Options",
							["Name"] = "Execute Color Options",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 4,
							["Key"] = "EXEhbcon",
							["Value"] = true,
							["Name"] = "Enable Execute Healthbar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Enable Execute Healthbar Color",
						}, -- [2]
						{
							["Type"] = 1,
							["Key"] = "EXEhbcolor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Execute Healthbar Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Execute Healthbar Color",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "EXEbdron",
							["Value"] = false,
							["Name"] = "Enable Execute Border Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Enable Execute Border Color",
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "EXEbdrcolor",
							["Value"] = {
								1, -- [1]
								0, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Execute Border Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Execute Border Color",
						}, -- [5]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "Blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [6]
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Execute Divisor Options",
							["Name"] = "Execute Divisor Options",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [7]
						{
							["Type"] = 4,
							["Key"] = "EXEhdoff",
							["Value"] = false,
							["Name"] = "Disable Execute Health Divisor",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Disable Execute Health Divisor",
						}, -- [8]
						{
							["Type"] = 1,
							["Key"] = "EXEhdcolor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5, -- [4]
							},
							["Name"] = "Execute Health Divisor Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Execute Health Divisor Color",
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "EXEhicolor",
							["Value"] = {
								0.6, -- [1]
								0, -- [2]
								0, -- [3]
								0.25, -- [4]
							},
							["Name"] = "Execute Health Indicator Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "Execute Health Indicator Color",
						}, -- [10]
						{
							["Type"] = 6,
							["Key"] = "",
							["Value"] = 0,
							["Name"] = "Blank",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [11]
						{
							["Type"] = 5,
							["Key"] = "",
							["Value"] = "Custom Excute Range Toggle",
							["Name"] = "Custom Excute Range Toggle",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Key"] = "Pressure",
							["Value"] = true,
							["Name"] = "Arcane Pressure",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "Enable if you are using arcane pressure azerite trait",
						}, -- [13]
					},
				}, -- [20]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- @unitId  unitID for mob e.g nameplate1\n    -- @marker Raid Target ID\n    -- @nameColouring Enables text to be coloured by raid marker \n    -- @isBoss Boolean for enabling this on boss mobs\n    -- @debugMode Test mode for using dummy's\n    -- @debugEntry Which hook it came from\n    local mark = unitId and GetRaidTargetIndex(unitId)\n    local GUID = UnitGUID(unitId)\n    local npcId = Plater.GetNpcIDFromGUID (GUID)\n    \n    envTable.namer(npcId,unitId, mark, true, false, false, \"Updated\")\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- @unitId  unitID for mob e.g nameplate1\n    -- @marker Raid Target ID\n    -- @nameColouring Enables text to be coloured by raid marker \n    -- @isBoss Boolean for enabling this on boss mobs\n    -- @debugMode Test mode for using dummy's\n    -- @debugEntry Which hook it came from\n    local mark = unitId and GetRaidTargetIndex(unitId)\n    local GUID = UnitGUID(unitId)\n    local npcId = Plater.GetNpcIDFromGUID (GUID)\n    \n    envTable.namer(npcId,unitId, mark, true, false, false, \"Added\")\n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    -- used for nameColouring\n    -- AARRGGBB\n    local markerToHex = {\n        [1] = \"FFFFFFFF\", -- Yellow 5 Point Star\n        [2] = \"FFFFFFFF\", -- Orange Circle\n        [3] = \"FFFFFFFF\", -- Purple Diamond\n        [4] = \"FFFFFFFF\", -- Green Triangle\n        [5] = \"FFFFFFFF\", -- Light Blue Moon\n        [6] = \"FFFFFFFF\", -- Blue Square\n        [7] = \"FFFFFFFF\", -- Red Cross\n        [8] = \"FFFFFFFF\", -- White Skull\n    }\n    \n    -- Makes it so you take their first name e.g Jessie Howlis -> Jessie\n    -- Old way was some degen fucking shit this is easier\n    local nameBlacklist = {\n        [\"Apprentice\"] = true,  \n        [\"Denizen\"] = true,\n        [\"Emissary\"] = true,\n        [\"Howlis\"] = true, \n        [\"Terror\"] = true, \n        [\"Totem\"] = true, \n        [\"Waycrest\"] = true,\n        [\"Dummy\"] = true, \n        [\"Zul\"] = true,\n        \n        \n    }\n    \n    -- Override for boss names so we can exlucde them to what we want\n    local dungeonMobNames = {\n        -- Testing\n        -- [126023] = \"Dumb Rat Thing\",\n        -- Dungeons\n        -- Halls of Atonement\n        [165515] = \"Darkblade\",\n        [164562] = \"Houndmaster\",\n        [164563] = \"Gargon\",\n        [165414] = \"Obliterator\",\n        [165529] = \"Collector\",\n        [164557] = \"Shard of Halkias\",\n        [165415] = \"Groundskeeper\",\n        [165408] = \"Halkias\", -- Boss\n        \n        -- Mists of Tirna Scithe\n        [164929] = \"Villager\",\n        [165111] = \"Spiteclaw\",\n        [164920] = \"Soulcleaver\",\n        [164921] = \"Harvester\",\n        [164926] = \"Boughbreaker\",\n        [164804] = \"Oulfarren\", -- Boss\n        [164567] = \"Maloch\", -- Boss\n        [166301] = \"Stalker\",\n        [166275] = \"Shaper\",\n        [166276] = \"Guardian\",\n        [163058] = \"Defender\",\n        [166304] = \"Stinger\",\n        [173714] = \"Nightblossom\",\n        [166299] = \"Tender\",\n        [173655] = \"Matriarch\",\n        [167111] = \"Staghorn\",\n        [167113] = \"Acidgullet\",\n        [167117] = \"Larva\",\n        [172312] = \"Gorger\",\n        [167116] = \"Reaver\",\n        \n        -- Plaguefall\n        [163894] = \"Spinebreaker\",\n        [168886] = \"Blightweaver\",\n        [163892] = \"Slimeclaw\",\n        [163862] = \"Defender\",\n        [164737] = \"Ambusher\",\n    }\n    \n    \n    \n    -- @unitId  unitID for mob e.g nameplate1\n    -- @marker Raid Target ID\n    -- @nameColouring Enables text to be coloured by raid marker \n    -- @isBoss Boolean for enabling this on boss mobs, Do i want this?? no idea\n    -- @debugMode Test mode for using dummy's\n    -- @debugEntry Which hook it came from\n    function envTable.namer(npcId, unitId, marker, nameColouring, isBoss, debugMode, debugEntry)\n        if unitId then\n            \n            local name = UnitName(unitId)\n            local a, b, c, d, e, f = strsplit(' ', name, 5)\n            local unitName\n            -- Testing mode\n            if debugMode then\n                print(\"DebugMode: \"..debugEntry..\" - Checking for dummy name\")\n                if b == \"Dummy\" or c == \"Dummy\" or d == \"Dummy\" or e == \"Dummy\" or f == \"Dummy\" then\n                    local lastName = b:find(\"Dummy\") and b or c:find(\"Dummy\") and c or d:find(\"Dummy\") and d\n                    print(\"DebugMode: \"..debugEntry..\" - Dummy Found!\")\n                    unitName = name ~=nil and lastName\n                end\n            end\n            \n            \n            if nameBlacklist[b] then\n                unitName = name ~=nil and (a or b or c or d or e or f) or nil\n            else\n                unitName = name ~=nil and (f or e or d or c or b or a) or ni\n            end\n            \n            if unitId and marker == nil and nameColouring then\n                marker = 8\n            end\n            \n            \n            \n            if unitName == nil then\n                unitName = name\n            end\n            \n            \n            if dungeonMobNames[npcId] then\n                unitName = dungeonMobNames[npcId]\n            end\n            \n            if unitId and marker and nameColouring then\n                unitFrame.healthBar.unitName:SetText(WrapTextInColorCode(unitName, markerToHex[marker]))\n            elseif unitId then\n                unitFrame.healthBar.unitName:SetText(unitName)\n            end\n        end   \n    end\nend",
					},
					["Time"] = 1608398044,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
							["scenario"] = true,
							["raid"] = true,
							["none"] = true,
							["pvp"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/cC74EIkxK/14",
					["Icon"] = "INTERFACE\\ICONS\\Ability_Monk_Ascension",
					["Enabled"] = true,
					["Revision"] = 156,
					["semver"] = "2.0.0",
					["Author"] = "Rhk-Tarren Mill",
					["Desc"] = "Aimed at making calls in dungeons simpler by using the last name of a mob or first name of certains ones i.e Jessie Howlis -> Jessie",
					["Prio"] = 99,
					["version"] = 14,
					["PlaterCore"] = 1,
					["Name"] = "M+ Renamer",
					["LastHookEdited"] = "Nameplate Updated",
					["Options"] = {
					},
				}, -- [21]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable, modTable)\n    local index\n    local unit = unitId\n    for i = 1, modTable.max_debuffs do\n        local _, _, _, _, duration, expirationTime, source, _, _, spellId = UnitDebuff(unitId, i)\n        if spellId == 12654 and ( not modTable.own_only or source and UnitIsUnit(\"player\", source) ) then\n            index = i\n            break\n        end\n    end\n    local bank = nil\n    if index then\n        local tick = select(16, UnitDebuff(unit, index))\n        if tick then\n            local tick_time = 1\n            if IsPlayerSpell(280450) then -- Controlled Burn\n                tick_time = 0.5\n            end\n            local ticks_remaining = math.floor((select(6, UnitDebuff(unit, index)) - GetTime())/tick_time + 0.5)\n            bank = tick * ticks_remaining\n        end\n    end\n    if bank then\n        local n_max = UnitHealthMax(unitId)\n        local ignite = 0\n        if n_max > 0 then\n            ignite = math.min(bank/n_max, 1)\n        end\n        unitFrame.ignite_bar.width = unitFrame.healthBar:GetWidth()\n        unitFrame.ignite_bar.value = unitFrame.healthBar:GetWidth()*ignite\n        unitFrame.ignite_bar:Show()\n    else\n        unitFrame.ignite_bar:Hide()\n    end\nend",
						["Initialization"] = "function (modTable)\n    -- The maximum number of debuff slots to look for ignite in; lower values will have less CPU usage during each update\n    modTable.max_debuffs = 255\n    \n    -- Should the bank be shown for the first Ignite you applied, or the first Ignite found, regardless of who applied it? This is primarily intended for dungeon groups with a single mage to let other people see the Ignite banks.\n    modTable.own_only = true\n    \n    -- the appearance of the bar can be adjusted in the Constructor\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable, modTable)\n    unitFrame.ignite_bar = unitFrame.ignite_bar or Plater:CreateBar(unitFrame.healthBar)\n    unitFrame.ignite_bar:EnableMouse(false)\n    unitFrame.ignite_bar:SetPoint ('bottomleft', unitFrame.healthBar, 'topleft', 0, 0)\n    unitFrame.ignite_bar.texture = \"Solid\"\n    unitFrame.ignite_bar.color = \"orange\"\n    unitFrame.ignite_bar.height = 4\n    unitFrame.ignite_bar.value = 0\n    unitFrame.ignite_bar.width = unitFrame.healthBar:GetWidth()\nend",
					},
					["Time"] = 1608395444,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/n3xp4T8wr/3",
					["Icon"] = 135818,
					["Enabled"] = true,
					["Revision"] = 522,
					["semver"] = "1.0.2",
					["Author"] = "Dorovon-Illidan",
					["Desc"] = "Displays the total amount of Ignite damage in each target's Ignite relative to their health bar.",
					["Prio"] = 99,
					["version"] = 3,
					["PlaterCore"] = 1,
					["Name"] = "Ignite Bar",
					["LastHookEdited"] = "",
					["Options"] = {
					},
				}, -- [22]
				{
					["OptionsValues"] = {
					},
					["HooksTemp"] = {
					},
					["Hooks"] = {
						["Health Update"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.UpdateHealth (unitFrame)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.UpdateHealth (unitFrame)\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    envTable.ShowMaxHealth = false\n    envTable.ShowPercent = true\n    envTable.Separator = \" - \"\n    \n    --privite:\n    function envTable.UpdateHealth (unitFrame)\n        --get the health and health max current values\n        local currentHealth = unitFrame.healthBar.CurrentHealth or 0\n        local currentHealthMax = unitFrame.healthBar.CurrentHealthMax or 0\n        \n        --build the string text with current health\n        local healthString = Plater.FormatNumber (currentHealth) .. \"\"\n        \n        --if is showing max health, add it in the health string text\n        if (envTable.ShowMaxHealth) then\n            healthString = healthString .. envTable.Separator .. Plater.FormatNumber (currentHealthMax)\n        end\n        \n        --if is showing the percent text, add it into the string text\n        if (envTable.ShowPercent) then\n            local percent = currentHealth / currentHealthMax * 100\n            local fraction = \"%.1f\"\n            \n            if (percent == 100) then\n                fraction = \"%.0f\"\n            elseif (percent < 10) then\n                fraction = \"%.2f\"\n            end\n            \n            if (envTable.ShowMaxHealth) then\n                healthString = healthString .. \" (\" .. format (fraction, percent) .. \"%)\"\n            else\n                healthString = healthString .. envTable.Separator .. format (fraction, percent) .. \"%\"\n            end\n        end\n        \n        --set the string text\n        unitFrame.healthBar.lifePercent:SetText (healthString)\n    end\n    \nend",
					},
					["Time"] = 1608397444,
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["affix"] = {
						},
						["race"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["url"] = "https://wago.io/UMY67A2bw/1",
					["Icon"] = 237031,
					["Enabled"] = true,
					["Revision"] = 85,
					["semver"] = "1.0.0",
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show the total health and percent in the health amount text. See the constructor code to change options.",
					["Prio"] = 99,
					["version"] = 1,
					["PlaterCore"] = 1,
					["Name"] = "Health / Max Health (%)",
					["LastHookEdited"] = "Constructor",
					["Options"] = {
					},
				}, -- [23]
			},
			["aggro_modifies"] = {
				["health_bar_color"] = false,
			},
			["aura_width2"] = 12,
			["range_check_cast_bar_alpha"] = 0.84999996423721,
			["aura_stack_size"] = 8,
			["aura_consolidate"] = true,
			["target_shady_alpha"] = 0.20999999344349,
			["range_check_power_bar_alpha"] = 0.84999996423721,
			["tap_denied_color"] = {
				0.3843137254902, -- [1]
				0.3843137254902, -- [2]
				0.3843137254902, -- [3]
			},
			["range_check_health_bar_alpha"] = 0.64999997615814,
			["aura_height2"] = 11,
			["captured_spells"] = {
				[167898] = {
					["source"] = "Belak-Outland",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63106] = {
					["encounterID"] = 2399,
					["source"] = "Venefica-Nagrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1022] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263165] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2050] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32752] = {
					["source"] = "Badish-Twilight'sHammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308434] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198590] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257541] = {
					["encounterID"] = 2399,
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[330943] = {
					["source"] = "Smollen",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1044] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236187] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[59942] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31900,
				},
				[270332] = {
					["type"] = "DEBUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344244] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335293] = {
					["type"] = "DEBUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338618] = {
					["source"] = "Prince Renathal",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173119,
				},
				[307161] = {
					["type"] = "DEBUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228260] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[6262] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[335295] = {
					["encounterID"] = 2399,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270335] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["encounterID"] = 2399,
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272126] = {
					["source"] = "Dazling",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1064] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[335297] = {
					["encounterID"] = 2399,
					["source"] = "Sludgefist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164407,
				},
				[8512] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[336832] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320976] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190411] = {
					["encounterID"] = 2399,
					["source"] = "Warowneren-Ahn'Qiraj",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[307166] = {
					["source"] = "Welipriest-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269571] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231843] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270339] = {
					["type"] = "DEBUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337090] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345530] = {
					["type"] = "BUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58984] = {
					["source"] = "Animaseeker-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331209] = {
					["type"] = "DEBUFF",
					["source"] = "Sludgefist",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164407,
				},
				[194249] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[13787] = {
					["source"] = "Shadow Channeler",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32262,
				},
				[60231] = {
					["source"] = "Fallen Hero's Spirit",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32149,
				},
				[126664] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190925] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270343] = {
					["type"] = "DEBUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269576] = {
					["type"] = "DEBUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87023] = {
					["source"] = "Ganilf-Aszune",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345535] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[14914] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[147193] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[162794] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59752] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147833] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[139] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182104] = {
					["source"] = "Bánavur-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54861] = {
					["source"] = "Fleskepølse-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34433] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[345539] = {
					["source"] = "Dathkan-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[336588] = {
					["type"] = "BUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[323802] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[341449] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dízzle-Lightbringer",
					["npcID"] = 0,
				},
				[289277] = {
					["source"] = "Nyctophilian-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192081] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[196941] = {
					["type"] = "DEBUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345801] = {
					["encounterID"] = 2399,
					["source"] = "Venefica-Nagrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35361] = {
					["source"] = "Grove Walker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31228,
				},
				[333526] = {
					["type"] = "DEBUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203975] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[105696] = {
					["source"] = "Marco-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307185] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80313] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205766] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257044] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185562] = {
					["source"] = "Captahab-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345805] = {
					["type"] = "BUFF",
					["source"] = "Venefica-Nagrand",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["source"] = "Nyrh-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Unknown",
					["npcID"] = 58965,
				},
				[266779] = {
					["type"] = "BUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[55342] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1160] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[73920] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[11366] = {
					["encounterID"] = 2399,
					["source"] = "Сониблейд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[585] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64901] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341207] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[253595] = {
					["source"] = "Dribrahim-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292360] = {
					["source"] = "Tuskennor-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212036] = {
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[131347] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["source"] = "Nyrh-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[332514] = {
					["source"] = "Xodac",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77758] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[225080] = {
					["source"] = "Mirocien-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[596] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339421] = {
					["source"] = "Moldovaak",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 168337,
				},
				[3411] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48438] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[143625] = {
					["source"] = "Pimentä-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192090] = {
					["type"] = "DEBUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20271] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260249] = {
					["type"] = "BUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201427] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[334058] = {
					["type"] = "DEBUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45242] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[321527] = {
					["source"] = "Venefica-Nagrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255647] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339430] = {
					["source"] = "Stone Legion Commando",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173276,
				},
				[155777] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115356] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339943] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344803] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45658] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34839,
				},
				[308488] = {
					["source"] = "Ganilf-Aszune",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8921] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[278310] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339946] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343271] = {
					["source"] = "Stone Legion Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173178,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16979] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[213708] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[633] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343276] = {
					["source"] = "Stone Legion Goliath",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173178,
				},
				[327164] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[72968] = {
					["source"] = "Florpan-ShatteredHand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259489] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197214] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[336885] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214222] = {
					["type"] = "DEBUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[642] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77764] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339444] = {
					["source"] = "Stone Legion Commando",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173276,
				},
				[324867] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[163201] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259491] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Sattis-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[320009] = {
					["source"] = "Druidza-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Sattis-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339447] = {
					["source"] = "Stone Legion Commando",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173276,
				},
				[289577] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90361] = {
					["encounterID"] = 2399,
					["source"] = "Hati",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[226757] = {
					["type"] = "DEBUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93622] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325640] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[327942] = {
					["source"] = "Windfury Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 6112,
				},
				[308506] = {
					["source"] = "Kultaintopii-Ravencrest",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333314] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345335] = {
					["type"] = "DEBUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287280] = {
					["type"] = "DEBUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275773] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[332294] = {
					["source"] = "Hungering Destroyer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164261,
				},
				[6343] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66514] = {
					["source"] = "North Sea Kraken",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34925,
				},
				[245686] = {
					["source"] = "Hitazji",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337155] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345595] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194153] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212056] = {
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342272] = {
					["source"] = "Court Executor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 174194,
				},
				[341250] = {
					["type"] = "BUFF",
					["source"] = "Sludgefist",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164407,
				},
				[190446] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[347901] = {
					["source"] = "Mirocien-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66004] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 36109,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338695] = {
					["source"] = "Aerial Bombardment Stalker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173175,
				},
				[64843] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307494] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[200166] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[344067] = {
					["type"] = "DEBUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324631] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[97462] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108843] = {
					["source"] = "Ganilf-Aszune",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[172] = {
					["encounterID"] = 2399,
					["source"] = "Venefica-Nagrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[688] = {
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32182] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61295] = {
					["encounterID"] = 2399,
					["source"] = "Mirocien-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[97463] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[27243] = {
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[34026] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32390] = {
					["type"] = "DEBUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[64844] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[308525] = {
					["source"] = "Dazling",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204262] = {
					["source"] = "Multiham-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44544] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[320035] = {
					["type"] = "DEBUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337682] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[196718] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[341263] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[17253] = {
					["encounterID"] = 2399,
					["source"] = "Belok",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[31687] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343312] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["source"] = "Welipriest-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62575] = {
					["source"] = "Darnassian Nightsaber",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33319,
				},
				[260402] = {
					["type"] = "BUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[332572] = {
					["encounterID"] = 2399,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202347] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[332318] = {
					["encounterID"] = 2399,
					["source"] = "Sludgefist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 164407,
				},
				[190456] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[231504] = {
					["source"] = "Dathkan-TarrenMill",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[184575] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16870] = {
					["source"] = "Nyrh-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335903] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6795] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328231] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[62544] = {
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1449] = {
					["encounterID"] = 2399,
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317491] = {
					["type"] = "DEBUFF",
					["source"] = "Warowneren-Ahn'Qiraj",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[132404] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["source"] = "Blackrobestu-Alonsus",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[62960] = {
					["source"] = "Darnassian Nightsaber",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33319,
				},
				[324143] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281178] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342814] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[94719] = {
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[26573] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2948] = {
					["encounterID"] = 2399,
					["source"] = "Astrazelia-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[332842] = {
					["source"] = "Malliemuis-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342817] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116011] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[160029] = {
					["type"] = "DEBUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209261] = {
					["source"] = "Sharpfour-Draenor",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[323639] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342309] = {
					["source"] = "Venefica-Nagrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325174] = {
					["encounterID"] = 2399,
					["source"] = "Spirit Link Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 53006,
				},
				[197625] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12975] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23920] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331314] = {
					["encounterID"] = 2399,
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[60212] = {
					["source"] = "Scourge Converter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 32257,
				},
				[122470] = {
					["source"] = "Äijä-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32216] = {
					["source"] = "Warowneren-Ahn'Qiraj",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34861] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260286] = {
					["type"] = "BUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[50334] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343594] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53563] = {
					["source"] = "Lougrô-Thrall",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[78674] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[107574] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198013] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337716] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288613] = {
					["type"] = "BUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20484] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[231390] = {
					["source"] = "Xodac",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Hati",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[3110] = {
					["encounterID"] = 2399,
					["source"] = "Nalfip",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 416,
				},
				[146739] = {
					["type"] = "DEBUFF",
					["source"] = "Venefica-Nagrand",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12472] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190984] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5225] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Morphansucks-Nordrassil",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[176151] = {
					["source"] = "Bánavur-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344118] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108280] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12544] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 32170,
				},
				[333889] = {
					["source"] = "Badish-Twilight'sHammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[79892] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50153,
				},
				[217200] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205180] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[99] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[340541] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342076] = {
					["type"] = "BUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343355] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329289] = {
					["source"] = "Talizeæ-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44614] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[60023] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 31900,
				},
				[100] = {
					["encounterID"] = 2399,
					["source"] = "Challnger-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186257] = {
					["source"] = "Jiu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[340546] = {
					["source"] = "Dathkan-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1604] = {
					["source"] = "Royal Arcanist",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165270,
				},
				[186258] = {
					["source"] = "Jiu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325203] = {
					["source"] = "Brotherbéár-Silvermoon",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203651] = {
					["source"] = "Sattis-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[319836] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[23922] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[323673] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339274] = {
					["source"] = "General Kaal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173298,
				},
				[330323] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Jumex-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[330325] = {
					["encounterID"] = 2399,
					["source"] = "Warowneren-Ahn'Qiraj",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236645] = {
					["source"] = "Janethefirst-Hellfire",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6572] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301683] = {
					["source"] = "Dazling",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324701] = {
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[338256] = {
					["source"] = "Jumex-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[57755] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190356] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[344907] = {
					["type"] = "DEBUFF",
					["source"] = "Warowneren-Ahn'Qiraj",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63010] = {
					["source"] = "Stormwind Champion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33747,
				},
				[63661] = {
					["source"] = "Darnassian Nightsaber",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 33319,
				},
				[328285] = {
					["source"] = "Honored Duelist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165265,
				},
				[38557] = {
					["source"] = "Kvaldir Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34947,
				},
				[331866] = {
					["source"] = "Challnger-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[64373] = {
					["source"] = "Jiu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31707] = {
					["encounterID"] = 2399,
					["source"] = "Water Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 78116,
				},
				[6660] = {
					["source"] = "Wavecrest Mariner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 35098,
				},
				[257620] = {
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328287] = {
					["source"] = "Honored Duelist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165265,
				},
				[115767] = {
					["type"] = "DEBUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17174] = {
					["source"] = "Wavecrest Mariner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 35098,
				},
				[272790] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[45181] = {
					["source"] = "Malliemuis-Doomhammer",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114255] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205448] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61353] = {
					["source"] = "Dagna Flintlock",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 29476,
				},
				[33076] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[292363] = {
					["source"] = "Bwonsamdii-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48517] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["source"] = "Cadwhosuss-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307187] = {
					["source"] = "Anviljaw",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257622] = {
					["source"] = "Cadwhosuss-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51714] = {
					["source"] = "Ноулифкловэр-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202636] = {
					["source"] = "Simpdruid-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19750] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259285] = {
					["type"] = "BUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[67836] = {
					["source"] = "Wormhole",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 35646,
				},
				[344916] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311496] = {
					["source"] = "Ozzyosbourn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255937] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3019] = {
					["source"] = "Kvaldir Berserker",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 34947,
				},
				[188443] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[112866] = {
					["source"] = "Badish-Twilight'sHammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1066] = {
					["source"] = "Simpdruid-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5761] = {
					["source"] = "Phóebo-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203277] = {
					["source"] = "Talizeæ-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["source"] = "Druidza-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102342] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186270] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85256] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316531] = {
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[3408] = {
					["source"] = "Daecom-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[327705] = {
					["source"] = "Belatherix-Mazrigos",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[336135] = {
					["source"] = "Pungbrock-Stormreaver",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329831] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[309627] = {
					["source"] = "Jumex-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[197626] = {
					["source"] = "Sattis-BurningLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328414] = {
					["source"] = "Royal Arcanist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165270,
				},
				[331623] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265202] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[347600] = {
					["source"] = "Lyllu-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Phóebo-Drak'thul",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1719] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333089] = {
					["source"] = "Bevedahl-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211336] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[104773] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192106] = {
					["source"] = "Felicìtyy-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114108] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113746] = {
					["source"] = "Äijä-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[310143] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279709] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199786] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[345541] = {
					["source"] = "Dathkan-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298703] = {
					["source"] = "Rowlet-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338344] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198839] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[343648] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345540] = {
					["source"] = "Dathkan-TarrenMill",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313948] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[343393] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[589] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324724] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[132951] = {
					["type"] = "DEBUFF",
					["source"] = "Sludgefist",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164407,
				},
				[43308] = {
					["source"] = "Janethefirst-Hellfire",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5215] = {
					["source"] = "Dazling",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329840] = {
					["encounterID"] = 2399,
					["source"] = "Warowneren-Ahn'Qiraj",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32379] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108291] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[336746] = {
					["type"] = "DEBUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343396] = {
					["type"] = "BUFF",
					["source"] = "Blackrobestu-Alonsus",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198838] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108211] = {
					["source"] = "Phóebo-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211881] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342735] = {
					["source"] = "Stone Legion Goliath",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173178,
				},
				[342733] = {
					["source"] = "Stone Legion Goliath",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173178,
				},
				[339407] = {
					["source"] = "Stone Legion Skirmisher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173280,
				},
				[316958] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[331986] = {
					["source"] = "Prince Renathal",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 173119,
				},
				[214202] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16827] = {
					["encounterID"] = 2399,
					["source"] = "Hati",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[345319] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308514] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["source"] = "Ganilf-Aszune",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[343144] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[213771] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48168] = {
					["source"] = "Unknown",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 50148,
				},
				[186406] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[211319] = {
					["type"] = "DEBUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85288] = {
					["encounterID"] = 2399,
					["source"] = "Warowneren-Ahn'Qiraj",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[67833] = {
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[63619] = {
					["encounterID"] = 2399,
					["source"] = "Shadowfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 19668,
				},
				[10060] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48518] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[335361] = {
					["encounterID"] = 2399,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[348518] = {
					["source"] = "Psyfly-Antonidas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[32612] = {
					["source"] = "Сониблейд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20707] = {
					["source"] = "Venefica-Nagrand",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[197277] = {
					["type"] = "DEBUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19236] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205179] = {
					["encounterID"] = 2399,
					["source"] = "Venefica-Nagrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[351077] = {
					["source"] = "Cécilia-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210065] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Morphansucks-Nordrassil",
					["npcID"] = 0,
				},
				[340563] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[528] = {
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48181] = {
					["encounterID"] = 2399,
					["source"] = "Venefica-Nagrand",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204883] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80353] = {
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[201754] = {
					["encounterID"] = 2399,
					["source"] = "Hati",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165189,
				},
				[31661] = {
					["source"] = "Сониблейд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[338036] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344662] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324226] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2565] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[53385] = {
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90328] = {
					["source"] = "Hati",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[345710] = {
					["type"] = "DEBUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324523] = {
					["source"] = "Multiham-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324739] = {
					["source"] = "Äijä-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[31821] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108853] = {
					["encounterID"] = 2399,
					["source"] = "Astrazelia-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[66489] = {
					["source"] = "Kvaldir Harpooner",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34907,
				},
				[80354] = {
					["source"] = "Grosvenor-Dentarg",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330367] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[56641] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[52127] = {
					["encounterID"] = 2399,
					["source"] = "Mirocien-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2383] = {
					["source"] = "Cadwhosuss-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330368] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344179] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[162243] = {
					["encounterID"] = 2399,
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269279] = {
					["source"] = "Captahab-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77472] = {
					["encounterID"] = 2399,
					["source"] = "Mirocien-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[339321] = {
					["source"] = "Moon-Bloodfeather",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[329849] = {
					["type"] = "BUFF",
					["source"] = "Warowneren-Ahn'Qiraj",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122] = {
					["encounterID"] = 2399,
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[124280] = {
					["source"] = "Äijä-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["source"] = "Druidza-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184367] = {
					["encounterID"] = 2399,
					["source"] = "Challnger-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[328837] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335467] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[212800] = {
					["source"] = "Animaseeker-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337470] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61336] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335904] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[871] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[336767] = {
					["source"] = "Xinthria-Draenor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[339325] = {
					["source"] = "General Kaal",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 173298,
				},
				[285362] = {
					["source"] = "Noeliana",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[114051] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[335234] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228358] = {
					["type"] = "DEBUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[123254] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23881] = {
					["encounterID"] = 2399,
					["source"] = "Warowneren-Ahn'Qiraj",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[43410] = {
					["source"] = "Kvaldir Berserker",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 34947,
				},
				[41425] = {
					["type"] = "DEBUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333957] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102351] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311474] = {
					["source"] = "Breathent-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184362] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[113860] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19434] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[116] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[465] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271045] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46924] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[199844] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[330380] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[20473] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212431] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[338804] = {
					["source"] = "Animaseeker-Ragnaros",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324260] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["source"] = "Tpzed",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["source"] = "Phóebo-Drak'thul",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[347788] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311459] = {
					["source"] = "Brotherbéár-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203554] = {
					["source"] = "Nyrh-TarrenMill",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271049] = {
					["type"] = "DEBUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73325] = {
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311471] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187698] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227723] = {
					["source"] = "Glialka-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["encounterID"] = 2399,
					["source"] = "Glialka-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[205473] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[209693] = {
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[102417] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[332687] = {
					["type"] = "BUFF",
					["source"] = "Sludgefist",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164407,
				},
				[345219] = {
					["type"] = "DEBUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65147] = {
					["source"] = "Stormwind Champion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33747,
				},
				[47788] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[98008] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[330131] = {
					["type"] = "BUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33917] = {
					["encounterID"] = 2399,
					["source"] = "Gruwal-BronzeDragonflight",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[165961] = {
					["source"] = "Gruwal-BronzeDragonflight",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257284] = {
					["encounterID"] = 2399,
					["source"] = "Cadwhosuss-Doomhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[329666] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[120] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311469] = {
					["source"] = "Astrazelia-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[184662] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193455] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311464] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53351] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[346502] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316068] = {
					["source"] = "Royal Groundskeeper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 169048,
				},
				[337299] = {
					["source"] = "Сониблейд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311465] = {
					["source"] = "Astrazelia-Silvermoon",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337296] = {
					["source"] = "Honéybadgér",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109132] = {
					["source"] = "Äijä-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311466] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314791] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324748] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344663] = {
					["type"] = "DEBUFF",
					["source"] = "Sludgefist",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 164407,
				},
				[320674] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[185358] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[311467] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311468] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314793] = {
					["encounterID"] = 2399,
					["source"] = "Janethefirst-Hellfire",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[194223] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[333315] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345228] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264667] = {
					["type"] = "BUFF",
					["source"] = "Belok",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[300728] = {
					["source"] = "Challnger-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321444] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311470] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342416] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48045] = {
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345230] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Animaseeker-Ragnaros",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[332443] = {
					["encounterID"] = 2399,
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6673] = {
					["source"] = "Mothrogwar-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[345231] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22842] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256374] = {
					["type"] = "BUFF",
					["source"] = "Kultaintopii-Ravencrest",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[223819] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328411] = {
					["source"] = "Royal Arcanist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165270,
				},
				[342419] = {
					["type"] = "DEBUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[347047] = {
					["encounterID"] = 2399,
					["source"] = "Astrazelia-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[27827] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331934] = {
					["type"] = "DEBUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[342420] = {
					["type"] = "DEBUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[201633] = {
					["type"] = "BUFF",
					["source"] = "Earthen Wall Totem",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 100943,
				},
				[339187] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5302] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Astrazelia-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34914] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[781] = {
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[85222] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[325130] = {
					["encounterID"] = 2399,
					["source"] = "Сониблейд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[974] = {
					["encounterID"] = 2399,
					["source"] = "Mirocien-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[331937] = {
					["type"] = "BUFF",
					["source"] = "Warowneren-Ahn'Qiraj",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260881] = {
					["source"] = "Dráiscor-ScarshieldLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[114250] = {
					["type"] = "BUFF",
					["source"] = "Psyfly-Antonidas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["source"] = "Jiu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[187708] = {
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[32223] = {
					["source"] = "Highbeastpz-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[341448] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[331939] = {
					["type"] = "BUFF",
					["source"] = "Challnger-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[15407] = {
					["type"] = "BUFF",
					["source"] = "Adrieth-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[66] = {
					["source"] = "Сониблейд-Гордунни",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[980] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259277] = {
					["type"] = "DEBUFF",
					["source"] = "Belok",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 165189,
				},
				[345495] = {
					["encounterID"] = 2399,
					["source"] = "Frothing Pustule",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 175519,
				},
				[325862] = {
					["type"] = "BUFF",
					["source"] = "Mothrogwar-Quel'Thalas",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191034] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24275] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[326059] = {
					["encounterID"] = 2399,
					["source"] = "Dráiscor-ScarshieldLegion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[327371] = {
					["encounterID"] = 2399,
					["source"] = "Ganilf-Aszune",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[46968] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[321712] = {
					["type"] = "DEBUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[324463] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314040] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260242] = {
					["type"] = "BUFF",
					["source"] = "Cadwhosuss-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311483] = {
					["source"] = "Felicìtyy-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317877] = {
					["source"] = "Darkwing Commander",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165267,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Glialka-Doomhammer",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260243] = {
					["source"] = "Cadwhosuss-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77489] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316855] = {
					["source"] = "Darkwing Commander",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 165267,
				},
				[162264] = {
					["type"] = "BUFF",
					["source"] = "Animaseeker-Ragnaros",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[41635] = {
					["type"] = "BUFF",
					["source"] = "Brotherbéár-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337060] = {
					["type"] = "BUFF",
					["source"] = "Karqua",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 416,
				},
				[31884] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272678] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8679] = {
					["event"] = "SPELL_AURA_APPLIED",
					["type"] = "BUFF",
					["source"] = "Dívínícus-Doomhammer",
					["npcID"] = 0,
				},
				[57723] = {
					["source"] = "Hahmo-ArgentDawn",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338340] = {
					["type"] = "BUFF",
					["source"] = "Mirocien-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[205231] = {
					["encounterID"] = 2399,
					["source"] = "Darkglare",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 103673,
				},
				[333049] = {
					["type"] = "BUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[325437] = {
					["type"] = "DEBUFF",
					["source"] = "Сониблейд-Гордунни",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[328275] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[498] = {
					["type"] = "BUFF",
					["source"] = "Lougrô-Thrall",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[21562] = {
					["source"] = "Adrieth-Quel'Thalas",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[323764] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Jiu",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[45438] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[344225] = {
					["type"] = "BUFF",
					["source"] = "Janethefirst-Hellfire",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[337989] = {
					["source"] = "Ноулифкловэр-СвежевательДуш",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["source"] = "Dazling",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[53390] = {
					["type"] = "BUFF",
					["source"] = "Mirocien-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[85673] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[84714] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[202164] = {
					["source"] = "Sweetineon-Frostwhisper",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[342181] = {
					["type"] = "BUFF",
					["source"] = "Dráiscor-ScarshieldLegion",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["type"] = "DEBUFF",
					["source"] = "Belak-Outland",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[73685] = {
					["type"] = "BUFF",
					["source"] = "Mirocien-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[322101] = {
					["source"] = "Äijä-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315584] = {
					["source"] = "Killfire",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[190784] = {
					["encounterID"] = 2399,
					["source"] = "Psyfly-Antonidas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157153] = {
					["encounterID"] = 2399,
					["source"] = "Mirocien-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[324536] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[308474] = {
					["source"] = "Multiham-AzjolNerub",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[63233] = {
					["source"] = "Boneguard Scout",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 33550,
				},
				[334511] = {
					["type"] = "BUFF",
					["source"] = "Gruwal-BronzeDragonflight",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30455] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2061] = {
					["encounterID"] = 2399,
					["source"] = "Brotherbéár-Silvermoon",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[326377] = {
					["type"] = "BUFF",
					["source"] = "Mirocien-Silvermoon",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[349857] = {
					["encounterID"] = 2399,
					["source"] = "Challnger-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[345545] = {
					["source"] = "Xinthria-Draenor",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[338643] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[355] = {
					["encounterID"] = 2399,
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316099] = {
					["encounterID"] = 2399,
					["source"] = "Kultaintopii-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[35395] = {
					["encounterID"] = 2399,
					["source"] = "Lougrô-Thrall",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118922] = {
					["source"] = "Jiu",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8092] = {
					["encounterID"] = 2399,
					["source"] = "Adrieth-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[40120] = {
					["source"] = "Bwonsamdii-Blade'sEdge",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23161] = {
					["source"] = "Panril-Doomhammer",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Ganilf-Aszune",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[247563] = {
					["source"] = "Sattis-BurningLegion",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[254474] = {
					["source"] = "Viramator",
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51533] = {
					["source"] = "Hahmo-ArgentDawn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[59638] = {
					["encounterID"] = 2399,
					["source"] = "Blackrobestu-Alonsus",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 31216,
				},
				[85739] = {
					["type"] = "BUFF",
					["source"] = "Warowneren-Ahn'Qiraj",
					["encounterID"] = 2399,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1543] = {
					["encounterID"] = 2399,
					["source"] = "Jiu",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[270323] = {
					["encounterID"] = 2399,
					["source"] = "Belak-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2120] = {
					["source"] = "Сониблейд-Гордунни",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1161] = {
					["source"] = "Mothrogwar-Quel'Thalas",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "1.1000000238419",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["NamePlateClassificationScale"] = "1",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateShowFriendlyPets"] = "0",
				["nameplatePersonalShowInCombat"] = "1",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateShowAll"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateSelfScale"] = "1",
				["NamePlateVerticalScale"] = "1",
				["nameplateShowSelf"] = "0",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateMotionSpeed"] = "0.029999999329448",
				["nameplateGlobalScale"] = "1",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyNPCs"] = "0",
				["nameplateSelectedScale"] = "1.2000000476837",
				["nameplateShowFriends"] = "0",
				["nameplateMotion"] = "1",
				["nameplateMinScale"] = "1",
				["nameplateOtherTopInset"] = "0.019999999552965",
				["nameplateSelfBottomInset"] = "0.2",
				["nameplateShowFriendlyGuardians"] = "0",
				["NamePlateHorizontalScale"] = "1",
				["nameplateOccludedAlphaMult"] = "0.39999997615814",
				["nameplateLargeTopInset"] = "0.019999999552965",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateSelfAlpha"] = "1",
			},
			["aura_timer_text_font"] = "Accidental Presidency",
			["aura_showall"] = false,
			["login_counter"] = 7075,
			["script_data_trash"] = {
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    \n    if (not unitFrame.spitefulTexture) then\n        unitFrame.spitefulTexture = unitFrame.healthBar:CreateTexture(nil, \"overlay\", nil, 6)\n        unitFrame.spitefulTexture:SetPoint('right', 0, 0)\n        unitFrame.spitefulTexture:SetSize(27, 14)\n        unitFrame.spitefulTexture:SetColorTexture(.3, .3, 1, .7)\n        \n        unitFrame.spitefulText = unitFrame.healthBar:CreateFontString(nil, \"overlay\", \"GameFontNormal\", 6)\n        unitFrame.spitefulText:SetPoint(\"right\", unitFrame.spitefulTexture, \"right\", -2, 0)\n        unitFrame.spitefulText:SetJustifyH(\"right\")\n        \n        unitFrame.spitefulTexture:Hide()\n        unitFrame.spitefulText:Hide()\n    end\n    \n    function envTable.UpdateSpitefulWidget(unitFrame)\n        \n        local r, g, b, a = Plater:ParseColors(scriptTable.config.bgColor)\n        unitFrame.spitefulTexture:SetSize(scriptTable.config.bgWidth, unitFrame.healthBar:GetHeight())   \n        Plater:SetFontSize(unitFrame.spitefulText, scriptTable.config.textSize)\n        Plater:SetFontColor(unitFrame.spitefulText, scriptTable.config.textColor)\n        \n        local currentHealth = unitFrame.healthBar.CurrentHealth\n        local maxHealth = unitFrame.healthBar.CurrentHealthMax\n        \n        local healthPercent = currentHealth / maxHealth * 100\n        local timeToDie = format(\"%.1fs\", healthPercent / 8)\n        unitFrame.spitefulText:SetText(timeToDie)\n        \n        unitFrame.spitefulText:Show()\n        unitFrame.spitefulTexture:Show()\n    end\nend\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    if (unitFrame.spitefulTexture) then\n        unitFrame.spitefulText:Hide()\n        unitFrame.spitefulTexture:Hide()    \n    end\nend\n\n\n\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["Time"] = 1608852889,
					["url"] = "",
					["Icon"] = 135945,
					["Enabled"] = true,
					["Revision"] = 59,
					["Options"] = {
						{
							["Type"] = 2,
							["Max"] = 50,
							["Desc"] = "",
							["Min"] = 10,
							["Key"] = "bgWidth",
							["Value"] = 27,
							["Name"] = "Width",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [1]
						{
							["Type"] = 1,
							["Key"] = "bgColor",
							["Value"] = {
								0.50588235294118, -- [1]
								0.070588235294118, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Background Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option5",
							["Value"] = 0,
							["Name"] = "Option 5",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 2,
							["Max"] = 24,
							["Desc"] = "",
							["Min"] = 7,
							["Key"] = "textSize",
							["Value"] = 8,
							["Name"] = "Text Size",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = false,
						}, -- [4]
						{
							["Type"] = 1,
							["Key"] = "textColor",
							["Value"] = {
								1, -- [1]
								0.5843137254902, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Text Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "",
						}, -- [5]
					},
					["Author"] = "Symantec-Azralon",
					["Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    --insert code here\n    envTable.UpdateSpitefulWidget(unitFrame)\nend\n\n\n",
					["NpcNames"] = {
						"174773", -- [1]
					},
					["Name"] = "M+ Spiteful",
					["version"] = -1,
					["PlaterCore"] = 1,
					["Desc"] = "Time to die Spiteful affix",
					["SpellIds"] = {
					},
					["semver"] = "",
					["__TrashAt"] = 1616624864,
				}, -- [1]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable, scriptTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = scriptTable.config.blinkEnabled\n        envTable.GlowEnabled = scriptTable.config.glowEnabled \n        envTable.ChangeNameplateColor = scriptTable.config.changeNameplateColor;\n        envTable.TimeLeftToBlink = scriptTable.config.timeleftToBlink;\n        envTable.BlinkSpeed = scriptTable.config.blinkSpeed; \n        envTable.BlinkColor = scriptTable.config.blinkColor; \n        envTable.BlinkMaxAlpha = scriptTable.config.blinkMaxAlpha; \n        envTable.NameplateColor = scriptTable.config.nameplateColor; \n        \n        --text color\n        envTable.TimerColorEnabled = scriptTable.config.timerColorEnabled \n        envTable.TimeLeftWarning = scriptTable.config.timeLeftWarning;\n        envTable.TimeLeftCritical = scriptTable.config.timeLeftCritical;\n        envTable.TextColor_Warning = scriptTable.config.warningColor; \n        envTable.TextColor_Critical = scriptTable.config.criticalColor; \n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["OptionsValues"] = {
					},
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1604354808,
					["url"] = "",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 331,
					["semver"] = "",
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "					function (scriptTable)\n						--insert code here\n						\n					end\n				",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["NpcNames"] = {
					},
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["version"] = -1,
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["Options"] = {
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [1]
						{
							["Type"] = 5,
							["Key"] = "option17",
							["Value"] = "Enter the spell name or spellID in the Add Trigger box and hit \"Add\".",
							["Name"] = "Option 17",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_label",
							["Desc"] = "",
						}, -- [2]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [3]
						{
							["Type"] = 4,
							["Key"] = "blinkEnabled",
							["Value"] = true,
							["Name"] = "Blink Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable blink",
						}, -- [4]
						{
							["Type"] = 4,
							["Key"] = "glowEnabled",
							["Value"] = true,
							["Name"] = "Glow Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable glows",
						}, -- [5]
						{
							["Type"] = 4,
							["Key"] = "changeNameplateColor",
							["Value"] = true,
							["Name"] = "Change NamePlate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'true' to enable nameplate color change",
						}, -- [6]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the blink effect only",
							["Min"] = 1,
							["Key"] = "timeleftToBlink",
							["Value"] = 3,
							["Name"] = "Timeleft to Blink",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [7]
						{
							["Type"] = 2,
							["Max"] = 3,
							["Desc"] = "time to complete a blink loop",
							["Min"] = 0.5,
							["Key"] = "blinkSpeed",
							["Value"] = 1,
							["Name"] = "Blink Speed",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [8]
						{
							["Type"] = 2,
							["Max"] = 1,
							["Desc"] = "max transparency in the animation loop (1.0 is full opaque)",
							["Min"] = 0.1,
							["Key"] = "blinkMaxAlpha",
							["Value"] = 0.6,
							["Name"] = "Blink Max Alpha",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [9]
						{
							["Type"] = 1,
							["Key"] = "blinkColor",
							["Value"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["Name"] = "Blink Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color of the blink",
						}, -- [10]
						{
							["Type"] = 1,
							["Key"] = "",
							["Value"] = {
								0.28627450980392, -- [1]
								0.003921568627451, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Nameplate Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "nameplate color if ChangeNameplateColor is true",
						}, -- [11]
						{
							["Type"] = 6,
							["Key"] = "option10",
							["Value"] = 0,
							["Name"] = "Blank Space",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_blank",
							["Desc"] = "",
						}, -- [12]
						{
							["Type"] = 4,
							["Key"] = "timerColorEnabled",
							["Value"] = true,
							["Name"] = "Timer Color Enabled",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_bool",
							["Desc"] = "set to 'false' to disable changes in the color of the time left text",
						}, -- [13]
						{
							["Type"] = 2,
							["Max"] = 20,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Key"] = "timeLeftWarning",
							["Value"] = 8,
							["Name"] = "Time Left Warning",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [14]
						{
							["Type"] = 2,
							["Max"] = 10,
							["Desc"] = "in seconds, affects the color of the text",
							["Min"] = 1,
							["Key"] = "timeLeftCritical",
							["Value"] = 3,
							["Name"] = "Time Left Critical",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_number",
							["Fraction"] = true,
						}, -- [15]
						{
							["Type"] = 1,
							["Key"] = "warningColor",
							["Value"] = {
								1, -- [1]
								0.87058823529412, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Warning Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left entered in a warning zone",
						}, -- [16]
						{
							["Type"] = 1,
							["Key"] = "criticalColor",
							["Value"] = {
								1, -- [1]
								0.074509803921569, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["Name"] = "Critical Color",
							["Icon"] = "Interface\\AddOns\\Plater\\images\\option_color",
							["Desc"] = "color when the time left is critical",
						}, -- [17]
					},
					["__TrashAt"] = 1616624864,
				}, -- [2]
			},
			["use_ui_parent"] = true,
			["castbar_icon_size"] = "same as castbar plus healthbar",
			["npc_colors"] = {
				[167612] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[174802] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[174566] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[163620] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[164707] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[168393] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[162038] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[173016] = {
					true, -- [1]
					false, -- [2]
					"white", -- [3]
				},
				[160495] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[163086] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[174568] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[162039] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[164567] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163126] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[167607] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163520] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[164552] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[162040] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[163891] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[174567] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[168443] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[166275] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[168396] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[164451] = {
					true, -- [1]
					false, -- [2]
					"blue", -- [3]
				},
				[165010] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163128] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[165515] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163459] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[166302] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[173360] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[174571] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[164562] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163121] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[168942] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[166299] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[165357] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[168357] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[168420] = {
					true, -- [1]
					false, -- [2]
					"aqua", -- [3]
				},
				[164506] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[163618] = {
					true, -- [1]
					false, -- [2]
					"deepskyblue", -- [3]
				},
				[174570] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[164705] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[163894] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[167493] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[168572] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[174565] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
				[128095] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[167615] = {
					true, -- [1]
					false, -- [2]
					"magenta", -- [3]
				},
				[174569] = {
					true, -- [1]
					false, -- [2]
					"red", -- [3]
				},
			},
			["aura_width"] = 12,
			["health_statusbar_bgcolor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
			},
			["patch_version"] = 13,
			["extra_icon_auras_mine"] = {
				["Living bomb"] = true,
				["Living Bomb"] = true,
			},
			["aura_stack_anchor"] = {
				["y"] = -2.6000003814697,
				["x"] = 3.689998626709,
				["side"] = 9,
			},
			["aura_stack_font"] = "Accidental Presidency",
			["script_auto_imported"] = {
				["Unit - Important"] = 11,
				["Aura - Buff Alert"] = 13,
				["Cast - Very Important"] = 11,
				["Explosion Affix M+"] = 11,
				["Aura - Debuff Alert"] = 11,
				["Test Cast Bar"] = 1,
				["Cast - Ultra Important"] = 11,
				["Cast - Big Alert"] = 11,
				["Cast - Small Alert"] = 11,
				["Fixate On You"] = 11,
				["Aura - Invalidate Unit"] = 1,
				["Auto Set Skull"] = 11,
				["Unit Power"] = 1,
				["Unit - Main Target"] = 11,
				["Aura - Blink Time Left"] = 12,
				["Aura Border Color"] = 1,
				["Countdown"] = 11,
				["Unit - Health Markers"] = 12,
				["Cast - Frontal Cone"] = 11,
				["Fixate"] = 11,
				["Cast - Tank Interrupt"] = 11,
				["Color Change"] = 1,
				["Spiteful Affix"] = 3,
				["Unit - Show Energy"] = 11,
			},
			["target_highlight_color"] = {
				nil, -- [1]
				0.51372549019608, -- [2]
			},
			["range_check_buffs_alpha"] = 0.84999996423721,
			["aura_timer_text_size"] = 10,
			["aura_tracker"] = {
				["debuff_banned"] = {
					["333575"] = true,
				},
				["buff_banned"] = {
					["206150"] = true,
					["331874"] = true,
					["333553"] = true,
					["61574"] = true,
					["61573"] = true,
					["333575"] = true,
					["294332"] = true,
				},
				["buff"] = {
					269129, -- [1]
					270417, -- [2]
					271187, -- [3]
					280769, -- [4]
					262947, -- [5]
					270296, -- [6]
					275560, -- [7]
					255715, -- [8]
					262618, -- [9]
					252215, -- [10]
					267572, -- [11]
					266201, -- [12]
					277146, -- [13]
					278296, -- [14]
					277236, -- [15]
					277163, -- [16]
					278297, -- [17]
					277124, -- [18]
					273432, -- [19]
					257251, -- [20]
					274360, -- [21]
					275865, -- [22]
					257496, -- [23]
					260575, -- [24]
					278119, -- [25]
					256146, -- [26]
					264745, -- [27]
					280071, -- [28]
					264387, -- [29]
					276767, -- [30]
					264006, -- [31]
					274264, -- [32]
					250511, -- [33]
					270413, -- [34]
					258133, -- [35]
					268375, -- [36]
					259999, -- [37]
					267345, -- [38]
					256791, -- [39]
					268710, -- [40]
					272659, -- [41]
					263487, -- [42]
					273609, -- [43]
					269896, -- [44]
					278176, -- [45]
					259331, -- [46]
					280134, -- [47]
					257933, -- [48]
					279549, -- [49]
					269906, -- [50]
					278847, -- [51]
					271840, -- [52]
					255581, -- [53]
					270444, -- [54]
					275186, -- [55]
					245788, -- [56]
					265169, -- [57]
					257397, -- [58]
					263496, -- [59]
					273574, -- [60]
					267504, -- [61]
					278960, -- [62]
					269237, -- [63]
					270901, -- [64]
					269783, -- [65]
					268998, -- [66]
					265480, -- [67]
					274336, -- [68]
					274097, -- [69]
					278708, -- [70]
					259869, -- [71]
					259630, -- [72]
					271466, -- [73]
					263224, -- [74]
					277498, -- [75]
					272665, -- [76]
					257956, -- [77]
					267530, -- [78]
					279818, -- [79]
					275517, -- [80]
					274056, -- [81]
					277474, -- [82]
					255228, -- [83]
					265314, -- [84]
					245453, -- [85]
					275200, -- [86]
					280065, -- [87]
					280064, -- [88]
					274210, -- [89]
					264706, -- [90]
					261904, -- [91]
					279716, -- [92]
					273769, -- [93]
					266030, -- [94]
					258787, -- [95]
					268027, -- [96]
					257567, -- [97]
					275832, -- [98]
					260281, -- [99]
					261659, -- [100]
					248527, -- [101]
					281702, -- [102]
					280082, -- [103]
					280081, -- [104]
					270118, -- [105]
					281490, -- [106]
					260302, -- [107]
					274459, -- [108]
					280073, -- [109]
					264396, -- [110]
					274969, -- [111]
					265368, -- [112]
					280070, -- [113]
					275901, -- [114]
					273734, -- [115]
					264968, -- [116]
					265624, -- [117]
					275925, -- [118]
					276265, -- [119]
					270001, -- [120]
					263215, -- [121]
					267346, -- [122]
					275573, -- [123]
					280404, -- [124]
					264705, -- [125]
					264713, -- [126]
					259102, -- [127]
					275881, -- [128]
					263848, -- [129]
					277976, -- [130]
					267037, -- [131]
					278989, -- [132]
					258153, -- [133]
					263215, -- [134]
					268030, -- [135]
					260805, -- [136]
					256850, -- [137]
					257069, -- [138]
				},
				["debuff"] = {
					273865, -- [1]
					279549, -- [2]
					228600, -- [3]
					210833, -- [4]
					244813, -- [5]
					245167, -- [6]
					279133, -- [7]
					345010, -- [8]
					321707, -- [9]
					334392, -- [10]
				},
				["buff_tracked"] = {
					["209859"] = true,
				},
			},
			["update_throttle"] = 0.24999998509884,
			["number_region_first_run"] = true,
			["cast_statusbar_color"] = {
				0, -- [1]
				0.6078431372549, -- [2]
				1, -- [3]
			},
			["hide_friendly_castbars"] = true,
			["range_check_alpha"] = 0.64678645133972,
			["extra_icon_caster_font"] = "Accidental Presidency",
			["extra_icon_auras"] = {
				277242, -- [1]
				"Living bomb", -- [2]
			},
			["castbar_target_font"] = "Accidental Presidency",
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.1900000572205,
				},
			},
			["semver"] = "1.0.4",
			["target_highlight_alpha"] = 0.44388708472252,
			["extra_icon_anchor"] = {
				["x"] = -19.623970031738,
			},
			["dps"] = {
				["colors"] = {
					["aggro"] = {
						nil, -- [1]
						0.098039215686275, -- [2]
					},
					["noaggro"] = {
						1, -- [1]
						0, -- [2]
						0.97647058823529, -- [3]
					},
					["pulling"] = {
						nil, -- [1]
						0, -- [2]
						0.23529411764706, -- [3]
					},
				},
			},
			["ui_parent_scale_tune"] = 1.562500034924597,
			["health_selection_overlay"] = "ElvUI Blank",
			["version"] = 5,
			["target_highlight_height"] = 17.173038482666,
			["cast_statusbar_texture"] = "PlaterTexture",
			["cast_statusbar_bgcolor"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				1, -- [4]
			},
			["indicator_raidmark_anchor"] = {
				["y"] = 21.269996643066,
				["x"] = -1.8000030517578,
				["side"] = 12,
			},
			["first_run"] = true,
			["cast_statusbar_spark_width"] = 14,
			["auto_toggle_friendly"] = {
				["cities"] = false,
			},
		},
	},
}
