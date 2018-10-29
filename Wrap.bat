del WrapUnits.txt
for /r . %%g in (*.prc,*.PRC) do echo wrap iname= "%%g"  oname= "%%g.plb" >>WrapUnits.txt
for /r . %%g in (*.fnc,*.FNC) do echo wrap iname= "%%g"  oname= "%%g.plb" >>WrapUnits.txt
for /r . %%g in (*.sql,*.SQL,*_DDL.sql) do echo wrap iname= "%%g"  oname= "%%g.plb" >>WrapUnits.txt