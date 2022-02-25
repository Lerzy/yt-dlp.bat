@echo off

set n=^&echo.

set download_folder=%CD%\Downloads

if not exist "%download_folder%" mkdir %download_folder%

:start

set /p LINK=Enter youtube playlist/video link to download: 

echo %LINK%

echo In what format would you like to download? %n%1:mp4 %n%2:mp3
set /p FORMAT=
if %FORMAT%==1 start yt-dlp -o "%download_folder%\%%(title)s.%%(ext)s"  %LINK%

if %FORMAT%==2 start yt-dlp  --extract-audio --audio-format mp3 -o "%download_folder%\%%(title)s.%%(ext)s"  %LINK%
pause
cls
goto start

