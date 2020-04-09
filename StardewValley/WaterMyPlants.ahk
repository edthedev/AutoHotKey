


; Pressing pause will stop it
^!q::
	BreakLoop = 1
Pause::
	BreakLoop = 1
return


; ctrl + alt + w 
^!9::

	MouseGetPos, xpos, ypos  ;Save initial position of mouse

	BlockSize := 60

	ClickX := xpos 
	clickY := ypos 


	; Row Above Me
	clickY := ypos - BlockSize
	ClickX := xpos - BlockSize
	MouseMove %ClickX%, %ClickY%
	Click
	Sleep 1200

	clickY := ypos - BlockSize
	ClickX := xpos 
	MouseMove %ClickX%, %ClickY%
	Click
	Sleep 1200

	clickY := ypos - BlockSize
	ClickX := xpos + BlockSize
	MouseMove %ClickX%, %ClickY%
	Click
	Sleep 1200

	MouseMove %xpos%, %ypos% ; Return

Return

; Water looking up.

^!e::
	BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		; Step left, look up and act
		Sleep 250
		send {a down}
		Sleep 350
		send {a up}

		send {w down}
		Sleep 100
		send {w up}

		send {c down} ; act
		Sleep 250
		send {c up}

	}
Return


; Watering
^!w::
	BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		send {c down} ; act
		Sleep 250
		send {c up}
		Sleep 250
	}

Return


^!f::
	send {c down} ; act
	Sleep 1030 ; MAX! Fishing cast
	send {c up}
Return


^!v::
	send {c down} ; act
Return

^!c::
	send {c up} ; act
Return

^!3::
	; Step 3 to the right
	send {d down}
	Sleep 350
	send {d up}
Return

