@ECHO OFF
::--------------------------------------------------------------------
:: Usage: "install [/NoPause] [/?]"
::
::                 /NoPause  - Does not pause after completion
::                 /?        - Gets the usage for this script
::--------------------------------------------------------------------

:: Reset ERRORLEVEL
VERIFY OTHER 2>nul
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
IF ERRORLEVEL 1 GOTO ERROR_EXT

SET NO_PAUSE=0
SET CURRDIR=%~dps0
SET PROJECT=install.ps1
SET CFG_PATH=%CURRDIR%Isogeo.Help\config.int.ps1
SET CCNetLabel=0.0.0.0
GOTO ARGS



:: -------------------------------------------------------------------
:: Builds the project
:: -------------------------------------------------------------------
:BUILD
powershell.exe -NoLogo -ExecutionPolicy ByPass -Command %CURRDIR%%PROJECT% -cfgPath %CFG_PATH%
GOTO END



:: -------------------------------------------------------------------
:: Parse command line argument values
:: Note: Currently, last one on the command line wins (ex: /rebuild /clean == /clean)
:: -------------------------------------------------------------------
:ARGS
::IF NOT "x%~5"=="x" GOTO ERROR_USAGE

:ARGS_PARSE
IF /I "%~1"=="/NoPause"    SET NO_PAUSE=1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/int"        SET CFG_PATH=%CURRDIR%Isogeo.App\config.int.ps1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/?"          GOTO ERROR_USAGE
IF    "%~1" EQU ""         GOTO ARGS_DONE
ECHO Unknown command-line switch: %~1
GOTO ERROR_USAGE

:ARGS_DONE
GOTO SETENV



:: -------------------------------------------------------------------
:: Set environment variables
:: -------------------------------------------------------------------
:SETENV
GOTO BUILD



:: -------------------------------------------------------------------
:: Errors
:: -------------------------------------------------------------------
:ERROR_EXT
ECHO Could not activate command extensions
GOTO END


:ERROR_USAGE
ECHO Usage: "Upgrade [/NoPause] [/?]"
ECHO.
ECHO                 /NoPause  - Does not pause after completion
ECHO                 /?        - Gets the usage for this script
GOTO END



:: -------------------------------------------------------------------
:: End
:: -------------------------------------------------------------------
:END
@IF NOT "%NO_PAUSE%"=="1" PAUSE
ENDLOCAL
