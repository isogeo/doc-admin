@ECHO OFF
::--------------------------------------------------------------------
:: Usage: "build [/clean | /rebuild | /release | /dev] [/log] [/NoPause] [/?]"
::
::                 /clean    - Cleans the project
::                 /rebuild  - Cleans and builds the project (default)
::                 /release  - Rebuilds the project and performs additional operations
::
::                 /doc      - Generates and packages the documentation (can be long)
::                 /log      - Creates a detailed log for the build
::
::                 /NoPause  - Does not pause after completion
::                 /?        - Gets the usage for this script
::--------------------------------------------------------------------

COLOR 07



:: Reset ERRORLEVEL
VERIFY OTHER 2>nul
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
IF ERRORLEVEL 1 GOTO ERROR_EXT

SET NO_PAUSE=0
SET PROJECT=Isogeo.Help.proj
SET TARGET=Rebuild
SET DEV_BUILD=False
SET GENERATE_DOCUMENTATION=False
SET VERBOSITY=minimal
SET CCNetLabel=0.0.0.0
SET EnableNuGetPackageRestore=True
GOTO ARGS



:: -------------------------------------------------------------------
:: Builds the project
:: -------------------------------------------------------------------
:BUILD
::Yeah, really: https://github.com/isaacs/npm/issues/3697
"%NodeJsHomePath%node.exe" "%APPDATA%\npm\node_modules\rimraf\bin.js" node_modules

ECHO.
PUSHD .nuget
NuGet.exe restore "packages.config" -PackagesDirectory ..\packages
POPD
ECHO.
msbuild.exe %PROJECT% /nologo /t:%TARGET% /m:%NUMBER_OF_PROCESSORS% /p:GenerateDocumentation="%GENERATE_DOCUMENTATION%" /fl /flp:logfile=build.log;verbosity=%VERBOSITY%;encoding=UTF-8 /nr:False
IF ERRORLEVEL 1 GOTO END_ERROR

GOTO END

:BUILD_DEV
IF "%TARGET%"=="Clean" (
    ::Yeah, really: https://github.com/isaacs/npm/issues/3697
    CALL rimraf.cmd node_modules
)

ECHO.
CALL npm.cmd install --no-bin-link --loglevel info  --cache tmp\npm-cache
IF ERRORLEVEL 1 GOTO END_ERROR
ECHO.
CALL grunt.cmd %TARGET%
IF ERRORLEVEL 1 GOTO END_ERROR

GOTO END



:: -------------------------------------------------------------------
:: Parse command line argument values
:: Note: Currently, last one on the command line wins (ex: /rebuild /clean == /clean)
:: -------------------------------------------------------------------
:ARGS
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (
    "C:\Windows\Sysnative\cmd.exe" /C "%0 %*"

    IF ERRORLEVEL 1 EXIT /B 1
    EXIT /B 0
)
::IF NOT "x%~5"=="x" GOTO ERROR_USAGE

:ARGS_PARSE
IF /I "%~1"=="/clean"      SET TARGET=Clean& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/rebuild"    SET TARGET=Rebuild& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/release"    SET TARGET=UpdateVersion;Release& SET BuildType=Nightly& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/dev"        SET DEV_BUILD=True& SET TARGET=default& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/doc"        SET GENERATE_DOCUMENTATION=True& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/log"        SET VERBOSITY=diagnostic& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/NoPause"    SET NO_PAUSE=1& SHIFT & GOTO ARGS_PARSE
IF /I "%~1"=="/?"          GOTO ERROR_USAGE
IF    "%~1" EQU ""         GOTO ARGS_DONE
ECHO Unknown command-line switch: %~1
GOTO ERROR_USAGE

:ARGS_DONE
IF "%DEV_BUILD%"=="True" GOTO SETENV_DEV ELSE GOTO SETENV



:: -------------------------------------------------------------------
:: Set environment variables
:: -------------------------------------------------------------------
:SETENV
CALL :SetMSBuildToolsPathHelper > nul 2>&1
IF ERRORLEVEL 1 GOTO ERROR_MSBUILD
ECHO SET MSBuildToolsPath=%MSBuildToolsPath%

CALL :SetNodeJsHomePathHelper > nul 2>&1
IF ERRORLEVEL 1 GOTO ERROR_NODEJS
ECHO SET NodeJsHomePath=%NodeJsHomePath%

SET PATH=%MSBuildToolsPath%;%PATH%
GOTO BUILD

:SETENV_DEV
CALL :SetGitHomePathHelper > nul 2>&1
IF ERRORLEVEL 1 GOTO ERROR_GIT
ECHO SET GitHomePath=%GitHomePath%

CALL :SetNodeJsHomePathHelper > nul 2>&1
IF ERRORLEVEL 1 GOTO ERROR_NODEJS
ECHO SET NodeJsHomePath=%NodeJsHomePath%

CALL :SetCalibreHomePathHelper > nul 2>&1
IF ERRORLEVEL 1 GOTO ERROR_CALIBRE
ECHO SET CalibreHomePath=%CalibreHomePath%

SET PATH=%NodeJsHomePath%;%APPDATA%\npm;%GitHomePath%\bin;%CalibreHomePath%;%PATH%
GOTO BUILD_DEV



:SetMSBuildToolsPathHelper
SET MSBuildToolsPath=
FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSBuild\ToolsVersions\4.0 /V MSBuildToolsPath') DO (
    IF "%%i"=="MSBuildToolsPath" (
        SET "MSBuildToolsPath=%%k"
    )
)
IF "%MSBuildToolsPath%"=="" EXIT /B 1
EXIT /B 0



:SetCalibreHomePathHelper
SET CalibreHomePath=
FOR /F "tokens=1,2*" %%i in ('REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\calibre 64bit\Installer" /V InstallPath') DO (
    IF "%%i"=="InstallPath" (
        SET "CalibreHomePath=%%k"
    )
)
IF "%CalibreHomePath%"=="" EXIT /B 1
EXIT /B 0



:SetNodeJsHomePathHelper
SET NodeJsHomePath=
FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_CURRENT_USER\Software\Node.js /V InstallPath') DO (
    IF "%%i"=="InstallPath" (
        SET "NodeJsHomePath=%%k"
    )
)
IF "%NodeJsHomePath%"=="" (
    FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Node.js /V InstallPath') DO (
        IF "%%i"=="InstallPath" (
            SET "NodeJsHomePath=%%k"
        )
    )
)
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    IF "%NodeJsHomePath%"=="" (
        FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_CURRENT_USER\Software\Wow6432Node\Node.js /V InstallPath') DO (
            IF "%%i"=="InstallPath" (
                SET "NodeJsHomePath=%%k"
            )
        )
    )
    IF "%NodeJsHomePath%"=="" (
        FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Node.js /V InstallPath') DO (
            IF "%%i"=="InstallPath" (
                SET "NodeJsHomePath=%%k"
            )
        )
    )
)
IF "%NodeJsHomePath%"=="" EXIT /B 1
EXIT /B 0



:SetGitHomePathHelper
SET GitHomePath=
FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1 /V InstallLocation') DO (
    IF "%%i"=="InstallLocation" (
        SET "GitHomePath=%%k"
    )
)
IF "%GitHomePath%"=="" (
    FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1 /V InstallLocation') DO (
        IF "%%i"=="InstallLocation" (
            SET "GitHomePath=%%k"
        )
    )
)
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    IF "%GitHomePath%"=="" (
        FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_CURRENT_USER\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1 /V InstallLocation') DO (
            IF "%%i"=="InstallLocation" (
                SET "GitHomePath=%%k"
            )
        )
    )
    IF "%GitHomePath%"=="" (
        FOR /F "tokens=1,2*" %%i in ('REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Git_is1 /V InstallLocation') DO (
            IF "%%i"=="InstallLocation" (
                SET "GitHomePath=%%k"
            )
        )
    )
)
IF "%GitHomePath%"=="" EXIT /B 1
EXIT /B 0



:: -------------------------------------------------------------------
:: Errors
:: -------------------------------------------------------------------
:ERROR_EXT
ECHO Could not activate command extensions
GOTO END

:ERROR_CALIBRE
ECHO Could not find Calibre
GOTO END

:ERROR_MSBUILD
ECHO Could not find MSBuild 4.0
GOTO END

:ERROR_GIT
ECHO Could not find Git
GOTO END

:ERROR_NODEJS
ECHO Could not find node.js
GOTO END

:ERROR_USAGE
ECHO Usage: "build [/clean | /rebuild | /release] [/doc] [/log] [/NoPause] [/?]"
ECHO.
ECHO                 /clean    - Cleans the project
ECHO                 /rebuild  - Cleans and builds the project (default)
ECHO                 /release  - Rebuilds the project and performs additional operations
ECHO.
ECHO                 /doc      - Generates and packages the documentation (can be long)
ECHO                 /log      - Creates a detailed log for the build
ECHO.
ECHO                 /NoPause  - Does not pause after completion
ECHO                 /?        - Gets the usage for this script
GOTO END



:: -------------------------------------------------------------------
:: End
:: -------------------------------------------------------------------
:END_ERROR
COLOR 4E

:END
@IF NOT "%NO_PAUSE%"=="1" PAUSE
ENDLOCAL
