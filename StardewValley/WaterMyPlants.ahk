
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

^!d::
	; Step 3 to the right
	send {d down}
	Sleep 2500
	send {d up}
Return

^!a::
	; Step 10 to the left
	send {a down}
	Sleep 4000
	send {a up}
Return
