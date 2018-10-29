@echo off


SET /P ANSWER=What do you want to zip? (J - JPG). For example, to zip the word files alone, type W and press Enter key.

echo You chose: %ANSWER%, Press any key to confirm.
pause


if /i {%ANSWER%}=={J} (goto :jpg)
if /i {%ANSWER%}=={1} (goto :jpg)



:jpg
for /D /r %%d in (*) do if exist %%d\*.jpg "C:\Program Files\7-Zip\7z.exe" a -tzip "%%d.zip" "%%d\*.jpg"

echo Word files zipped
pause

:done
exit