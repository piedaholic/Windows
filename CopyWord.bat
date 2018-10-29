@echo off
MD WORD
for /r "%cd%\PDF" %%a in (.) do ( 
xcopy "%%~na\*.doc" "%cd%\WORD" /s
del "%%~nxa\*.doc" /f /s /q
)
Exit