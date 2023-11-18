@echo off
echo start
set dir=61
set end=5
set n=0
set q=1

set /p dir=input dir:
set /p n=input start:
set /p end=input end:
set /p q=input q:
set /a n-=1
:download
set /a n+=1
set url=http://www.wordproaudio.net/bibles/app/audio/%dir%/%q%/%n%.mp3
echo %url%
curl %url% --output %n%.mp3

if %n% == %end% pause
goto download