echo The purpose of this file is to be flexible enough for anyone to adapt to their settings on a Mac or Linux
echo Set the parameters like the Rclone location the config name and where the folders are located

echo ========================
echo When you type out the full command it would look like this.
echo  
echo  Mac /usr/bin/rclone copy "/Users/Username/Documents" fileserver:/username
echo  Linux /usr/bin/rclone copy "/home/username/Documents" fileserver:/username
echo ================

# Set the configuration stuff here
# Rclone location config name, your Windows home folder, and your username on the file server.

export RC=/usr/local/bin/rclone
export RCCONFIG=fileserver
# export HOME=C:\Users\username # Already in understood in Linux/OSX
export USER=username-on-server

# The use of quootes allows for any usernames with spaces.
# The following are provided as examples

$RC copy "$HOME/Documents" $RCCONFIG:/$USER
$RC copy "$HOME/Videos" $RCCONFIG:/$USER
$RC copy "$HOME/Pictures" $RCCONFIG:/$USER
$RC copy "$HOME/Desktop/Data" $RCCONFIG:/$USER
