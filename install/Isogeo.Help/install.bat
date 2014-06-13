@ECHO OFF
::--------------------------------------------------------------------
:: Usage: "Upgrade [/local | /dev] [/noreset] [/NoPause] [/?]"
::
::                 /local    - Upgrades your local instance (default)
::                 /dev      - Upgrades the shared DEV instance
::
::                 /noreset  - Does not reset the instance before upgrading
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
SET CFG_PATH=%CURRDIR%\config.int.ps1
GOTO ARGS



:: -------------------------------------------------------------------
:: Builds the project
:: -------------------------------------------------------------------
:BUILD
powershell.exe -NoLogo -ExecutionPolicy ByPass -Command %PSAKE% -buildFile %CURRDIR%%PROJECT% -taskList Install -nologo -properties @{configPath='%CFG_PATH%'}
GOTO END



:: -------------------------------------------------------------------
:: Parse command line argument values
:: Note: Currently, last one on the command line wins (ex: /rebuild /clean == /clean)
:: -------------------------------------------------------------------
:ARGS
::IF NOT "x%~5"=="x" GOTO ERROR_USAGE

:ARGS_PARSE
IF /I "%~1"=="/NoPause"    SET NO_PAUSE=1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/dev"       SET CFG_PATH=config.dev.ps1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/int"       SET CFG_PATH=\\HQ.isogeo.fr\GlobalShare\Deployments\app.isogeo.com\config.int.ps1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/prod"       SET CFG_PATH=\\HQ.isogeo.fr\GlobalShare\Deployments\app.isogeo.com\config.prod.ps1& SHIFT & GOTO ARGS_PARSE
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
SET PSAKE=%CURRDIR%psake.ps1
IF NOT EXIST %PSAKE% SET PSAKE=%CURRDIR%..\..\build\psake.ps1
GOTO BUILD



:: -------------------------------------------------------------------
:: Errors
:: -------------------------------------------------------------------
:ERROR_EXT
ECHO Could not activate command extensions
GOTO END


:ERROR_USAGE
ECHO Usage: "Upgrade [/local | /dev] [/noreset] [/NoPause] [/?]"
ECHO.
ECHO                 /local    - Upgrades your local instance (default)
ECHO                 /dev      - Upgrades the shared DEV instance
ECHO.
ECHO                 /noreset  - Does not reset the instance before upgrading
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
