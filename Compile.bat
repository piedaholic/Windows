del Script.txt
echo spool %cd%\spool.txt >Script.txt
echo set define off >>Script.txt
echo set echo off   >>Script.txt
for /r . %%g in (*.ddl,*.DDL,*_DDL.sql,*_DDL.sql.plb) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.cnv,*.CNV) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.trg,*.TRG) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.seq,*.SEQ) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.inc,*.INC) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.vw,*.VW) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.prc,*.PRC) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.fnc,*.FNC) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.spc,*.SPC) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.pck,*.PCK) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
for /r . %%g in (*.sql,*.SQL,*.sql.plb,*.SQL.plb) do echo Prompt Compiling %%g>>Script.txt & echo @"%%g" >> Script.txt
rem for /r . %%g in (*.trg,*.ddl,*.cnv,*.vw,*.inc,*.prc,*.fnc,*.spc,*.sql,*.pck,*.plb,*.tab) do echo Prompt Compiling %%g >>Script.txt & echo @"%%g" >> Script.txt
echo spool off  >>Script.txt
