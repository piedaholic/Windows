@ECHO OFF
set propFile=%1
echo %propFile%
for /F "tokens=1* delims==" %%A IN (%propFile%) DO (
echo "%%A %%B"  
)