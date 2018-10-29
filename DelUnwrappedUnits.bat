for /r . %%g in (*.prc,*.PRC) do del "%%g" 
for /r . %%g in (*.fnc,*.FNC) do del "%%g" 
for /r . %%g in (*.sql,*.SQL,*_DDL.sql) do del "%%g" 
for /r . %%g in (*.java,*.JAVA) do del "%%g" 
for /r . %%g in (*.sqlj,*.SQLJ,*.sqlj.plb,*.SQLJ.plb) do del "%%g" 
for /d /r . %%g IN (src) do @IF EXIST "%%g" rd /s /q "%%g"
REM rd /s /q %%g
Pause&Exit
