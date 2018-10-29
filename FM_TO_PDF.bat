REM-------------------------------
@echo off
if exist dzb_script del dzb_script

:STARTLOOP
if "%1" == "" goto ENDLOOP
for /r %%g in (%1) do (
echo Open %%g >> dzb_script
echo SaveAs -p %%g %%g.pdf >> dzb_script
echo Exit %%g >> dzb_script
)
:ENDLOOP
DZbatcher -v dzb_script
del dzb_script
echo successfully completed
exit
