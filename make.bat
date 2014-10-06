@echo off

if "%1"=="" goto start
if "%1"=="start" goto start
if "%1"=="restart" goto restart
if "%1"=="startd" goto startd
if "%1"=="build" goto build
if "%1"=="build-opt" goto buildo
if "%1"=="buildo" goto buildo
if "%1"=="clean" goto clean
if "%1"=="pack" goto pack
if "%1"=="package" goto pack
if "%1"=="dist" goto dist
if "%1"=="distribute" goto dist

echo make: *** No rule to make target `%1'.  Stop.
goto exit

:start
    echo [x] Building assets and starting development server...
    .\node_modules\.bin\mimosa watch -s

:restart
    echo [x] Re-Building assets then starting development server...
    call .\node_modules\.bin\mimosa clean --force
    .\node_modules\.bin\mimosa build
    .\node_modules\.bin\mimosa watch -s

:startd
    echo [x] Cleaning compiled directory, building assets and starting development server..
    .\node_modules\.bin\mimosa watch -sd

:build
    echo [x] Building assets...
    call .\node_modules\.bin\mimosa clean --force
    .\node_modules\.bin\mimosa build --errorout -P dist-config

:buildo
    echo [x] Building and optimizing assets...
    .\node_modules\.bin\mimosa build -o   

:clean
    echo [x] Removing compiled files...
    .\node_modules\.bin\mimosa clean

:pack
    echo [x] Building and packaging application...
    .\node_modules\.bin\mimosa build -omp

:dist
    echo [x] Building and distributing application...
    call .\node_modules\.bin\mimosa clean --force
    call .\node_modules\.bin\mimosa build --errorout -om -P dist-config
:exit
