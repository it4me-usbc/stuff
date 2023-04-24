@echo off
REM The purpose of this batch file is to be flexible enough for anyone
REM Set the parameters like the Rclone location the config name and where the folders are located
REM Set the location of rclone.exe on your Windows computer

REM Set the configuration name of the file server you are calling
SET RC=c:\rclone\rclone.exe
SET RC-CONFIG=fileserver
SET HOME=C:\Users\username
SET USER=username-on-server


%RC% copy "%HOME%\Documents" %RC-CONFIG%:/%USER%
%RC% copy "%HOME%\Videos"
%RC% copy "%HOME%\Pictures"
%RC% copy "%HOME%\Desktop\Data"
