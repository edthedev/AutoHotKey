; this has been tested on 1.12.2 against this farm: https://www.youtube.com/watch?v=Y31TEbKjSpg

; ctrl + alt + f starts the loop.  Every 1/2 second the right mouse button is clicked.
^!s::
	BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		; Assemble
		Sleep 500 
		SetKeyDelay, 90   
		MouseGetPos, xpos, ypos  ;Save initial position of mouse

		; Act

		; Mine a block
		Click, down
		Sleep 1000  
		Click, up

		; Look down a smidge
		; Sleep 500
		; MouseMove, xpos, ypos + 1, 10           

		; Mine another block
		Click, down
		Sleep 1000  
		Click, up

		; Look straight ahead again
		;Sleep 500
		; MouseMove, xpos, ypos, 10    ;Restore original mouse position

		; Take a step
		send {w down}
		Sleep 1000
		send {w up}
	}
Return

; Pressing pause will stop it
^!q::
	BreakLoop = 1
Pause::
	BreakLoop = 1
return