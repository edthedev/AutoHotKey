
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
	Sleep 1000

	clickY := ypos - BlockSize
	ClickX := xpos 
	MouseMove %ClickX%, %ClickY%
	Click
	Sleep 1000

	clickY := ypos - BlockSize
	ClickX := xpos + BlockSize
	MouseMove %ClickX%, %ClickY%
	Click
	Sleep 1000

	MouseMove %xpos%, %ypos% ; Return

Return
