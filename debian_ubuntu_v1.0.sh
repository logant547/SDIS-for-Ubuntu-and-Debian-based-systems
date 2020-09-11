echo 'Welcome to the RTL8821ce driver installation script (version 1.0) for Ubuntu and Debian systems.'
sleep 1
echo 'Thanks to tomaspinho for the original code. (https://github.com/tomaspinho)'
echo "This script is built for Ubuntu/Debian (based) systems. Stay tuned, an Arch/Manjaro script is coming soon (when I have the time)."
echo "Make sure secure boot is disabled."
echo "You have 5 seconds to exit and cancel the installation."
sleep 5
clear
echo 'Starting in 5 seconds.'
sleep 1
clear
echo 'Starting in 4 seconds.'
sleep 1
clear
echo 'Starting in 3 seconds.'
sleep 1
clear
echo 'Starting in 2 seconds.'
sleep 1
clear
echo 'Starting in 1 second.'
sleep 1
clear
echo "Starting now. Please don't close this terminal tab."
echo "Please enter your password below:"
sudo apt-get update
sudo apt-get install -y dkms git
git clone "https://github.com/tomaspinho/rtl8821ce"
cd rtl8821ce
clear
echo 'Intergrating new module into kernel. This may take a while...'
sleep 1
sudo ./dkms-install.sh
sudo modprobe 8821ce
echo 'All done! You can now delete the "rtl8821ce" folder created by the script. This will probably be stored in your home directory.'

