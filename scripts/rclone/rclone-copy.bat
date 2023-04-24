@echo off
REM The purpose of this batch file is to be flexible enough for anyone to adapt to their settings
REM Set the parameters like the Rclone location the config name and where the folders are located

REM ========================
REM When you type out the full command it would look like this.
REM 
REM c:\rclone\rclone.exe copy "C:\Users\Username\Documents" fileserver:/username
REM
REM

REM Set the configuration name of the file server you are calling
SET RC=c:\rclone\rclone.exe
SET RC-CONFIG=fileserver
SET HOME=C:\Users\username
SET USER=username-on-server


%RC% copy "%HOME%\Documents" %RC-CONFIG%:/%USER%
%RC% copy "%HOME%\Videos" %RC-CONFIG%:/%USER%
%RC% copy "%HOME%\Pictures" %RC-CONFIG%:/%USER%
%RC% copy "%HOME%\Desktop\Data" %RC-CONFIG%:/%USER%
