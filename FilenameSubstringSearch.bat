@ECHO OFF
SET /p SUBSTRING="Please enter the substring you want to search:"
SET /p FILE_EXT="Please enter the file extension you want to search:"
DIR *%SUBSTRING%*.%FILE_EXT% /s /b > %SUBSTRING%_Results.txt
Pause&Exit