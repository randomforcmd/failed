echo Please enter your name/ Vă rugăm introduceți numele:
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

:wordprocessor
echo Not yet linked up to any entry commands.
echo Possible bug involving spaces may appear.
echo Poppy Tower Word (alpha1.0)
title Poppy Tower Word
@echo off
echo Type your text here.
set /p poppytowerinput=
pause
echo %poppytowerinput%> PoppyTower.txt
echo Input overwritten to Poppy Tower Word memomry (PoppyTower.txt)
echo If you wish to edit your Poppy Tower Word document outside of the program, you can do that by modifying the txt file.
echo Please note that when you write a new document, unless you make a backup, the current document will be destroyed.
echo Poppy Tower backups will be introduced in a later version.
pause
