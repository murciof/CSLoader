    @echo off
    rem Counter-Strike 1.6 Loader
    rem Created by Murcio Filho
    rem Counter-Strike 1.6 Loader - Version 1.0 (20/01/2014)
    rem You are allowed to edit the file and redistribute the source code
    rem Drive of the Counter-Strike installation
    e:
    :PROMPT
            set /p prompt=Your Steam is downloading or updating a game?[Y/N]:
            if "%prompt%"=="y" goto TERMINATE
            if "%prompt%"=="Y" goto TERMINATE
            if "%prompt%"=="n" goto KILL_STEAM
            if "%prompt%"=="N" goto KILL_STEAM
            if NOT "%prompt%"=="y" goto TERMINATE
            if NOT "%prompt%"=="Y" goto TERMINATE
            if NOT "%prompt%"=="n" goto TERMINATE
            if NOT "%prompt%"=="N" goto TERMINATE
    :KILL_STEAM
            @echo Killing steam.exe...
            taskkill /f /im steam.exe
    :START_CS
            @echo Starting sXe...
            rem Type below the directory of the installation of sXe
            start E:\Games\CounterStrike\sXe\"sXe Injected.exe"
            @echo Loading sXe...
            timeout 10 /nobreak
            rem type below the directory of the Counter-Strike 1.6 installation (DON'T TYPE THE EXEC FILE!!!)
            cd games\counterstrike
            @echo Starting the great Counter-Strike 1.6...
            start /wait hl.exe -game cstrike
            @echo Killing sXe...
            taskkill /f /im "sXe Injected.exe"
    :TERMINATE
            exit