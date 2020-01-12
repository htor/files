-- syncs all tracks from the playlist "trax" in swinsian to a directory

set thelist to "trax"
set thedest to "/Volumes/space/Trax/"
set thedesttmp to "/Volumes/space/.Trax/"

try
	do shell script "([ -d " & thedest & " ]); exit $?"
on error
	display dialog "Error: directory " & thedest & " is missing"
	error number -128
end try

tell application "Swinsian"
	repeat with theplaylist in playlists
		set thelistname to name of theplaylist as string
		if thelistname is equal to thelist then
			do shell script "rm -rf " & thedesttmp
			do shell script "mkdir -p " & thedesttmp
			set thetracks to tracks of theplaylist
			repeat with i from 1 to (count thetracks)
				set thetrack to item i of thetracks
				set thefile to location of thetrack
				set thefileexists to true
				try
					do shell script "([ -f \"" & thefile & "\" ]); exit $?"
				on error
					remove tracks (thetrack) from theplaylist
					set thefileexists to false
				end try
				if thefileexists then
					do shell script "cp -a \"" & thefile & "\" " & thedesttmp
				end if
			end repeat
			do shell script "rsync -auvv --delete " & thedesttmp & " " & thedest
			do shell script "rm -rf " & thedesttmp
		end if
	end repeat
end tell

display notification "All trax are ready!"
