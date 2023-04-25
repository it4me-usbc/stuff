###########################
#
# This script is a condensed version of the instructions for a Mac from 
# https://rclone.org/install/
#
##########################
cd && curl -O https://downloads.rclone.org/rclone-current-osx-amd64.zip
unzip -a rclone-current-osx-amd64.zip && cd rclone-*-osx-amd64
sudo mkdir -p /usr/local/bin
sudo mv rclone /usr/local/bin/
cd .. && rm -rf rclone-*-osx-amd64 rclone-current-osx-amd64.zip
# rclone 
