@ECHO off

:: Check arguments
IF "%1"=="" (
    ECHO Error: Expected a GitHub repository URL after fgit.
    EXIT /B 1
)

:: Check URL
ECHO %1|findstr "github.com" >nul
IF NOT %errorlevel% EQU 0 (
    ECHO Error: %1 is not a GitHub URL!
    EXIT /B 1
)

:: Replace URL
set url=%1
set url=%url:github.com=hub.fastgit.org%

:: Call git
git clone %url% %2 %3 %4 %5 %6 %7 %8 %9