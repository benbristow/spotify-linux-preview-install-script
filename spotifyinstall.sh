#!/bin/bash
if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "Spotify Linux Install Script for Ubuntu 12.04+"
echo "By Ben Bristow | Licensed Under the GNU GPLv3"
echo "Available on GitHub"
echo "==============================================="
echo "> Adding Repo"
echo "## Spotify (Automatically added by SLIS)" >> /etc/apt/sources.list
echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
clear
echo "> Adding Key"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
clear
echo "> Updating Package List"
apt-get update
clear
echo "> Installing Spotify!"
apt-get install -y spotify-client
clear
echo "Done!"
echo "If all went well then you should be able to launch Spotify via the Unity Dash"
