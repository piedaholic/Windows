@echo off
SET /p DRIVE_NAME="Enter the drive name:"
SUBST /d %DRIVE_NAME% .
ECHO "Virtual Drive %DRIVE_NAME% removed"
ECHO "Go back to your cmd window and type subst /d j: to remove the drive or alternatively, restart your pc."
Pause&Exit