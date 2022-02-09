
ConsolePortSettings = {
	["unitHotkeyPool"] = "player$;party%d$;raid%d+$",
	["raidCursorDirect"] = false,
	["CP_M2"] = "CP_TR2",
	["CP_M1"] = "CP_TL2",
	["CP_T4"] = "CP_R_GRIP",
	["CP_T1"] = "CP_TL1",
	["CP_T3"] = "CP_L_GRIP",
	["autoSellJunk"] = true,
	["type"] = "STEAM",
	["CP_T2"] = "CP_TR1",
	["autoExtra"] = true,
}
ConsolePortDevices = {
	["PlayStation 4"] = {
		["Config"] = {
			["rawAxisMappings"] = {
				{
					["rawIndex"] = 0,
					["axis"] = "LStickX",
				}, -- [1]
				{
					["rawIndex"] = 1,
					["axis"] = "LStickY",
				}, -- [2]
				{
					["rawIndex"] = 2,
					["axis"] = "RStickX",
				}, -- [3]
				{
					["rawIndex"] = 3,
					["axis"] = "LTrigger",
				}, -- [4]
				{
					["rawIndex"] = 4,
					["axis"] = "RTrigger",
				}, -- [5]
				{
					["rawIndex"] = 5,
					["axis"] = "RStickY",
				}, -- [6]
			},
			["axisConfigs"] = {
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickRight",
					["scale"] = -2,
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickLeft",
					["axis"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickUp",
					["scale"] = -2,
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickDown",
					["axis"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickLeft",
					["axis"] = "RStickX",
				}, -- [3]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickDown",
					["axis"] = "RStickY",
				}, -- [4]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickX",
				}, -- [5]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickY",
				}, -- [6]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "LTrigger",
					["axis"] = "LTrigger",
				}, -- [7]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "RTrigger",
					["axis"] = "RTrigger",
				}, -- [8]
			},
			["name"] = "PlayStation 4",
			["stickConfigs"] = {
				{
					["deadzone"] = 0.25,
					["stick"] = "Left",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.25,
					["stick"] = "Right",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.25,
					["stick"] = "Gyro",
					["axisX"] = "GStickX",
					["axisY"] = "GStickY",
				}, -- [3]
				{
					["deadzone"] = 0.25,
					["stick"] = "Movement",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [4]
				{
					["deadzone"] = 0.25,
					["stick"] = "Camera",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [5]
				{
					["deadzone"] = 0.25,
					["stick"] = "Cursor",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [6]
			},
			["configID"] = {
				["vendorID"] = 1356,
			},
			["rawButtonMappings"] = {
				{
					["rawIndex"] = 0,
					["comment"] = "Square",
					["button"] = "Face3",
				}, -- [1]
				{
					["rawIndex"] = 1,
					["comment"] = "Cross",
					["button"] = "Face1",
				}, -- [2]
				{
					["rawIndex"] = 2,
					["comment"] = "Circle",
					["button"] = "Face2",
				}, -- [3]
				{
					["rawIndex"] = 3,
					["comment"] = "Triangle",
					["button"] = "Face4",
				}, -- [4]
				{
					["rawIndex"] = 4,
					["comment"] = "L1",
					["button"] = "LShoulder",
				}, -- [5]
				{
					["rawIndex"] = 5,
					["comment"] = "R2",
					["button"] = "RShoulder",
				}, -- [6]
				{
					["rawIndex"] = 6,
					["comment"] = "immediate L2 (disabled so we can control trigger point)",
					["button"] = "None",
				}, -- [7]
				{
					["rawIndex"] = 7,
					["comment"] = "immediate R2 (disabled so we can control trigger point)",
					["button"] = "None",
				}, -- [8]
				{
					["rawIndex"] = 8,
					["comment"] = "Share",
					["button"] = "Social",
				}, -- [9]
				{
					["rawIndex"] = 9,
					["comment"] = "Options",
					["button"] = "Forward",
				}, -- [10]
				{
					["rawIndex"] = 10,
					["button"] = "LStickIn",
				}, -- [11]
				{
					["rawIndex"] = 11,
					["button"] = "RStickIn",
				}, -- [12]
				{
					["rawIndex"] = 12,
					["comment"] = "PS button",
					["button"] = "System",
				}, -- [13]
				{
					["rawIndex"] = 13,
					["comment"] = "Touchpad",
					["button"] = "Back",
				}, -- [14]
				{
					["rawIndex"] = 14,
					["comment"] = "D-Pad Up",
					["button"] = "Up",
				}, -- [15]
				{
					["rawIndex"] = 15,
					["comment"] = "D-Pad Right",
					["button"] = "Right",
				}, -- [16]
				{
					["rawIndex"] = 16,
					["comment"] = "D-Pad Down",
					["button"] = "Down",
				}, -- [17]
				{
					["rawIndex"] = 17,
					["comment"] = "D-Pad Left",
					["button"] = "Left",
				}, -- [18]
			},
		},
		["Name"] = "PlayStation 4",
		["Version"] = 2,
		["Preset"] = {
			["Variables"] = {
				["GamePadAbbreviatedBindingReverse"] = 0,
				["GamePadEmulateAlt"] = "none",
				["GamePadEmulateCtrl"] = "PADLTRIGGER",
				["GamePadCursorRightClick"] = "PADRSTICK",
				["GamePadEmulateShift"] = "PADLSHOULDER",
				["GamePadCursorLeftClick"] = "PADLSTICK",
				["GamePadEmulateEsc"] = "none",
			},
			["Bindings"] = {
				["PADLSTICK"] = {
					[""] = "CAMERAORSELECTORMOVE",
				},
				["PADRSTICK"] = {
					[""] = "TURNORACTION",
				},
				["PADDUP"] = {
					[""] = "MULTIACTIONBAR1BUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON2",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON6",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON10",
				},
				["PAD1"] = {
					[""] = "JUMP",
					["SHIFT-"] = "ACTIONBUTTON9",
					["CTRL-"] = "EXTRAACTIONBUTTON1",
					["CTRL-SHIFT-"] = "CLICK ConsolePortUtilityToggle:LeftButton",
				},
				["PADRSHOULDER"] = {
					[""] = "ACTIONBUTTON4",
					["SHIFT-"] = "TARGETSCANENEMY",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON4",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON9",
				},
				["PAD2"] = {
					[""] = "ACTIONBUTTON3",
					["SHIFT-"] = "ACTIONBUTTON8",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON3",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON8",
				},
				["PAD3"] = {
					[""] = "ACTIONBUTTON1",
					["SHIFT-"] = "ACTIONBUTTON6",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON1",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON6",
				},
				["PADDDOWN"] = {
					[""] = "ACTIONBUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON4",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON8",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON12",
				},
				["PADFORWARD"] = {
					[""] = "TOGGLEWORLDMAP",
					["SHIFT-"] = "CAMERAZOOMOUT",
					["CTRL-"] = "CAMERAZOOMIN",
				},
				["PAD4"] = {
					[""] = "ACTIONBUTTON2",
					["SHIFT-"] = "ACTIONBUTTON7",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON2",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON7",
				},
				["PADSOCIAL"] = {
					[""] = "OPENALLBAGS",
					["SHIFT-"] = "TOGGLECHARACTER0",
					["CTRL-"] = "TOGGLESPELLBOOK",
					["CTRL-SHIFT-"] = "TOGGLETALENTS",
				},
				["PADDRIGHT"] = {
					[""] = "ACTIONBUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON3",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON7",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON11",
				},
				["PADDLEFT"] = {
					[""] = "MULTIACTIONBAR1BUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON1",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON9",
				},
				["PADSYSTEM"] = {
					[""] = "TOGGLEGAMEMENU",
					["SHIFT-"] = "CLICK ConsolePortRaidCursorToggle:LeftButton",
					["CTRL-"] = "TOGGLEAUTORUN",
					["CTRL-SHIFT-"] = "OPENCHAT",
				},
				["PADRTRIGGER"] = {
					[""] = "ACTIONBUTTON5",
					["SHIFT-"] = "ACTIONBUTTON10",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON10",
				},
			},
		},
		["Icons"] = {
		},
		["Theme"] = {
			["Colors"] = {
				["PAD1"] = "6882A1",
				["PAD3"] = "D35280",
				["PAD4"] = "62BBB2",
				["PAD2"] = "D84E58",
			},
			["Layout"] = {
				["PADRTRIGGER"] = 34,
				["PADLTRIGGER"] = 18,
				["PADDDOWN"] = 21,
				["PAD4"] = 35,
				["PADSOCIAL"] = 23,
				["PADDRIGHT"] = 22,
				["PADDLEFT"] = 20,
				["PADSYSTEM"] = 50,
				["PADBACK"] = 65,
				["PADLSTICK"] = 24,
				["PADRSTICK"] = 40,
				["PADDUP"] = 19,
				["PAD1"] = 37,
				["PADFORWARD"] = 39,
				["PADRSHOULDER"] = 33,
				["PADLSHOULDER"] = 17,
				["PAD2"] = 36,
				["PAD3"] = 38,
			},
			["Icons"] = {
				["PADRTRIGGER"] = "PlayStation/R2",
				["PADLTRIGGER"] = "PlayStation/L2",
				["PADDDOWN"] = "All/Down",
				["PAD4"] = "PlayStation/Triangle",
				["PAD2"] = "PlayStation/Circle",
				["PADDRIGHT"] = "All/Right",
				["PADDLEFT"] = "All/Left",
				["PADSYSTEM"] = "PlayStation/System",
				["PADBACK"] = "PlayStation/Back",
				["PADLSTICK"] = "PlayStation/L3",
				["PADRSTICK"] = "PlayStation/R3",
				["PADDUP"] = "All/Up",
				["PAD1"] = "PlayStation/Cross",
				["PADFORWARD"] = "PlayStation/Options",
				["PADRSHOULDER"] = "PlayStation/R1",
				["PADLSHOULDER"] = "PlayStation/L1",
				["PAD3"] = "PlayStation/Square",
				["PADSOCIAL"] = "PlayStation/Share",
			},
			["Label"] = "SHP",
		},
	},
	["Default"] = {
		["Config"] = {
			["stickConfigs"] = {
				{
					["deadzone"] = 0.25,
					["stick"] = "Left",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.25,
					["stick"] = "Right",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.25,
					["stick"] = "Gyro",
					["axisX"] = "GStickX",
					["axisY"] = "GStickY",
				}, -- [3]
				{
					["deadzone"] = 0.25,
					["stick"] = "Movement",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [4]
				{
					["deadzone"] = 0.25,
					["stick"] = "Camera",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [5]
				{
					["deadzone"] = 0.25,
					["stick"] = "Cursor",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [6]
			},
			["axisConfigs"] = {
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickLeft",
					["axis"] = "LStickX",
				}, -- [1]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickDown",
					["axis"] = "LStickY",
				}, -- [2]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickLeft",
					["axis"] = "RStickX",
				}, -- [3]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickDown",
					["axis"] = "RStickY",
				}, -- [4]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickX",
				}, -- [5]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickY",
				}, -- [6]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "LTrigger",
					["axis"] = "LTrigger",
				}, -- [7]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "RTrigger",
					["axis"] = "RTrigger",
				}, -- [8]
			},
		},
		["Name"] = "Default",
		["Icons"] = {
		},
	},
	["PlayStation 5"] = {
		["Config"] = {
			["rawAxisMappings"] = {
				{
					["rawIndex"] = 0,
					["axis"] = "LStickX",
				}, -- [1]
				{
					["rawIndex"] = 1,
					["axis"] = "LStickY",
				}, -- [2]
				{
					["rawIndex"] = 2,
					["axis"] = "RStickX",
				}, -- [3]
				{
					["rawIndex"] = 3,
					["axis"] = "LTrigger",
				}, -- [4]
				{
					["rawIndex"] = 4,
					["axis"] = "RTrigger",
				}, -- [5]
				{
					["rawIndex"] = 5,
					["axis"] = "RStickY",
				}, -- [6]
			},
			["axisConfigs"] = {
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickRight",
					["scale"] = -2,
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickLeft",
					["axis"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickUp",
					["scale"] = -2,
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickDown",
					["axis"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickLeft",
					["axis"] = "RStickX",
				}, -- [3]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickDown",
					["axis"] = "RStickY",
				}, -- [4]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickX",
				}, -- [5]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickY",
				}, -- [6]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "LTrigger",
					["axis"] = "LTrigger",
				}, -- [7]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "RTrigger",
					["axis"] = "RTrigger",
				}, -- [8]
			},
			["name"] = "PlayStation 5",
			["stickConfigs"] = {
				{
					["deadzone"] = 0.25,
					["stick"] = "Left",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.25,
					["stick"] = "Right",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.25,
					["stick"] = "Gyro",
					["axisX"] = "GStickX",
					["axisY"] = "GStickY",
				}, -- [3]
				{
					["deadzone"] = 0.25,
					["stick"] = "Movement",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [4]
				{
					["deadzone"] = 0.25,
					["stick"] = "Camera",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [5]
				{
					["deadzone"] = 0.25,
					["stick"] = "Cursor",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [6]
			},
			["configID"] = {
				["vendorID"] = 1356,
				["productID"] = 3302,
			},
			["rawButtonMappings"] = {
				{
					["rawIndex"] = 0,
					["comment"] = "Square",
					["button"] = "Face3",
				}, -- [1]
				{
					["rawIndex"] = 1,
					["comment"] = "Cross",
					["button"] = "Face1",
				}, -- [2]
				{
					["rawIndex"] = 2,
					["comment"] = "Circle",
					["button"] = "Face2",
				}, -- [3]
				{
					["rawIndex"] = 3,
					["comment"] = "Triangle",
					["button"] = "Face4",
				}, -- [4]
				{
					["rawIndex"] = 4,
					["comment"] = "L1",
					["button"] = "LShoulder",
				}, -- [5]
				{
					["rawIndex"] = 5,
					["comment"] = "R2",
					["button"] = "RShoulder",
				}, -- [6]
				{
					["rawIndex"] = 6,
					["comment"] = "immediate L2 (disabled so we can control trigger point)",
					["button"] = "None",
				}, -- [7]
				{
					["rawIndex"] = 7,
					["comment"] = "immediate R2 (disabled so we can control trigger point)",
					["button"] = "None",
				}, -- [8]
				{
					["rawIndex"] = 8,
					["comment"] = "Share",
					["button"] = "Social",
				}, -- [9]
				{
					["rawIndex"] = 9,
					["comment"] = "Options",
					["button"] = "Forward",
				}, -- [10]
				{
					["rawIndex"] = 10,
					["button"] = "LStickIn",
				}, -- [11]
				{
					["rawIndex"] = 11,
					["button"] = "RStickIn",
				}, -- [12]
				{
					["rawIndex"] = 12,
					["comment"] = "PS button",
					["button"] = "System",
				}, -- [13]
				{
					["rawIndex"] = 13,
					["comment"] = "Touchpad",
					["button"] = "Back",
				}, -- [14]
				{
					["rawIndex"] = 14,
					["button"] = "Face5",
					["bluetooth"] = false,
					["comment"] = "Mic button",
				}, -- [15]
				{
					["rawIndex"] = 14,
					["button"] = "Up",
					["bluetooth"] = true,
					["comment"] = "D-Pad Up",
				}, -- [16]
			},
		},
		["Name"] = "PlayStation 5",
		["Version"] = 2,
		["Preset"] = {
			["Variables"] = {
				["GamePadAbbreviatedBindingReverse"] = 0,
				["GamePadEmulateAlt"] = "none",
				["GamePadEmulateCtrl"] = "PADLTRIGGER",
				["GamePadCursorRightClick"] = "PADRSTICK",
				["GamePadEmulateShift"] = "PADLSHOULDER",
				["GamePadCursorLeftClick"] = "PADLSTICK",
				["GamePadEmulateEsc"] = "none",
			},
			["Bindings"] = {
				["PADLSTICK"] = {
					[""] = "CAMERAORSELECTORMOVE",
				},
				["PADRSTICK"] = {
					[""] = "TURNORACTION",
				},
				["PADDUP"] = {
					[""] = "MULTIACTIONBAR1BUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON2",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON6",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON10",
				},
				["PAD1"] = {
					[""] = "JUMP",
					["SHIFT-"] = "ACTIONBUTTON9",
					["CTRL-"] = "EXTRAACTIONBUTTON1",
					["CTRL-SHIFT-"] = "CLICK ConsolePortUtilityToggle:LeftButton",
				},
				["PADRSHOULDER"] = {
					[""] = "ACTIONBUTTON4",
					["SHIFT-"] = "TARGETSCANENEMY",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON4",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON9",
				},
				["PAD2"] = {
					[""] = "ACTIONBUTTON3",
					["SHIFT-"] = "ACTIONBUTTON8",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON3",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON8",
				},
				["PAD3"] = {
					[""] = "ACTIONBUTTON1",
					["SHIFT-"] = "ACTIONBUTTON6",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON1",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON6",
				},
				["PADDDOWN"] = {
					[""] = "ACTIONBUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON4",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON8",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON12",
				},
				["PADFORWARD"] = {
					[""] = "TOGGLEWORLDMAP",
					["SHIFT-"] = "CAMERAZOOMOUT",
					["CTRL-"] = "CAMERAZOOMIN",
				},
				["PAD4"] = {
					[""] = "ACTIONBUTTON2",
					["SHIFT-"] = "ACTIONBUTTON7",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON2",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON7",
				},
				["PADSOCIAL"] = {
					[""] = "OPENALLBAGS",
					["SHIFT-"] = "TOGGLECHARACTER0",
					["CTRL-"] = "TOGGLESPELLBOOK",
					["CTRL-SHIFT-"] = "TOGGLETALENTS",
				},
				["PADDRIGHT"] = {
					[""] = "ACTIONBUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON3",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON7",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON11",
				},
				["PADDLEFT"] = {
					[""] = "MULTIACTIONBAR1BUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON1",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON9",
				},
				["PADSYSTEM"] = {
					[""] = "TOGGLEGAMEMENU",
					["SHIFT-"] = "CLICK ConsolePortRaidCursorToggle:LeftButton",
					["CTRL-"] = "TOGGLEAUTORUN",
					["CTRL-SHIFT-"] = "OPENCHAT",
				},
				["PADRTRIGGER"] = {
					[""] = "ACTIONBUTTON5",
					["SHIFT-"] = "ACTIONBUTTON10",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON10",
				},
			},
		},
		["Icons"] = {
		},
		["Theme"] = {
			["Colors"] = {
				["PAD1"] = "6882A1",
				["PAD3"] = "D35280",
				["PAD4"] = "62BBB2",
				["PAD2"] = "D84E58",
			},
			["Layout"] = {
				["PADRTRIGGER"] = 34,
				["PADLTRIGGER"] = 18,
				["PADDDOWN"] = 21,
				["PAD4"] = 35,
				["PADSOCIAL"] = 23,
				["PADDRIGHT"] = 22,
				["PADDLEFT"] = 20,
				["PADSYSTEM"] = 49,
				["PADBACK"] = 65,
				["PADLSTICK"] = 24,
				["PADRSTICK"] = 40,
				["PADDUP"] = 19,
				["PAD5"] = 51,
				["PAD1"] = 37,
				["PADFORWARD"] = 39,
				["PADRSHOULDER"] = 33,
				["PADLSHOULDER"] = 17,
				["PAD2"] = 36,
				["PAD3"] = 38,
			},
			["Icons"] = {
				["PADRTRIGGER"] = "PlayStation/R2",
				["PADLTRIGGER"] = "PlayStation/L2",
				["PADDDOWN"] = "All/Down",
				["PAD4"] = "PlayStation/Triangle",
				["PAD2"] = "PlayStation/Circle",
				["PADDRIGHT"] = "All/Right",
				["PADDLEFT"] = "All/Left",
				["PADSYSTEM"] = "PlayStation/System",
				["PADBACK"] = "PlayStation/Back",
				["PADLSTICK"] = "PlayStation/L3",
				["PADRSTICK"] = "PlayStation/R3",
				["PADDUP"] = "All/Up",
				["PAD5"] = "Xbox/Options",
				["PAD1"] = "PlayStation/Cross",
				["PADFORWARD"] = "PlayStation/Options",
				["PADRSHOULDER"] = "PlayStation/R1",
				["PADLSHOULDER"] = "PlayStation/L1",
				["PAD3"] = "PlayStation/Square",
				["PADSOCIAL"] = "PlayStation/Share",
			},
			["Label"] = "SHP",
		},
	},
	["Xbox"] = {
		["Config"] = {
			["name"] = "Xbox",
			["axisConfigs"] = {
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickLeft",
					["axis"] = "LStickX",
				}, -- [1]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "LStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "LStickDown",
					["axis"] = "LStickY",
				}, -- [2]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickRight",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickLeft",
					["axis"] = "RStickX",
				}, -- [3]
				{
					["deadzone"] = 0.05,
					["buttonPos"] = "RStickUp",
					["buttonThreshold"] = 0.5,
					["buttonNeg"] = "RStickDown",
					["axis"] = "RStickY",
				}, -- [4]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickX",
				}, -- [5]
				{
					["deadzone"] = 0.05,
					["axis"] = "GStickY",
				}, -- [6]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "LTrigger",
					["axis"] = "LTrigger",
				}, -- [7]
				{
					["deadzone"] = 0.12,
					["buttonThreshold"] = 0.5,
					["buttonPos"] = "RTrigger",
					["axis"] = "RTrigger",
				}, -- [8]
			},
			["configID"] = {
				["vendorID"] = 1118,
			},
			["stickConfigs"] = {
				{
					["deadzone"] = 0.25,
					["stick"] = "Left",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [1]
				{
					["deadzone"] = 0.25,
					["stick"] = "Right",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [2]
				{
					["deadzone"] = 0.25,
					["stick"] = "Gyro",
					["axisX"] = "GStickX",
					["axisY"] = "GStickY",
				}, -- [3]
				{
					["deadzone"] = 0.25,
					["stick"] = "Movement",
					["axisX"] = "LStickX",
					["axisY"] = "LStickY",
				}, -- [4]
				{
					["deadzone"] = 0.25,
					["stick"] = "Camera",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [5]
				{
					["deadzone"] = 0.25,
					["stick"] = "Cursor",
					["axisX"] = "RStickX",
					["axisY"] = "RStickY",
				}, -- [6]
			},
		},
		["Name"] = "Xbox",
		["Version"] = 2,
		["Preset"] = {
			["Variables"] = {
				["GamePadAbbreviatedBindingReverse"] = 0,
				["GamePadEmulateAlt"] = "none",
				["GamePadEmulateCtrl"] = "PADRTRIGGER",
				["GamePadCursorRightClick"] = "PADRSTICK",
				["GamePadEmulateShift"] = "PADLTRIGGER",
				["GamePadCursorLeftClick"] = "PADLSTICK",
				["GamePadEmulateEsc"] = "none",
			},
			["Bindings"] = {
				["PADLSTICK"] = {
					[""] = "CAMERAORSELECTORMOVE",
				},
				["PADRSTICK"] = {
					[""] = "TURNORACTION",
				},
				["PADDUP"] = {
					[""] = "MULTIACTIONBAR1BUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON2",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON6",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON10",
				},
				["PAD1"] = {
					[""] = "JUMP",
					["SHIFT-"] = "ACTIONBUTTON9",
					["CTRL-"] = "EXTRAACTIONBUTTON1",
					["CTRL-SHIFT-"] = "CLICK ConsolePortUtilityToggle:LeftButton",
				},
				["PAD2"] = {
					[""] = "ACTIONBUTTON3",
					["SHIFT-"] = "ACTIONBUTTON8",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON3",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON8",
				},
				["PADRSHOULDER"] = {
					[""] = "ACTIONBUTTON4",
					["SHIFT-"] = "TARGETSCANENEMY",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON4",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON9",
				},
				["PADDDOWN"] = {
					[""] = "ACTIONBUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON4",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON8",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON12",
				},
				["PADFORWARD"] = {
					[""] = "TOGGLEGAMEMENU",
					["SHIFT-"] = "CLICK ConsolePortRaidCursorToggle:LeftButton",
					["CTRL-"] = "CAMERAZOOMOUT",
					["CTRL-SHIFT-"] = "CAMERAZOOMIN",
				},
				["PAD4"] = {
					[""] = "ACTIONBUTTON2",
					["SHIFT-"] = "ACTIONBUTTON7",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON2",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON7",
				},
				["PADLSHOULDER"] = {
					[""] = "ACTIONBUTTON5",
					["SHIFT-"] = "ACTIONBUTTON10",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON10",
				},
				["PADDRIGHT"] = {
					[""] = "ACTIONBUTTON12",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON3",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON7",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON11",
				},
				["PADDLEFT"] = {
					[""] = "MULTIACTIONBAR1BUTTON11",
					["SHIFT-"] = "MULTIACTIONBAR2BUTTON1",
					["CTRL-"] = "MULTIACTIONBAR2BUTTON5",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON9",
				},
				["PAD3"] = {
					[""] = "ACTIONBUTTON1",
					["SHIFT-"] = "ACTIONBUTTON6",
					["CTRL-"] = "MULTIACTIONBAR1BUTTON1",
					["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON6",
				},
				["PADBACK"] = {
					["CTRL-"] = "TOGGLEWORLDMAP",
					["SHIFT-"] = "OPENALLBAGS",
					["CTRL-SHIFT-"] = "TOGGLEAUTORUN",
				},
			},
		},
		["Icons"] = {
		},
		["Theme"] = {
			["Colors"] = {
				["PADDRIGHT"] = "FA4451",
				["PADDLEFT"] = "00A2FF",
				["PADDUP"] = "FFE74F",
				["PADDDOWN"] = "52C14E",
			},
			["Layout"] = {
				["PADRTRIGGER"] = 33,
				["PADLTRIGGER"] = 17,
				["PADDDOWN"] = 22,
				["PAD4"] = 35,
				["PAD2"] = 36,
				["PADDRIGHT"] = 23,
				["PADDLEFT"] = 21,
				["PADSYSTEM"] = 50,
				["PADBACK"] = 24,
				["PADLSTICK"] = 19,
				["PADRSTICK"] = 39,
				["PADDUP"] = 20,
				["PAD1"] = 37,
				["PADFORWARD"] = 40,
				["PADRSHOULDER"] = 34,
				["PADLSHOULDER"] = 18,
				["PAD3"] = 38,
			},
			["Icons"] = {
				["PADPADDLE1"] = "PlayStation/L1",
				["PADRTRIGGER"] = "Xbox/RT",
				["PADLTRIGGER"] = "Xbox/LT",
				["PADDDOWN"] = "All/Down",
				["PAD4"] = "Xbox/Y",
				["PAD2"] = "Xbox/B",
				["PADDRIGHT"] = "All/Right",
				["PADDLEFT"] = "All/Left",
				["PADSYSTEM"] = "Xbox/System",
				["PADBACK"] = "Xbox/Back",
				["PADLSTICK"] = "Xbox/LSB",
				["PADRSTICK"] = "Xbox/RSB",
				["PADDUP"] = "All/Up",
				["PAD1"] = "Xbox/A",
				["PADPADDLE2"] = "PlayStation/L2",
				["PADPADDLE4"] = "PlayStation/R2",
				["PADRSHOULDER"] = "Xbox/RB",
				["PADLSHOULDER"] = "Xbox/LB",
				["PAD3"] = "Xbox/X",
				["PADPADDLE3"] = "PlayStation/R1",
				["PADFORWARD"] = "Xbox/Forward",
				["PADSOCIAL"] = "Xbox/Share",
			},
			["Label"] = "LTR",
		},
	},
}
ConsolePortUIStack = {
	["ConsolePort"] = {
		["ContainerFrame4"] = true,
		["ContainerFrame1"] = true,
		["ContainerFrame6"] = true,
		["ContainerFrame13"] = true,
		["ContainerFrame8"] = true,
		["ContainerFrame2"] = true,
		["CovenantPreviewFrame"] = true,
		["OpenMailFrame"] = true,
		["StaticPopup3"] = true,
		["ContainerFrame9"] = true,
		["ContainerFrame12"] = true,
		["CinematicFrame"] = true,
		["AddonList"] = true,
		["ContainerFrame11"] = true,
		["StaticPopup1"] = true,
		["ContainerFrame3"] = true,
		["ContainerFrame10"] = true,
		["LFGDungeonReadyPopup"] = true,
		["ContainerFrame5"] = true,
		["StaticPopup4"] = true,
		["PetBattleFrame"] = true,
		["StaticPopup2"] = true,
		["StackSplitFrame"] = true,
		["ContainerFrame7"] = true,
		["GameMenuFrame"] = true,
		["InterfaceOptionsFrame"] = true,
	},
}
ConsolePortShared = {
	["Jiu (Beast Mastery) Magtheridon"] = {
		["Meta"] = {
			["Spec"] = 253,
			["Class"] = "HUNTER",
			["Name"] = "Jiu",
			["Icon"] = 461112,
		},
		["Bindings"] = {
			["PADRSTICK"] = {
				["CTRL-"] = "CAMERAZOOMOUT",
				["SHIFT-"] = "CAMERAZOOMIN",
				[""] = "CENTERCAMERA",
			},
			["PADDUP"] = {
				["CTRL-"] = "MULTIACTIONBAR2BUTTON7",
				["SHIFT-"] = "TARGETNEARESTFRIEND",
				[""] = "TARGETNEARESTENEMY",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON1",
			},
			["PADRTRIGGER"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON11",
				["SHIFT-"] = "ACTIONBUTTON12",
				[""] = "ACTIONBUTTON11",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON12",
			},
			["PADDLEFT"] = {
				["CTRL-"] = "MULTIACTIONBAR2BUTTON9",
				["SHIFT-"] = "FOCUSTARGET",
				[""] = "TARGETFOCUS",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON3",
			},
			["PADDDOWN"] = {
				["CTRL-"] = "MULTIACTIONBAR2BUTTON8",
				["SHIFT-"] = "TARGETPREVIOUSFRIEND",
				[""] = "TARGETPREVIOUSENEMY",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON2",
			},
			["PADFORWARD"] = {
				["CTRL-"] = "TOGGLECHARACTER0",
				["SHIFT-"] = "OPENALLBAGS",
				[""] = "TOGGLEWORLDMAP",
			},
			["PAD4"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON7",
				["SHIFT-"] = "ACTIONBUTTON8",
				[""] = "ACTIONBUTTON7",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON8",
			},
			["PAD2"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON3",
				["SHIFT-"] = "ACTIONBUTTON4",
				[""] = "ACTIONBUTTON3",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON4",
			},
			["PADDRIGHT"] = {
				["CTRL-"] = "MULTIACTIONBAR2BUTTON10",
				["SHIFT-"] = "ASSISTTARGET",
				[""] = "INTERACTTARGET",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR2BUTTON4",
			},
			["PAD3"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON5",
				["SHIFT-"] = "ACTIONBUTTON6",
				[""] = "ACTIONBUTTON5",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON6",
			},
			["PADRSHOULDER"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON9",
				["SHIFT-"] = "ACTIONBUTTON10",
				[""] = "ACTIONBUTTON9",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON10",
			},
			["PAD1"] = {
				["CTRL-"] = "MULTIACTIONBAR1BUTTON1",
				["SHIFT-"] = "ACTIONBUTTON2",
				[""] = "JUMP",
				["CTRL-SHIFT-"] = "MULTIACTIONBAR1BUTTON2",
			},
		},
	},
}
