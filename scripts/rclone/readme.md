# Rclone batch and script files.

The purpose of these files is to be flexible enough for anyone to adapt to their settings.
Set the parameters like the Rclone location the config name and where the folders are located.

rclone-copy.bat is intended for Windows

rclone-copy.sh  is intended for Mac/Linx

## Mac
mac-rc-install.sh is for automating the install on a Mac from the steps here: https://rclone.org/install/

Before opening a terminal and runing the following script you should review it first to make so you know what you are downlaoding and running. We are using the sudo in the script command so you will be prompted for your password.

```
curl -O https://raw.githubusercontent.com/it4me-usbc/stuff/main/scripts/rclone/mac-rc-install.sh
chmod +x mac-rc-install.sh
./mac-rc-install.sh
