@ECHO ON
@SETLOCAL ENABLEDELAYEDEXPANSION
SET /p FILEEXT="Please enter the file extension you want to append string with:"
SET /p STRING="Please enter the string you want to append filenames with:"
SET FILEEXT_UPP=%FILEEXT%
SET FILEEXT_LOW=%FILEEXT%
CALL :TOUPPERCASE %FILEEXT_UPP%
CALL :TOUPPERCASE %FILEEXT_LOW%
FOR /r . %%a in (*.%FILEEXT_UPP%) do (
SET FILENAME_NEW=%STRING%_%%~na
ECHO %FILENAME_NEW%
ECHO %cd%
REN "%%a" !FILENAME_NEW!%%~xa
)
Pause&Exit

:TOUPPERCASE 
IF [%FILEEXT_UPP%]==[] GOTO:EOF
SET FILEEXT_UPP=%FILEEXT_UPP:a=A%
SET FILEEXT_UPP=%FILEEXT_UPP:b=B%
SET FILEEXT_UPP=%FILEEXT_UPP:c=C%
SET FILEEXT_UPP=%FILEEXT_UPP:d=D%
SET FILEEXT_UPP=%FILEEXT_UPP:e=E%
SET FILEEXT_UPP=%FILEEXT_UPP:f=F%
SET FILEEXT_UPP=%FILEEXT_UPP:g=G%
SET FILEEXT_UPP=%FILEEXT_UPP:h=H%
SET FILEEXT_UPP=%FILEEXT_UPP:i=I%
SET FILEEXT_UPP=%FILEEXT_UPP:j=J%
SET FILEEXT_UPP=%FILEEXT_UPP:k=K%
SET FILEEXT_UPP=%FILEEXT_UPP:l=L%
SET FILEEXT_UPP=%FILEEXT_UPP:m=M%
SET FILEEXT_UPP=%FILEEXT_UPP:n=N%
SET FILEEXT_UPP=%FILEEXT_UPP:o=O%
SET FILEEXT_UPP=%FILEEXT_UPP:p=P%
SET FILEEXT_UPP=%FILEEXT_UPP:q=Q%
SET FILEEXT_UPP=%FILEEXT_UPP:r=R%
SET FILEEXT_UPP=%FILEEXT_UPP:s=S%
SET FILEEXT_UPP=%FILEEXT_UPP:t=T%
SET FILEEXT_UPP=%FILEEXT_UPP:u=U%
SET FILEEXT_UPP=%FILEEXT_UPP:v=V%
SET FILEEXT_UPP=%FILEEXT_UPP:w=W%
SET FILEEXT_UPP=%FILEEXT_UPP:x=X%
SET FILEEXT_UPP=%FILEEXT_UPP:y=Y%
SET FILEEXT_UPP=%FILEEXT_UPP:z=Z%
REM ECHO %FILEEXT_UPP%

:TOLOWERCASE 
IF [%FILEEXT_LOW%]==[] GOTO:EOF
SET FILEEXT_LOW=%FILEEXT_LOW:A=a%
SET FILEEXT_LOW=%FILEEXT_LOW:B=b%
SET FILEEXT_LOW=%FILEEXT_LOW:C=c%
SET FILEEXT_LOW=%FILEEXT_LOW:D=d%
SET FILEEXT_LOW=%FILEEXT_LOW:E=e%
SET FILEEXT_LOW=%FILEEXT_LOW:F=f%
SET FILEEXT_LOW=%FILEEXT_LOW:G=g%
SET FILEEXT_LOW=%FILEEXT_LOW:H=h%
SET FILEEXT_LOW=%FILEEXT_LOW:I=i%
SET FILEEXT_LOW=%FILEEXT_LOW:J=j%
SET FILEEXT_LOW=%FILEEXT_LOW:K=k%
SET FILEEXT_LOW=%FILEEXT_LOW:L=l%
SET FILEEXT_LOW=%FILEEXT_LOW:M=m%
SET FILEEXT_LOW=%FILEEXT_LOW:N=n%
SET FILEEXT_LOW=%FILEEXT_LOW:O=o%
SET FILEEXT_LOW=%FILEEXT_LOW:P=p%
SET FILEEXT_LOW=%FILEEXT_LOW:Q=q%
SET FILEEXT_LOW=%FILEEXT_LOW:R=r%
SET FILEEXT_LOW=%FILEEXT_LOW:S=s%
SET FILEEXT_LOW=%FILEEXT_LOW:T=t%
SET FILEEXT_LOW=%FILEEXT_LOW:U=u%
SET FILEEXT_LOW=%FILEEXT_LOW:V=v%
SET FILEEXT_LOW=%FILEEXT_LOW:W=w%
SET FILEEXT_LOW=%FILEEXT_LOW:X=x%
SET FILEEXT_LOW=%FILEEXT_LOW:Y=y%
SET FILEEXT_LOW=%FILEEXT_LOW:Z=z%
REM ECHO %FILEEXT_LOW%
