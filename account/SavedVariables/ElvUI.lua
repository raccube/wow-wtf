
ElvDB = {
	["profileKeys"] = {
		["Shibbun - Magtheridon"] = "Default",
		["Jiu - Magtheridon"] = "Default",
	},
	["SLE_DB_Ver"] = "3.65",
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["Magtheridon"] = {
			["Jiu"] = "HUNTER",
			["Shibbun"] = "DRUID",
		},
	},
	["profiles"] = {
		["Default"] = {
			["databars"] = {
				["threat"] = {
					["width"] = 262,
				},
				["honor"] = {
					["enable"] = false,
					["textSize"] = 10,
					["textFormat"] = "CURMAX",
					["width"] = 547,
				},
				["reputation"] = {
					["enable"] = true,
					["width"] = 10,
					["height"] = 227,
					["orientation"] = "VERTICAL",
				},
				["experience"] = {
					["height"] = 227,
					["width"] = 10,
					["orientation"] = "VERTICAL",
				},
				["azerite"] = {
					["enable"] = false,
					["textSize"] = 10,
					["textFormat"] = "CURMAX",
					["width"] = 547,
				},
				["colors"] = {
					["quest"] = {
						["a"] = 0.40000003576279,
						["g"] = 0,
					},
				},
			},
			["general"] = {
				["totems"] = {
					["spacing"] = 1,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 42,
				},
				["decimalLength"] = 2,
				["backdropfadecolor"] = {
					["r"] = 0.054,
					["g"] = 0.054,
					["b"] = 0.054,
				},
				["valuecolor"] = {
					["r"] = 0.23529411764706,
					["g"] = 0.74901960784314,
					["b"] = 0.15294117647059,
				},
				["stickyFrames"] = false,
				["vehicleSeatIndicatorSize"] = 112,
				["altPowerBar"] = {
					["statusBar"] = "WorldState Score",
				},
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 220,
				},
				["bottomPanel"] = false,
				["objectiveFrameHeight"] = 500,
				["talkingHeadFrameScale"] = 1,
				["bonusObjectivePosition"] = "AUTO",
			},
			["v11NamePlateReset"] = true,
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 12,
					["horizontalSpacing"] = 3,
					["size"] = 40,
					["countFont"] = "PT Sans Narrow",
					["countFontOutline"] = "OUTLINE",
					["sortDir"] = "+",
					["durationFontSize"] = 14,
					["maxWraps"] = 2,
				},
				["debuffs"] = {
					["countFontSize"] = 12,
					["size"] = 40,
					["countFont"] = "PT Sans Narrow",
					["countFontOutline"] = "OUTLINE",
					["horizontalSpacing"] = 3,
					["durationFontSize"] = 14,
				},
			},
			["dbConverted"] = 12.24,
			["layoutSet"] = "dpsCaster",
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
				},
				["media"] = {
					["fonts"] = {
						["zone"] = {
							["font"] = "RussoOne",
						},
						["subzone"] = {
							["font"] = "RussoOne",
						},
						["pvp"] = {
							["font"] = "RussoOne",
						},
					},
				},
				["blizzard"] = {
					["rumouseover"] = true,
				},
				["armory"] = {
					["character"] = {
						["enable"] = true,
						["gradient"] = {
							["quality"] = true,
						},
					},
					["inspect"] = {
						["gradient"] = {
							["quality"] = true,
						},
						["enable"] = true,
					},
					["stats"] = {
						["IlvlColor"] = true,
						["List"] = {
							["ATTACK_AP"] = true,
						},
					},
				},
				["unitframes"] = {
					["unit"] = {
						["player"] = {
							["pvpIconText"] = {
								["enable"] = true,
								["yoffset"] = -6,
							},
						},
						["raid"] = {
							["offline"] = {
								["enable"] = true,
								["size"] = 22,
							},
							["dead"] = {
								["enable"] = true,
								["size"] = 22,
							},
						},
					},
				},
				["loot"] = {
					["history"] = {
						["autohide"] = true,
					},
					["enable"] = true,
					["autoroll"] = {
						["autogreed"] = true,
					},
				},
				["legacy"] = {
					["warwampaign"] = {
						["autoOrder"] = {
							["enable"] = true,
						},
					},
				},
				["shadows"] = {
					["datatexts"] = {
						["panels"] = {
							["Darth_Panel_1"] = {
								["backdrop"] = false,
								["size"] = 3,
							},
						},
					},
				},
				["tooltip"] = {
					["alwaysCompareItems"] = true,
					["showFaction"] = true,
				},
				["pvp"] = {
					["autorelease"] = true,
					["duels"] = {
						["pet"] = true,
						["regular"] = true,
					},
				},
				["minimap"] = {
					["locPanel"] = {
						["width"] = 310,
						["enable"] = true,
					},
					["instance"] = {
						["enable"] = true,
						["fontSize"] = 14,
					},
				},
				["dt"] = {
					["friends"] = {
						["hide_titleline"] = true,
						["hideBSAp"] = true,
						["hideVIPR"] = true,
						["hideODIN"] = true,
						["panelStyle"] = "DEFAULTTOTALS",
						["hideLAZR"] = true,
					},
					["currency"] = {
						["Unused"] = false,
						["Archaeology"] = false,
						["gold"] = {
							["method"] = "amount",
						},
					},
					["guild"] = {
						["hide_titleline"] = true,
						["totals"] = true,
					},
				},
				["nameplates"] = {
					["threat"] = {
						["enable"] = true,
					},
					["targetcount"] = {
						["enable"] = true,
					},
				},
				["chat"] = {
					["guildmaster"] = true,
					["dpsSpam"] = true,
				},
				["quests"] = {
					["autoReward"] = true,
				},
				["uibuttons"] = {
					["point"] = "TOPRIGHT",
					["spacing"] = 1,
					["anchor"] = "TOPLEFT",
					["enable"] = true,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,391",
				["SLE_FarmToolMover"] = "BOTTOMLEFT,SLE_SeedToolbarsAnchor,TOPLEFT,0,1",
				["RaidMarkerBarAnchor"] = "BOTTOM,ElvUIParent,BOTTOM,0,312",
				["SLE_BG_1_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,21",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["GhostFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,110",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,433",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,533,-366",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,433",
				["SocialMenuMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-187",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-490,406",
				["DurabilityFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,164,30",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "BOTTOM,ElvUIParent,BOTTOM,-204,27",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,201,338",
				["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,549",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-289",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-20",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,84",
				["PetBattleStatusMover"] = "TOP,PetBattleFrame,TOP,0,0",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-550,23",
				["DTPanelDarth_Panel_1Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,0",
				["ObjectiveFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,90,0",
				["BNETMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,29",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,798,277",
				["RaidUtility_Mover"] = "TOP,ElvUIParent,TOP,-400,1",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,362",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,249",
				["ElvAB_7"] = "BOTTOM,ElvUI_Bar1,TOP,0,82",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,-1",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,526,-238",
				["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-27",
				["ThreatBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,258",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,339",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,2,253",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,368,0",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["SLE_UIButtonsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-227,-174",
				["SLE_GarrisonToolMover"] = "LEFT,ElvUIParent,LEFT,24,0",
				["SLE_FarmSeedMover"] = "LEFT,ElvUIParent,LEFT,24,-160",
				["SLE_FarmPortalMover"] = "BOTTOMLEFT,SLE_ToolsToolbarsAnchor,TOPLEFT,0,1",
				["SLE_BG_4_Mover"] = "BOTTOM,ElvUIParent,BOTTOM,0,189",
				["SLE_BG_3_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOM,257,21",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,261,306",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,267",
				["SLE_Location_Mover"] = "TOP,ElvUIParent,TOP,0,0",
				["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,412",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-48",
				["UIErrorsFrameMover"] = "TOP,ElvUIParent,TOP,0,-177",
				["ElvAB_8"] = "BOTTOM,ElvUI_Bar1,TOP,0,122",
				["ElvAB_10"] = "BOTTOM,ElvUI_Bar1,TOP,0,202",
				["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,551,23",
				["ElvUF_PlayerAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,498,407",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,261,376",
				["SLE_BG_2_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOM,-257,21",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-474,23",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["ElvNP_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,503",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,171",
				["ElvAB_9"] = "BOTTOM,ElvUI_Bar1,TOP,0,162",
				["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-247",
				["AzeriteBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,153",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-218,336",
				["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,249",
				["PowerBarContainerMover"] = "CENTER,ElvUIParent,TOP,0,-75",
				["ElvAB_3"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,475,23",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,115,171",
				["VehicleLeaveButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-190,-248",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-257,377",
				["LevelUpBossBannerMover"] = "TOP,ElvUIParent,TOP,0,-217",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-300",
				["SLEGhostFrameMover"] = "TOP,ElvUIParent,TOP,0,-149",
				["VOICECHAT"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,586,27",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,-115,171",
				["HonorBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,162",
				["PetBattleABMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TooltipMover"] = "BOTTOMRIGHT,RightChatToggleButton,BOTTOMRIGHT,0,0",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,518,-316",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-301",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-317,344",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,297,-572",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-231,-116",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
			},
			["convertPages"] = true,
			["tooltip"] = {
				["itemCount"] = "NONE",
				["cursorAnchor"] = true,
				["showElvUIUsers"] = true,
				["healthBar"] = {
					["font"] = "PT Sans Narrow",
					["height"] = 12,
					["fontSize"] = 12,
				},
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["font"] = "PT Sans Narrow",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["debuffs"] = {
							["yOffset"] = -19,
							["anchorPoint"] = "TOPRIGHT",
							["attachTo"] = "HEALTH",
							["xOffset"] = 100,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 100,
						["buffs"] = {
							["enable"] = true,
							["yOffset"] = 12,
							["anchorPoint"] = "BOTTOMRIGHT",
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Whitelist,nonPersonal",
							["attachTo"] = "HEALTH",
							["xOffset"] = 100,
							["maxDuration"] = 0,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = -19,
							["yOffset"] = 0,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
						},
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 100,
						},
						["width"] = 100,
						["infoPanel"] = {
							["height"] = 14,
						},
						["height"] = 30,
						["disableTargetGlow"] = false,
					},
					["player"] = {
						["debuffs"] = {
							["yOffset"] = 14,
							["perrow"] = 7,
						},
						["classbar"] = {
							["detachFromFrame"] = true,
							["autoHide"] = true,
							["height"] = 14,
						},
						["pvpIcon"] = {
							["anchorPoint"] = "LEFT",
							["xOffset"] = -36,
							["enable"] = true,
						},
						["customTexts"] = {
							["Absorbs"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = 2,
								["text_format"] = "[absorbs:sl-short]",
								["yOffset"] = -6,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NORMAL",
						},
						["disableMouseoverGlow"] = true,
						["name"] = {
							["position"] = "TOPLEFT",
							["text_format"] = "[name] [level]",
							["yOffset"] = 14,
						},
						["height"] = 50,
						["buffs"] = {
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Whitelist,nonPersonal",
							["perrow"] = 7,
						},
						["pvp"] = {
							["text_format"] = "",
						},
						["resurrectIcon"] = {
							["size"] = 40,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[powercolor][curpp]",
							["position"] = "LEFT",
							["xOffset"] = 2,
						},
						["aurabar"] = {
							["sortDirection"] = "ASCENDING",
							["maxBars"] = 8,
							["attachTo"] = "DETACHED",
							["maxDuration"] = 600,
							["spacing"] = 1,
							["detachedWidth"] = 200,
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Whitelist,nonPersonal",
						},
						["RestIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = 3,
						},
						["castbar"] = {
							["iconXOffset"] = 0,
							["iconSize"] = 30,
							["icon"] = false,
							["insideInfoPanel"] = false,
							["iconYOffset"] = 6,
							["width"] = 250,
							["iconAttachedTo"] = "Castbar",
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["overlayAlpha"] = 1,
							["fullOverlay"] = true,
							["camDistanceScale"] = 3.5,
						},
						["width"] = 220,
						["health"] = {
							["position"] = "TOPLEFT",
							["yOffset"] = -2,
						},
						["raidicon"] = {
							["attachTo"] = "BOTTOMRIGHT",
							["yOffset"] = 0,
							["xOffset"] = 20,
							["size"] = 20,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPRIGHT",
							["size"] = 30,
							["xOffset"] = 12,
							["yOffset"] = -8,
						},
					},
					["arena"] = {
						["health"] = {
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = -2,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[powercolor][curpp]",
						},
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["priority"] = "Blacklist,blockNoDuration,Personal,CCDebuffs,Whitelist",
							["desaturate"] = false,
							["maxDuration"] = 300,
						},
						["health"] = {
							["position"] = "BOTTOMRIGHT",
							["xOffset"] = -2,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[powercolor][curpp]",
						},
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 47,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["priority"] = "Blacklist,TurtleBuffs,PlayerBuffs,Dispellable",
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 256,
						},
					},
					["raid40"] = {
						["enable"] = false,
					},
					["focus"] = {
						["debuffs"] = {
							["sizeOverride"] = 30,
							["xOffset"] = -4,
							["anchorPoint"] = "BOTTOMRIGHT",
							["perrow"] = 7,
						},
						["width"] = 220,
						["height"] = 30,
						["buffs"] = {
							["sizeOverride"] = 30,
							["enable"] = true,
							["yOffset"] = -4,
							["anchorPoint"] = "RIGHT",
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,CastByUnit,Dispellable,RaidBuffsElvUI",
							["perrow"] = 4,
							["attachTo"] = "HEALTH",
							["maxDuration"] = 0,
						},
						["castbar"] = {
							["width"] = 220,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["xOffset"] = -20,
							["size"] = 20,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "BOTTOMLEFT",
							["xOffset"] = 2,
							["yOffset"] = -4,
						},
						["height"] = 22,
						["visibility"] = "[nogroup] hide;show",
						["raidicon"] = {
							["attachTo"] = "RIGHT",
						},
						["rdebuffs"] = {
							["yOffset"] = 10,
							["font"] = "PT Sans Narrow",
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["roleIcon"] = {
							["yOffset"] = -2,
							["attachTo"] = "InfoPanel",
							["xOffset"] = 0,
							["size"] = 12,
						},
						["power"] = {
							["enable"] = false,
							["height"] = 5,
						},
						["width"] = 92,
						["health"] = {
							["text_format"] = "",
						},
					},
					["target"] = {
						["debuffs"] = {
							["yOffset"] = 14,
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,Personal,nonPersonal",
							["perrow"] = 7,
							["attachTo"] = "FRAME",
							["maxDuration"] = 0,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
							["overlayAlpha"] = 1,
							["fullOverlay"] = true,
							["camDistanceScale"] = 3.5,
						},
						["resurrectIcon"] = {
							["size"] = 40,
						},
						["CombatIcon"] = {
							["anchorPoint"] = "TOPLEFT",
							["size"] = 30,
							["xOffset"] = -12,
							["yOffset"] = -8,
						},
						["aurabar"] = {
							["sortDirection"] = "ASCENDING",
							["maxBars"] = 8,
							["attachTo"] = "DETACHED",
							["maxDuration"] = 0,
							["spacing"] = 1,
							["detachedWidth"] = 200,
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Whitelist,nonPersonal",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[powercolor][curpp]",
							["position"] = "RIGHT",
							["xOffset"] = -2,
						},
						["customTexts"] = {
							["Absorbs"] = {
								["attachTextTo"] = "Health",
								["xOffset"] = -2,
								["text_format"] = "[absorbs:sl-short]",
								["yOffset"] = -6,
								["font"] = "PT Sans Narrow",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["enable"] = true,
								["size"] = 14,
							},
						},
						["healPrediction"] = {
							["absorbStyle"] = "NORMAL",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 220,
						["health"] = {
							["position"] = "TOPRIGHT",
							["yOffset"] = -2,
						},
						["name"] = {
							["position"] = "TOPRIGHT",
							["text_format"] = "[name] [level]",
							["yOffset"] = 14,
						},
						["castbar"] = {
							["xOffsetText"] = 0,
							["insideInfoPanel"] = false,
							["width"] = 250,
							["height"] = 24,
						},
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["priority"] = "Blacklist,blockNoDuration,Personal,PlayerBuffs,Whitelist,nonPersonal",
							["perrow"] = 7,
							["attachTo"] = "DEBUFFS",
						},
						["pvpIcon"] = {
							["anchorPoint"] = "RIGHT",
							["xOffset"] = 36,
							["enable"] = true,
						},
						["raidicon"] = {
							["attachTo"] = "BOTTOMLEFT",
							["yOffset"] = 0,
							["xOffset"] = -20,
							["size"] = 20,
						},
					},
					["party"] = {
						["enable"] = false,
					},
				},
				["statusbar"] = "Minimalist",
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.23529411764706,
						["g"] = 0.74901960784314,
						["b"] = 0.15294117647059,
					},
					["healthclass"] = true,
					["healPrediction"] = {
						["absorbs"] = {
							["a"] = 0.61000001430511,
							["r"] = 0.95686274509804,
							["b"] = 0.5921568627451,
						},
						["overabsorbs"] = {
							["a"] = 0.61073982715607,
							["b"] = 1,
						},
						["overhealabsorbs"] = {
							["a"] = 0.61000001430511,
						},
					},
					["colorhealthbyvalue"] = false,
					["castColor"] = {
						["r"] = 0.6078431372549,
						["g"] = 0.58823529411765,
						["b"] = 0.28235294117647,
					},
					["frameGlow"] = {
						["mainGlow"] = {
							["class"] = true,
						},
					},
					["transparentAurabars"] = true,
				},
				["smartRaidFilter"] = false,
				["fontOutline"] = "OUTLINE",
			},
			["datatexts"] = {
				["noCombatClick"] = true,
				["noCombatHover"] = true,
				["fontOutline"] = "OUTLINE",
				["panels"] = {
					["Darth_Panel_1"] = {
						"S&L Friends", -- [1]
						"S&L Currencies", -- [2]
						"Bags", -- [3]
						"System", -- [4]
						"Primary Stat", -- [5]
						"Versatility", -- [6]
						"Crit", -- [7]
						"Haste", -- [8]
						["enable"] = true,
					},
					["MinimapPanel"] = {
						"Time", -- [1]
						"Combat", -- [2]
						["panelTransparency"] = true,
					},
					["RightChatDataPanel"] = {
						"Mastery", -- [1]
						"S&L Item Level", -- [2]
						"Talent/Loot Specialization", -- [3]
						["panelTransparency"] = true,
					},
					["LeftChatDataPanel"] = {
						"S&L Time Played", -- [1]
						[3] = "S&L Guild",
						["panelTransparency"] = true,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 2,
					["visibility"] = "[petbattle] hide; show",
					["point"] = "TOPLEFT",
					["buttonSpacing"] = -1,
					["buttonSize"] = 38,
					["buttons"] = 12,
				},
				["desaturateOnCooldown"] = true,
				["fontOutline"] = "OUTLINE",
				["chargeCooldown"] = true,
				["font"] = "PT Sans Narrow",
				["useDrawSwipeOnCharges"] = true,
				["barPet"] = {
					["backdrop"] = false,
					["buttonsPerRow"] = 5,
					["point"] = "TOPLEFT",
					["buttonSpacing"] = -1,
					["buttonSize"] = 20,
				},
				["fontSize"] = 12,
				["bar1"] = {
					["buttonsPerRow"] = 3,
					["point"] = "TOPLEFT",
					["buttonSize"] = 44,
					["buttonSpacing"] = -1,
				},
				["microbar"] = {
					["buttons"] = 11,
				},
				["bar2"] = {
					["visibility"] = "[petbattle] hide; show",
				},
				["bar5"] = {
					["buttonsPerRow"] = 3,
					["visibility"] = "[petbattle] hide; show",
					["point"] = "TOPLEFT",
					["buttonSpacing"] = -1,
					["buttonSize"] = 36,
					["buttons"] = 12,
				},
				["transparent"] = true,
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 3,
					["visibility"] = "[petbattle] hide; show",
					["point"] = "TOPLEFT",
					["buttonSize"] = 36,
					["buttonSpacing"] = -1,
				},
				["stanceBar"] = {
					["buttonSize"] = 24,
					["style"] = "classic",
				},
				["bar4"] = {
					["buttonsPerRow"] = 2,
					["visibility"] = "[petbattle] hide; show",
					["point"] = "TOPLEFT",
					["buttonSpacing"] = -1,
					["buttonSize"] = 38,
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["statusbar"] = "Minimalist",
				["clickThrough"] = {
					["personal"] = true,
				},
				["threat"] = {
					["beingTankedByTank"] = false,
				},
				["units"] = {
					["TARGET"] = {
						["glowStyle"] = "style1",
					},
					["ENEMY_PLAYER"] = {
						["debuffs"] = {
							["yOffset"] = 5,
							["priority"] = "Blacklist,Personal,CCDebuffs",
							["size"] = 25,
							["numAuras"] = 6,
						},
						["raidTargetIndicator"] = {
							["size"] = 22,
						},
						["level"] = {
							["format"] = "[difficultycolor][level][shortclassification]",
						},
						["power"] = {
							["enable"] = true,
							["text"] = {
								["fontSize"] = 12,
								["enable"] = true,
								["yOffset"] = 10,
								["position"] = "BOTTOMLEFT",
							},
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 12,
							},
						},
						["castbar"] = {
							["sourceInterrupt"] = false,
							["hideTime"] = true,
							["iconSize"] = 24,
						},
						["buffs"] = {
							["yOffset"] = 35,
							["priority"] = "Blacklist,RaidBuffsElvUI,Dispellable,blockNoDuration,PlayerBuffs,TurtleBuffs,CastByUnit",
							["size"] = 25,
							["maxDuration"] = 0,
							["numAuras"] = 6,
						},
						["name"] = {
							["format"] = "[name]",
						},
						["title"] = {
							["format"] = "[npctitle]",
						},
					},
					["ENEMY_NPC"] = {
						["debuffs"] = {
							["yOffset"] = 5,
							["size"] = 25,
							["numAuras"] = 6,
						},
						["castbar"] = {
							["sourceInterrupt"] = false,
							["hideTime"] = true,
							["iconSize"] = 24,
						},
						["questIcon"] = {
							["yOffset"] = 20,
						},
						["raidTargetIndicator"] = {
							["size"] = 22,
						},
						["eliteIcon"] = {
							["position"] = "LEFT",
							["enable"] = true,
							["xOffset"] = 10,
							["yOffset"] = 16,
						},
						["health"] = {
							["text"] = {
								["fontSize"] = 12,
							},
						},
						["buffs"] = {
							["yOffset"] = 35,
							["size"] = 25,
							["numAuras"] = 6,
						},
						["name"] = {
							["format"] = "[name:long]",
						},
						["power"] = {
							["enable"] = true,
							["text"] = {
								["fontSize"] = 12,
								["enable"] = true,
								["yOffset"] = 10,
								["position"] = "BOTTOMLEFT",
							},
						},
					},
				},
				["clampToScreen"] = true,
				["visibility"] = {
					["enemy"] = {
						["totems"] = true,
						["pets"] = true,
					},
				},
				["fadeIn"] = false,
			},
			["bags"] = {
				["itemLevelFont"] = "Expressway",
				["currencyFormat"] = "ICON",
				["bagSize"] = 32,
				["junkIcon"] = true,
				["bankSize"] = 32,
				["moneyFormat"] = "BLIZZARD2",
				["countFontSize"] = 12,
				["scrapIcon"] = true,
				["itemLevelFontOutline"] = "OUTLINE",
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 474,
				["countFont"] = "Expressway",
				["clearSearchOnClose"] = true,
				["countFontOutline"] = "OUTLINE",
				["bankWidth"] = 474,
				["transparent"] = true,
				["vendorGrays"] = {
					["enable"] = true,
				},
			},
			["chat"] = {
				["tabFontOutline"] = "OUTLINE",
				["showHistory"] = {
					["EMOTE"] = false,
					["YELL"] = false,
					["SAY"] = false,
				},
				["fadeChatToggles"] = false,
				["panelWidth"] = 475,
				["emotionIcons"] = false,
				["panelHeight"] = 227,
				["timeStampFormat"] = "%H:%M:%S ",
				["fontOutline"] = "OUTLINE",
				["copyChatLines"] = true,
				["hideVoiceButtons"] = true,
			},
		},
	},
	["sle"] = {
		["TimePlayed"] = {
			["Magtheridon"] = {
				["Jiu"] = {
					["TotalTime"] = 18690120,
					["Level"] = 60,
					["LevelTime"] = 2044010,
					["Class"] = "HUNTER",
				},
				["Shibbun"] = {
					["TotalTime"] = 903513,
					["Level"] = 60,
					["LevelTime"] = 123618,
					["Class"] = "DRUID",
				},
			},
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["ElvUI_NonTarget"] = {
				},
				["ElvUI_Explosives"] = {
				},
				["ElvUI_Target"] = {
				},
				["ElvUI_Boss"] = {
				},
			},
		},
		["general"] = {
			["commandBarSetting"] = "DISABLED",
			["UIScale"] = 0.6,
			["fadeMapWhenMoving"] = false,
		},
		["datatexts"] = {
			["customPanels"] = {
				["Darth_Panel_1"] = {
					["panelTransparency"] = true,
					["textJustify"] = "CENTER",
					["border"] = true,
					["tooltipYOffset"] = 4,
					["numPoints"] = 8,
					["tooltipAnchor"] = "ANCHOR_TOPLEFT",
					["frameLevel"] = 1,
					["backdrop"] = true,
					["frameStrata"] = "LOW",
					["width"] = 1184,
					["fonts"] = {
						["enable"] = false,
						["font"] = "PT Sans Narrow",
						["fontSize"] = 12,
						["fontOutline"] = "OUTLINE",
					},
					["enable"] = true,
					["name"] = "Darth_Panel_1",
					["mouseover"] = false,
					["height"] = 24,
					["tooltipXOffset"] = -17,
					["visibility"] = "[petbattle] hide;show",
					["growth"] = "HORIZONTAL",
				},
			},
			["settings"] = {
				["Currencies"] = {
					["tooltipData"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						nil, -- [4]
						nil, -- [5]
						nil, -- [6]
						nil, -- [7]
						{
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						}, -- [8]
						[14] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[18] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[29] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[39] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[46] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[53] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[57] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[59] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
						[61] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							true, -- [4]
						},
					},
					["displayedCurrency"] = "GOLD",
				},
			},
		},
		["sle"] = {
			["advanced"] = {
				["optionsLimits"] = true,
			},
		},
	},
	["SLErrorDisabledAddOns"] = {
	},
	["faction"] = {
		["Magtheridon"] = {
			["Jiu"] = "Alliance",
			["Shibbun"] = "Alliance",
		},
	},
	["LuaErrorDisabledAddOns"] = {
	},
	["gold"] = {
		["Magtheridon"] = {
			["Jiu"] = 154453068,
			["Shibbun"] = 455254982,
		},
	},
	["serverID"] = {
		[3681] = {
			["Magtheridon"] = true,
		},
	},
	["SLEMinimize"] = {
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Shibbun - Magtheridon"] = "Shibbun - Magtheridon",
		["Jiu - Magtheridon"] = "Jiu - Magtheridon",
	},
	["profiles"] = {
		["Shibbun - Magtheridon"] = {
			["sle"] = {
				["characterGoldsSorting"] = {
					["Magtheridon"] = {
					},
				},
				["install_complete"] = "4.20",
			},
			["install_complete"] = 12.24,
		},
		["Jiu - Magtheridon"] = {
			["sle"] = {
				["module"] = {
					["blizzmove"] = {
						["points"] = {
							["InspectFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["AddonList"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								0, -- [4]
								24, -- [5]
							},
							["CommunitiesFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["GameMenuFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								0, -- [4]
								0, -- [5]
							},
							["CharacterFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								22.22223281860352, -- [4]
								-128.4444122314453, -- [5]
							},
							["StaticPopup3"] = {
								"TOP", -- [1]
								"UIParent", -- [2]
								"TOP", -- [3]
								0, -- [4]
								-99.55555725097656, -- [5]
							},
							["CollectionsJournal"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["AchievementFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								96, -- [4]
								-115.9999923706055, -- [5]
							},
							["FriendsFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["BankFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								0, -- [4]
								0, -- [5]
							},
							["MerchantFrame"] = {
								"LEFT", -- [1]
								"UIParent", -- [2]
								"LEFT", -- [3]
								595.5555419921875, -- [4]
								11.33340358734131, -- [5]
							},
							["WorldMapFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								-55.99978256225586, -- [4]
								23.66676902770996, -- [5]
							},
							["AuctionHouseFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								36.00000381469727, -- [4]
								-115.9999923706055, -- [5]
							},
							["TimeManagerFrame"] = {
								"TOPRIGHT", -- [1]
								"UIParent", -- [2]
								"TOPRIGHT", -- [3]
								-10.00000095367432, -- [4]
								-190, -- [5]
							},
							["RaidInfoFrame"] = {
								"TOPLEFT", -- [1]
								"RaidFrame", -- [2]
								"TOPRIGHT", -- [3]
								0, -- [4]
								-28.00000190734863, -- [5]
							},
							["PlayerTalentFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["ClassTrainerFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["SpellBookFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-115.9999923706055, -- [5]
							},
							["ReadyCheckFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								0, -- [4]
								-10.00000095367432, -- [5]
							},
							["PVEFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								-50.05622100830078, -- [4]
								42.44447326660156, -- [5]
							},
							["StaticPopup1"] = {
								"TOP", -- [1]
								"UIParent", -- [2]
								"TOP", -- [3]
								0, -- [4]
								-99.55555725097656, -- [5]
							},
							["GarrisonLandingPage"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-107, -- [5]
							},
							["CovenantMissionFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								0, -- [4]
								0, -- [5]
							},
							["CalendarFrame"] = {
								"TOPLEFT", -- [1]
								"UIParent", -- [2]
								"TOPLEFT", -- [3]
								16, -- [4]
								-96, -- [5]
							},
							["InterfaceOptionsFrame"] = {
								"CENTER", -- [1]
								"UIParent", -- [2]
								"CENTER", -- [3]
								0, -- [4]
								0, -- [5]
							},
						},
						["remember"] = true,
					},
					["screensaver"] = true,
				},
				["characterGoldsSorting"] = {
					["Magtheridon"] = {
					},
				},
				["professions"] = {
					["enchant"] = {
						["enchScroll"] = true,
					},
				},
				["install_complete"] = "4.20",
				["skins"] = {
					["objectiveTracker"] = {
						["scenarioBG"] = true,
						["color"] = {
							["r"] = 0.23529411764706,
							["g"] = 0.74901960784314,
							["b"] = 0.15294117647059,
						},
					},
					["merchant"] = {
						["enable"] = true,
						["style"] = "List",
					},
				},
				["pvp"] = {
					["KBbanner"] = {
						["enable"] = true,
					},
				},
				["uibuttons"] = {
					["style"] = "dropdown",
				},
			},
			["general"] = {
				["normTex"] = "Minimalist",
				["glossTex"] = "Minimalist",
			},
			["install_complete"] = 12.24,
		},
	},
}
