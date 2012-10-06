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
echo "> Adding Key"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
clear
echo "> Updating Package List"
sudo apt-get update
clear
echo "> Installing Spotify!"
sudo apt-get install spotify-client
clear
echo "Done!"
echo "If all went well then you should be able to launch Spotify via the Unity Dash"
