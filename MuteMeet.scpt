tell application "Google Chrome"
    activate
    set i to 0
    repeat with w in (windows) -- loop over each window
        set j to 1 -- tabs are not zeroeth
        repeat with t in (tabs of w) -- loop over each tab
            if title of t starts with "Meet " then
                set (active tab index of w) to j -- set Meet tab to active
                set index of w to 1 -- set window with Meet tab to active
                delay 0.5
                do shell script "open -a Google\\ Chrome" -- these two lines are hackery to actually activate the window
                tell application "System Events" to tell process "Google Chrome" to keystroke "d" using command down -- issue keyboard command
                return
            end if
            set j to j + 1
        end repeat
        set i to i + 1
    end repeat
end tell
