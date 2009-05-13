--  RunScript.applescript
--
--  Copyright (c) 2009  Martin Kuehl <purl.org/net/mkhl>
--  Licensed under the MIT License.
--

on run_shell_script(results)
	repeat with this_result in results
		do shell script (name of this_result)
	end repeat
end run_shell_script

on run_in_terminal(results)
	tell app "Terminal"
		repeat with this_result in results
			do script (name of this_result)
		end repeat
	end tell
end run_in_terminal
