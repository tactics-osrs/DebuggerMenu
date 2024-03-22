@echo off
REM Script Name: Debugger
REM Date Written: March 22, 2024
REM Written By: Tactics



:menu
cls
color 0A
echo Welcome to Tactics Debugger menu!
:::
:::                                 |     |
:::                                 \\_V_//
:::                                 \/=|=\/
:::                                  [=v=]
:::                                __\___/_____
:::                               /..[  _____  ]
:::                              /_  [ [  M /] ]
:::                             /../.[ [ M /@] ]
:::                            <-->[_[ [M /@/] ]
:::                           /../ [.[ [ /@/ ] ]
:::      _________________]\ /__/  [_[ [/@/ C] ]
:::     <_________________>>0---]  [=\ \@/ C / /
:::        ___      ___   ]/000o   /__\ \ C / /
:::           \    /              /....\ \_/ /
:::        ....\||/....           [___/=\___/
:::       .    .  .    .          [...] [...]
:::      .      ..      .         [___/ \___]
:::      .    0 .. 0    .         <---> <--->
:::   /\/\.    .  .    ./\/\      [..]   [..]
:::  / / / .../|  |\... \ \ \    _[__]   [__]_
::: / / /       \/       \ \ \  [____>   <____]

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

echo.
echo Debugging Menu:
echo 1. Visual Studio Debug
echo 2. Command Line Debug
echo 3. Built-in Debug Mode
echo 4. CMD Debug Command
echo 5. Echo Command Debug
echo 6. Pause Command Debug
echo 7. Error Logging
echo 8. ErrorLevel Debug
echo 9. Help
echo 10. Exit
echo.
set /p choice="Enter your choice: "
if not defined choice goto invalid_option
if "%choice%"=="1" goto vs_debug
if "%choice%"=="2" goto cmd_debug
if "%choice%"=="3" goto builtin_debug
if "%choice%"=="4" goto cmd_debug_cmd
if "%choice%"=="5" goto echo_debug
if "%choice%"=="6" goto pause_debug
if "%choice%"=="7" goto error_log
if "%choice%"=="8" goto errorlevel_debug
if "%choice%"=="9" goto help
if "%choice%"=="10" goto end
:invalid_option
echo Invalid option. Please enter a number from 1 to 10.
pause
goto menu
:vs_debug
echo You chose Visual Studio Debug.
pause
goto menu
:cmd_debug
echo You chose Command Line Debug.
pause
goto menu
:builtin_debug
echo You chose Built-in Debug Mode.
pause
goto menu
:cmd_debug_cmd
echo You chose CMD Debug Command.
pause
goto menu
:echo_debug
echo You chose Echo Command Debug.
pause
goto menu
:pause_debug
echo You chose Pause Command Debug.
pause
goto menu
:error_log
echo You chose Error Logging.
pause
goto menu
:errorlevel_debug
echo You chose ErrorLevel Debug.
pause
goto menu
:help
echo Here are the descriptions of each function:
echo 1. Visual Studio Debug: Debug an executable in Visual Studio from the command line.
echo 2. Command Line Debug: Debug an executable using command-line debuggers like gdb or cdb/kd.
echo 3. Built-in Debug Mode: Activate the built-in debug mode of an executable, if it exists.
echo 4. CMD Debug Command: Use the CMD Debug command to debug a program.
echo 5. Echo Command Debug: Use the echo command to print out values and states in your batch script for debugging.
echo 6. Pause Command Debug: Use the pause command to halt script execution and inspect current states for debugging.
echo 7. Error Logging: Log error messages to a file for debugging.
echo 8. ErrorLevel Debug: Use ErrorLevel to detect errors and log them for debugging.
pause
goto menu
:end
exit
