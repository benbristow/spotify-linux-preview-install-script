if [ $EUID != 0 ]; then
    sudo "$0" "$@"
    exit $?
fi

echo "Spotify Linux Install Script for Ubuntu 12.04+"
echo "By Ben Bristow | Licensed Under the GNU GPLv3"
echo "Available on GitHub"
echo "==============================================="
echo "> Adding Repo"
sudo echo "##Spotify (Automatically added by SLIS)" >> /etc/apt/sources.list
sudo echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list
clear
echo "> Adding Repo"
echo "> Adding Key"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
clear
echo "> Adding Repo"
echo "> Adding Key"
echo "> Updating Package List"
sudo apt-get update
clear
echo "> Adding Repo"
echo "> Adding Key"
echo "> Updating Package List"
echo "> Installing Spotify!"
sudo apt-get install spotify-client
clear
echo "> Launching Spotfiy"
spotify &
echo "Done!"
