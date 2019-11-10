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
			do shell script "mkdir " & thedesttmp
			repeat with thetrack in tracks of theplaylist
				set thefile to location of thetrack
				do shell script "cp -a \"" & thefile & "\" " & thedesttmp
			end repeat
			do shell script "rsync -auvv --delete " & thedesttmp & " " & thedest
			do shell script "rm -rf " & thedesttmp
		end if
	end repeat
end tell

display notification "All trax are ready!"
