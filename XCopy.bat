@echo off
ECHO "xcopy syntax"
ECHO "xcopy /s <src> <tgt>"
SET /p SOURCE_DIR="Enter Source Directory"
SET /p TARGET_DIR="Enter Target Directory"
XCOPY /s %SOURCE_DIR%  %TARGET_DIR%
&Pause&Exit