@echo off
SET /p DRIVE_NAME="Enter the drive name
ECHO "Start a commandprompt (no admin privileges needed)"
ECHO "Use cd to navigate to the folder you want to go (you can use tab to autocomplete names"
ECHO "type subst j: . to create the driveletter association. (instead of the . you can also type the entire path)"
SUBST %DRIVE_NAME% .
ECHO "Virtual Drive %DRIVE_NAME% created"
ECHO "Now in explorer you have a new letter. Go to it and do whatever you need to do to the .cache files."
Pause&Exit