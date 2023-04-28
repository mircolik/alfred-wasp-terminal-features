on alfred_script(q)
	tell application "System Events"
		set warpIsRunning to (count (processes whose name is "Warp")) > 0
		if not warpIsRunning then
			tell application "Warp" to activate
			set numWin to count (windows of process "Warp")
			if numWin < 1 then keystroke "n" using command down
			delay 0.5
		else
			tell application "Warp" to activate
			delay 0.5
		end if
		keystroke q
		keystroke return
	end tell
end alfred_script
