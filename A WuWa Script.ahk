; A WuWa Script || PLEASE RUN AS ADMINISTRATOR!!!!

; Configuration


; Movement

Auto_Super_Jump := true ; Press and Hold "Space" to automatically perform a "Super Jump". (Requires Grappler & Some Stamina)

; Utility

Auto_Use_Skill := true ; Press and Hold "E" to automatically use Skills.
Auto_Use_Echo := true ; Press and Hold "Q" to automatically use Echoes.
Auto_Use_Liberation := true ; Press and Hold "R" to automatically use Resonance Liberations.
Auto_Swap_Characters := true ; Press and Hold 1-3 to automatically swap Characters.

; Convenience

RMB_Heavy_Attack := true ; Replaces the dash bind on Right Click to a Heavy Attack. (Can be held)
Auto_Use_Gadget := true ; Press and Hold "T" to automatically use your equipped gadget.
Auto_Press_F := true ; Press and Hold "F" to repeatedly spam F. This can be used to immediately collect things and skip through unskippable dialogue.
Auto_Fast_Travel := true ; Press the "Forwawrd Button" on the side of your mouse while hovering over a Waypoint to automatically Fast Travel to it. DOES NOT WORK ON CUSTOM WAYPOINTS.
Auto_Attack := true ; Press and Hold the "Forward" button on the side of your mouse to automatically attack rapidly. It's effectively an autoclicker.

; Niche (You can only have one active at a time and no, I'm not changing this.)

Chixia_Rapid_Fire := true ; Press and Hold the "Back" key on the side of your mouse, if you have one, to do the funny machine gun with Chixia.

; Ignore!!!

SetBatchLines, -1
SetKeyDelay, -1, -1





; Auto Super Jump
*$Space::
	Send, {LShift up}{Space}
	if WinActive("Wuthering Waves") && Auto_Super_Jump {
		Sleep, 333
		if GetKeyState("Space","P") {
			Send, {LButton}
			Sleep, 333
			if GetKeyState("Space","P") {
				Send, {LShift}
				Sleep, 333
				if GetKeyState("Space","P") {
					Send, {LButton}
					Sleep, 333
					if GetKeyState("Space","P") {
						SendInput, t
					}
				}
			}
		}
	}
Return





; Auto Use Skill
*~$e::
	if WinActive("Wuthering Waves") && Auto_Use_Skill {
		While GetKeyState("e","P") {
			Send, {e down}
			Sleep, 1
			Send, {e up}
		}
	}
Return





; Auto Use Liberation
*~$r::
	if WinActive("Wuthering Waves") && Auto_Use_Liberation {
		While GetKeyState("r","P") {
			Send, {r down}
			Sleep, 1
			Send, {r up}
		}
	}
Return






; Auto Pick Up, Unskippable Dialogue Skipper, etc. (Spam F)
*~$f::
	if WinActive("Wuthering Waves") && Auto_Press_F {
		While GetKeyState("f","P") {
			Send, {f down}
			Sleep, 1
			Send, {f up}
		}
	}
Return





; Auto Use Echo
*~$q::
	if WinActive("Wuthering Waves") && Auto_Use_Echo {
		While GetKeyState("q","P") {
			Send, {q down}
			Sleep, 1
			Send, {q up}
		}
	}
Return





; Auto Use Gadget
*~$t::
	if WinActive("Wuthering Waves") && Auto_Use_Gadget {
		While GetKeyState("t","P") {
			Send, {t down}
			Sleep, 1
			Send, {t up}
		}
	}
Return





; Auto Swap Characters
*~$1::
	if WinActive("Wuthering Waves") && Auto_Swap_Characters {
		While GetKeyState("1","P") {
			Send, {1 down}
			Sleep, 1
			Send, {1 up}
		}
	}
Return

*~$2::
	if WinActive("Wuthering Waves") && Auto_Swap_Characters {
		While GetKeyState("2","P") {
			Send, {2 down}
			Sleep, 1
			Send, {2 up}
		}
	}
Return

*~$3::
	if WinActive("Wuthering Waves") && Auto_Swap_Characters {
		While GetKeyState("3","P") {
			Send, {3 down}
			Sleep, 1
			Send, {3 up}
		}
	}
Return

*~$4::
	if WinActive("Wuthering Waves") && Auto_Swap_Characters {
		While GetKeyState("4","P") {
			Send, {4 down}
			Sleep, 1
			Send, {4 up}
		}
	}
Return





; Auto Attack & Fast Travel

Check:
	if WinActive("Wuthering Waves") && Auto_Fast_Travel {
		Send, {LButton}
		Sleep, 550
		PixelGetColor, TRAVEL, 1520, 1000
		if (TRAVEL == 0x010101) {
			Click, 1520, 1000
		}
	}
return

*~$XButton2::
	SetTimer, Check, -1
    While GetKeyState("XButton2", "P") {
		if Auto_Attack {
    		Send, {LButton}
		}
        Sleep, 1
    }
Return





; Heavy Attack Rebind to Right Click
*$RButton::
	if WinActive("Wuthering Waves") && RMB_Heavy_Attack {
		Send, {LButton down}
		Sleep, 333
		if GetKeyState("RButton","P") {
			Sleep, 777
			Send, {LButton up}
		}else{
			Send, {LButton up}
		}
	}else{
		Send, {RButton}
	}
Return





; Niche Chixia Rapid Fire
*~$XButton1::
	if WinActive("Wuthering Waves") && Chixia_Rapid_Fire {
		While GetKeyState("XButton1","P") {
			Send, g
			Sleep, 1
			Send, {LButton}
			Sleep, 1
			Send, g
			Sleep, 22
		}
		Send, {LShift}
	}
return
