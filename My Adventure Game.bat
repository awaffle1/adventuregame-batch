@echo off
color 24
cls
title Adventure Game
:startofgame
cls
echo.
echo.
echo.
echo Hello person!
echo.
echo.
echo.
echo.
echo What will be your name?
echo.
echo.
set /p name=
echo.
echo.
echo Hello %name%, my name is also %name%.
echo.
echo.
echo.
echo Do you like waffles?
echo.
echo.
echo YES or NO?
echo Make sure it is all caps!
echo.
echo.
set /p wafflelike=
echo.
echo.
echo.
echo %wafflelike%? OK!
echo Just asking!
echo.
echo.
echo.
echo Anyways, where do you want to go, %name%?
echo Pick from:
echo SWAMP
echo TOWN
echo MOUNTAIN
echo WOODS
echo Make sure it is all caps!
echo.
echo.
set /p gotoplace=
echo.
if %gotoplace% equ SWAMP goto swamp
if %gotoplace% equ TOWN goto town
if %gotoplace% equ MOUNTAIN goto mountain
if %gotoplace% equ WOODS goto woods
:swamp
cls
echo Well, we're at the swamp.
echo.
echo.
echo.
echo What do you want to do now, %name%?
echo QUIT or KEEP_GOING
echo Make sure your answers are all caps (and put underscores)!
echo.
echo.
set /p whattodoswamp=
echo.
if %whattodoswamp% equ QUIT exit
if %whattodoswamp equ KEEP_GOING goto swampkeepgoing
:swampkeepgoing
cls
echo Well, there's nothing to do now.
echo.
echo.
echo.
echo Wait...
echo What's that?
echo IT'S A MONSTER!
echo What should we do now, %name%?
echo Oh.
echo It ran away.
echo.
echo.
echo.
pause
goto end
:town
cls
echo Well, we're in town.
echo.
echo.
echo.
echo What do you want to do now, %name%?
echo QUIT or KEEP_GOING
echo Make sure your answers are all caps (and put underscores)!
echo.
echo.
set /p whattodotown=
echo.
if %whattodotown% equ QUIT exit
if %whattodotown% equ KEEP_GOING goto townkeepgoing
:townkeepgoing
cls
echo Well, there's nothing to do now.
echo.
echo.
echo.
echo I hear screaming!
echo THERE'S A ROBBER!
echo and there's the police.
echo Yep, nothing to do.
echo.
echo.
echo.
pause
goto townkeepgoing2
:townkeepgoing2
cls
echo Well, time to go now.
echo.
echo.
echo.
pause
goto end
:mountain
cls
echo Well, we're up the mountain.
echo.
echo.
echo.
echo What do you want to do now, %name%?
echo QUIT or KEEP_GOING
echo Make sure your answers are all caps (and put underscores)!
echo.
echo.
set /p whattodomountain=
echo.
if %whattodomountain% equ QUIT exit
if %whattodomountain% equ KEEP_GOING goto mountainkeepgoing
:mountainkeepgoing
cls
echo Well, there's nothing to do now.
echo.
echo.
echo.
echo Where's that howling coming from?
echo It's a dog!
echo It's coming to me!
echo.
echo.
echo.
pause
goto mountainkeepgoing2
:mountainkeepgoing2
cls
echo Ahhh, sweet dog, lets get you back to your owner in the town.
echo.
echo.
echo.
echo Later, though, because we're all the way up here and miles from the town. Let's enjoy this while it lasts.
echo.
echo.
echo Time to go now.
echo.
echo.
echo.
pause
goto end
:woods
cls
echo We'll, we're in the woods.
echo.
echo.
echo.
echo What to do now, %name%?
echo QUIT or KEEP_GOING
echo Make sure your answers are all caps (and put underscores)!
echo.
echo.
set /p whattodowoods=
echo.
if %whattodowoods% equ QUIT exit
if %whattodowoods% equ KEEP_GOING goto woodskeepgoing
:woodskeepgoing
cls
echo Well, I guess there's nothing to do.
echo.
echo.
echo.
echo What's that?
echo Must be the wind.
echo Let's just chop down some trees and head back with some lumber.
echo Nothing to do here.
echo.
echo.
echo.
pause
goto end
:end
cls
echo Bye!
echo See you next time!
echo.
echo.
echo.
echo (210 lines of code!)
echo.
pause
exit