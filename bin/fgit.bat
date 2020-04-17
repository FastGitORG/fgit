@ECHO off

:: Check Parameter
IF "%1"=="" (
    ECHO Error: Please follow the github URL behind `fgit`!
    EXIT /B 1
)

:: Check URL
ECHO %1|findstr "github.com" >nul
IF NOT %errorlevel% EQU 0 (
    ECHO Error: %1 isn't a github URL!
    EXIT /B 1
)

:: Replace url
set url=%1
set url=%url:github.com=hub.fastgit.org%

:: Call git
git clone %url% %2 %3 %4 %5 %6 %7 %8 %9