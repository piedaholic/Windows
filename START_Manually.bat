echo.
SET /P ANSWER=Which files you want to convert to pdf .fm OR .book ? (*.fm - .fm, *.book - .book) For example, to convert .fm files alone, type *.fm and press Enter key.
echo You chose: %Answer% files, Press any key to confirm.
start /wait %cd%\FM_TO_PDF.bat %Answer% >>"%cd%\output.log" 2>&1
start ""/wait %cd%\CopyPDF.bat >>"%cd%\output.log" 2>&1
@echo off
exit