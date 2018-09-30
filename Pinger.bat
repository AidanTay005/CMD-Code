@echo off 
title Ping
:start
cls 
echo. 
color 07
echo               MENU 
echo --------------------------------
echo 1 = Ping a IP Address For 4 Times
echo 2 = Ping a IP Address Endlessly

echo. 
set /p opt= Option: 
if %opt%==1 goto PING 
if %opt%==2 goto PING2

cls 
pause 
goto start 


:PING
color 03
cls & set /p adress=Type an adress you wish to ping: 
cls

ping %adress% & echo. & pause. & goto :start


:PING2
cls
color 03
set /P CommandVar=Type an adress you wish to ping:  
ping -t %CommandVar%
color 07
goto start
