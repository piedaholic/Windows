::
: Test if pattern in string
: P1 - the pattern
: P2 - the string to check
::
@echo off

echo.%2 | findstr /C:"%1" 1>nul

if errorlevel 1 (
  echo. pattern not found
) ELSE (
  echo. pattern found
)