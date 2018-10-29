@ECHO OFF
set propFile=%1
set propName=%2
set propValue=%3
(
FOR /f "usebackqdelims=" %%a IN (%~1) DO (
FOR /f "tokens=1*delims==" %%g IN ("%%a") DO (
IF /i "%%g"=="%~2" (ECHO(%%g=%3
) ELSE (ECHO(%%a)
)
)
)> %cd%\temp.txt
type %cd%\temp.txt > %propFile%
del %cd%\temp.txt
GOTO :EOF