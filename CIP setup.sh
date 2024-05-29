#!/bin/bash


# Function to download a folder from Google Drive
#download_folder_from_drive() {
 #   folder_id="10uUHNQS9DFAYg6jTn6QmPy7hzglBqv_3"
  #  destination="/home/administrator/Desktop/Linux"
   # mkdir -p "$destination"
    #gdrive download --recursive "$folder_id" --force --path "$destination"
#}

# Check serial number visibility
serial=$(dmidecode -s system-serial-number)
if [ -z "$serial" ]; then
    echo "Serial number not visible. Please replace the ticket from the user."
    exit 1
fi

# Backup necessary files to Google Drive
echo "Please backup necessary files from Desktop, Documents, Downloads, etc., to Google Drive."

# Wipod connected or not
read -p "Are you connected with Wipod? (y/n): " wipod_option
if [ "$wipod_option" == "n" ]; then
    echo "Connect with wipod and try again"
	exit 1
fi


# Ensure all users are available in a Multi-user system
echo "Check multi-user system and confirm all users are available"

# Prompt users for complex Gmail passwords
echo "Guide user to have a complex password e.g. Delhi@#$21212very"

#login as administrator
su - administrator
1nstr4(t0R

# Update Linux systems
sudo apt update -y

#Full permissionon Linux folder on administrator Desktop
sudo chmod 777 /home/administrator/Desktop/Linux
sudo chmod 777 /home/administrator/Desktop/Linux/linux_cip_new.sh

# Run CIP installation script
echo "Running CIP installation script..."

#Installing SSSD tools
sudo apt install -y sssd sssd-tools

cd /home/administrator/Desktop/Linux
cp -r /home/delhivery/Desktop/Linux/ /home/administrator/Desktop/
chmod 777 /home/administrator/Desktop/Linux/
#chmod 777 /home/administrator/Desktop/Linux/linux_cip_new.sh
cd /home/administrator/Desktop/Linux
ls -lrth
cp -rp Google_2026_05_22_46666* /var/
chmod 777 /var/Google_2026_05_22_46666*
cat /home/administrator/Desktop/Linux/sssd_conf.txt > /etc/sssd/sssd.conf
chown root:root /etc/sssd/sssd.conf 
chmod 600 /etc/sssd/sssd.conf 
service sssd restart 
cd /etc/apt
ls -lrth
sudo cp trusted.gpg trusted.gpg.d
cat /home/administrator/Desktop/Linux/custom_conf.txt > /etc/gdm3/custom.conf

echo "deb https://packages.cloud.google.com/apt endpoint-verification main" | sudo tee -a /etc/apt/sources.list.d/endpoint-verification.list
apt install curl -y
apt install -f -y
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
apt-get update
apt-get install endpoint-verification -y
apt install -f -y
getent passwd

#Install ME 
chmod 777 /home/delhivery/Desktop/Linux/RoamingUsers_UEMSLinuxAgent/
chmod 777 /home/delhivery/Desktop/Linux/RoamingUsers_UEMSLinuxAgent/UEMS_LinuxAgent.bin 
cd /home/delhivery/Desktop/Linux/RoamingUsers_UEMSLinuxAgent/
ls -lrth
./UEMS_LinuxAgent.bin 
chmod 777 /home/delhivery/Desktop/Linux/SUAunix64/
chmod 777 /home/delhivery/Desktop/Linux/SUAunix64/SUA_unix_amd64.sh 
cd /home/delhivery/Desktop/Linux/SUAunix64/
ls -lrth

#Install Antivirus
./SUA_unix_amd64.sh
chmod 777 /home/delhivery/Desktop/Linux/Linux64_bit/
chmod 777 /home/delhivery/Desktop/Linux/Linux64_bit/install
cd /home/delhivery/Desktop/Linux/Linux64_bit/
ls -lrth
./install


# Check SSSD service status
status=$(sudo service sssd status | grep "Active:")
if [[ "$status" == *"Active: active (running)"* ]]; then
    echo "SSSD service is active and running."
else
    echo "SSSD service is not running properly. Please check."
fi




# Enable home directory creation
echo "Enabling home directory creation..."
sudo pam-auth-update

# Verify login
echo "Retieving user database"
getent passwd

#Check important files
 echo "check sudo gedit /etc/sssd/sssd.conf and veriy configuration"
 echo "Run gedit /etc/gdm3/custom.conf and check WaylandEnable=true"

# check update for Linux system again
sudo apt update -y

#Allow W-fi SSID permission to all users
cat /home/administrator/Desktop/Linux/org.freedesktop.NetworkManager.policy.txt > /usr/share/polkit-1/actions/org.freedesktop.NetworkManager.policy


# Restart system
read -p "Do you want to restart the system now? (y/n): " restart_option
if [ "$restart_option" == "y" ]; then
    sudo reboot
fi


