@echo off
ECHO The purpose of this batch file is to be flexible enough for anyone to adapt to their settings
ECHO Set the parameters like the Rclone location the config name and where the folders are located

ECHO ========================
ECHO When you type out the full command it would look like this.
ECHO . 
ECHO c:\rclone\rclone.exe copy -v "C:\Users\Username\Documents" "fileserver:/destination"
ECHO .
ECHO ================

REM Set the configuration stuff here
REM Rclone location config name, your Windows home folder, and your username on the file server.

SET RC=c:\rclone\rclone.exe
SET RC-CONFIG=fileserver
REM HOMEPATH is understood by Windows to be C:\Users\username
SET DATA=D:\Data 
SET DESTINATION=destination/path

REM The following are provided as examples
REM quotes are used for directories with spaces

%RC% copy -v "%DATA%" "%RC-CONFIG%:/%DESTINATION%"
%RC% copy -v "%HOMEPATH%\Documents" "%RC-CONFIG%:/%DESTINATION%"
%RC% copy -v "%HOMEPATH%\Videos" "%RC-CONFIG%:/%DESTINATION%"
%RC% copy -v "%HOMEPATH%\Pictures" "%RC-CONFIG%:/%DESTINATION%"
%RC% copy -v "%HOMEPATH%\Desktop\Data" "%RC-CONFIG%:/%DESTINATION%"
