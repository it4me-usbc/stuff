echo The purpose of this file is to be flexible enough for anyone to adapt to their settings on a Mac or Linux
echo Set the parameters like the Rclone location the config name and where the folders are located

echo ========================
echo When you type out the full command it would look like this.
echo  
echo  Mac /usr/bin/rclone copy -v "/Users/Username/Documents" fileserver:/username
echo  Linux /usr/bin/rclone copy -v "/home/username/Documents" fileserver:/username
echo ================

# Set the configuration stuff here
# Rclone location config name, your Windows home folder, and your username on the file server.

export RC=/usr/local/bin/rclone
export RCCONFIG=fileserver
# export HOME=/Users/username # Already in understood in Linux/OSX
export DATA=$HOME/Documents/data
export DESTINATION=destination/subfolder

# The use of quootes allows for any usernames with spaces.
# The following are provided as examples

$RC copy -v "$DATA" "$RCCONFIG:/$DESTINATION"
$RC copy -v "$HOME/Documents" "$RCCONFIG:/$DESTINATION"
$RC copy -v "$HOME/Videos" "$RCCONFIG:/$DESTINATION"
$RC copy -v "$HOME/Pictures" "$RCCONFIG:/$DESTINATION"
$RC copy -v "$HOME/Desktop/Data" "$RCCONFIG:/$DESTINATION"
