; this has been tested on 1.12.2 against this farm: https://www.youtube.com/watch?v=Y31TEbKjSpg

; ctrl + alt + f starts the loop.  Every 1/2 second the right mouse button is clicked.
^!f::
	BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		Sleep 500 ; click delay in ms.  Faster values (like 100ms) break the cycle after one item is caught.
		MouseClick, Right
	}
Return

; Pressing pause will stop it
^!s::
	BreakLoop = 1
Pause::
	BreakLoop = 1
return