@ECHO ON
set YYYY=%DATE:~10,4%
set MM=%DATE:~4,2%
if "%MM:~0,1%" == " " set MM=0%MM:~1,1%
set DD=%DATE:~7,2%
if "%DD:~0,1%" == " " set DD=0%DD:~1,1%
set HH=%TIME:~0,2%
if "%HH:~0,1%" == " " set HH=0%HH:~1,1%
set MI=%TIME:~3,2%
if "%MI:~0,1%" == " " set MI=0%MI:~1,1%
set SS=%TIME:~6,2%
if "%SS:~0,1%" == " " set SS=0%SS:~1,1%
set FF=%TIME:~9,2%
if "%FF:~0,1%" == " " set FF=0%FF:~1,1%
set my_date=%DD%_%MM%_%YYYY%
echo "Date is %my_date%"
set my_time=%HH%_%MI%_%SS%_%FF%
echo "Time is %my_time%"
Pause&Exit