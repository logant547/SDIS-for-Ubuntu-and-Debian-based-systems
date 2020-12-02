# DEV NOTE: Sorry I missed a few numbers as well as the Arch/Manjaro script, I've been busy with studying and other stuff. I promise it's coming soon!
echo 'Welcome to the RTL8821ce driver installation script (version 1.3) for Ubuntu and Debian systems.'
sleep 1
echo 'Thanks to tomaspinho for the original code (https://github.com/tomaspinho).'
echo 'This script is built for Ubuntu/Debian (based) systems.'
sleep 1
echo "Provide your password to continue:"
sudo apt update
sudo apt install -y dkms git
git clone "https://github.com/tomaspinho/rtl8821ce"
cd rtl8821ce
clear
echo 'Intergrating new module into kernel. This may take a while...'
sleep 1
sudo ./dkms-install.sh
sudo modprobe 8821ce
echo 'All done! You can now delete the "rtl8821ce" folder created by the script. This will be stored in the folder you ran the script from (EG; if the script is run from Desktop the script will leave that folder there afterwards."
