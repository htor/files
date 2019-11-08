-- copies all tracks from the playlist "trax" in swinsian to a directory

set thelist to "trax"
set thedest to "/Volumes/space/Trax"

try
	do shell script "([ -d " & thedest & " ]); exit $?"
on error
	display dialog "Error: directory " & thedest & " is not present"
	error number -128
end try

tell application "Swinsian"
	repeat with theplaylist in playlists
		set thelistname to name of theplaylist as string
		if thelistname is equal to thelist then
			repeat with thetrack in tracks of theplaylist
				set thefile to location of thetrack
				try
					do shell script "cp -a \"" & thefile & "\" " & thedest
				on error themessage
					display dialog themessage
					error number -128
				end try
			end repeat
		end if
	end repeat
end tell
