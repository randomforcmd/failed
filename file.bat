set /p name=

:start
mode 1000
title Matei Tudor Suite
echo Welcome to Matei Tudor Suite, %name%.
echo Bine ați venit la Matei Tudor Suite, %name%.
echo Please choose a language. To select English, type EN.
echo Vă rugăm să alegeți o limbă. Pentru a alege limba română, tastați RO.
set /p lang=
if %lang%==en goto launchen
if %lang%==EN goto launchen
if %lang%==ro goto launchro
if %lang%==RO goto launchro
echo Not detected.
pause
goto start

:launchen
title Suite Launcher
echo Welcome. Please type a command or enter ‘apps’ to access the in-built apps. If you need help, please enter ‘help’.
set /p typer=
if %typer%==ver goto veren
if %typer%==apps goto appsen
if %typer%==help goto helpen
if %typer%==lang goto langmanen
if %typer%==betaman goto betaman
echo Incorrect command.
pause
goto launchen

:veren
echo This is version Alpha 1.0 of Matei Tudor Suite.
pause
goto launchen

:langmanen
mode 1000
echo Welcome to Language Manager.
echo The language is currently set to %lang%. Would you like to change it? (Y/N)
set /p languagechanger=
if %languagechanger%==N goto retlanen
if %languagechanger%==Y goto start

:retlanen
echo Alright. Returning to launcher.
pause
goto launchen

