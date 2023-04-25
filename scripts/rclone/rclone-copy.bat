@echo off
ECHO The purpose of this batch file is to be flexible enough for anyone to adapt to their settings
ECHO Set the parameters like the Rclone location the config name and where the folders are located

ECHO ========================
ECHO When you type out the full command it would look like this.
ECHO . 
ECHO c:\rclone\rclone.exe copy "C:\Users\Username\Documents" fileserver:/username
ECHO .
ECHO ================

REM Set the configuration stuff here
REM Rclone location config name, your Windows home folder, and your username on the file server.

SET RC=c:\rclone\rclone.exe
SET RC-CONFIG=fileserver
REM SET HOME=C:\Users\username
SET USER=username-on-server

REM The following are provided as examples

%RC% copy "%HOMEPATH%\Documents" %RC-CONFIG%:/%USER%
%RC% copy "%HOMEPATH%\Videos" %RC-CONFIG%:/%USER%
%RC% copy "%HOMEPATH%\Pictures" %RC-CONFIG%:/%USER%
%RC% copy "%HOMEPATH%\Desktop\Data" %RC-CONFIG%:/%USER%
