@echo off
MD PDF
for /r "%cd%" %%a in (.) do ( 
xcopy "%%~na\*.pdf" "%cd%\PDF" /s
del "%%~nxa\*.pdf" /f /s /q
del "%%~na\*.log" /f /s /q
)
exit