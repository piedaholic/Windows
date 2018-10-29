@echo off
del Class.txt
SET /p SCHEMA_NAME="Please enter the schema name:"
SET /p SCHEMA_PASSWORD="Please enter the schema password:"
SET /p INSTANCE_NAME="Please enter the instance name:"
for /r . %%g in (*.class) do echo loadjava -f -user %SCHEMA_NAME%/%SCHEMA_PASSWORD%@%INSTANCE_NAME% %%g>>Class.txt
Pause&Exit