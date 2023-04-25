###########################
#
# This script is a condensed version of the instructions for a Mac from 
# https://rclone.org/install/
#
##########################

# Download rclone
cd && curl -O https://downloads.rclone.org/rclone-current-osx-amd64.zip

# Unzip rclone
unzip -a rclone-current-osx-amd64.zip && cd rclone-*-osx-amd64

# Create folder for rclone in the system path
sudo mkdir -p /usr/local/bin

# Move rclone to the location below
sudo mv rclone /usr/local/bin/

# Clean up rclone
cd .. && rm -rf rclone-*-osx-amd64 rclone-current-osx-amd64.zip

echo Now we run the web config
/usr/local/bin/rclone rcd --rc-web-gui
