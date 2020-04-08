
; ctrl + alt + w 
^!w::

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

^!1::
	; Step left and act
	send {a down}
	Sleep 300
	send {a up}
	send {c down} ; act
	Sleep 250
	send {c up}
	Sleep 250

	; Step left and act
	send {a down}
	Sleep 300
	send {a up}
	send {c down} ; act
	Sleep 250
	send {c up}
	Sleep 250

	; Step left and act
	send {a down}
	Sleep 300
	send {a up}
	send {c down} ; act
	Sleep 250
	send {c up}
	Sleep 250
Return

^!2::
	; Step 10 to the left
	send {a down}
	Sleep 2000
	send {a up}
Return

^!3::
	; Step 3 to the right
	send {d down}
	Sleep 350
	send {d up}
Return

