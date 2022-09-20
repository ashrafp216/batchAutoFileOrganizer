@echo off
set /p "dir=Enter Dirctory: "
set /p "count=Enter count of chars to build new directories: "
set count = %count%
setlocal enabledelayedexpansion
@REM echo Dirctory is: %dir%
set /A Num=!count!
@REM echo Count is: !Num!
cd %dir%
echo Entered the directory...
@REM i is full path
echo Copying files...
for /r %%I in (*) do (
    @echo off
    set fileName=%%~nxI
    set fullPath=%%I
    set newDir=!filename:~0,%Num%!
    @REM echo found !fullPath!
    @REM echo filename is !filename!
    @REM echo folder to make is !newDir!
    set newFullPath= %dir%\!newDir!
    if not exist newFullPath mkdir !newDir!
    @REM echo new full path is:  !newFullPath!
    set source= !fullPath!
    set destin= !newFullPath!\!fileName!
    @REM echo source is !source!
    @REM echo destin is !destin!
    copy !source! !destin!
) 
echo _
echo DONE SUCCESSFULLY...
cmd /k