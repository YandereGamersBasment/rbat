#!/bin/bash

clear
echo -e "\033[1;32m"
cat << "EOF"
      | |         | |  
  _ __| |__   __ _| |_ 
 | '__| '_ \ / _` | __|
 | |  | |_) | (_| | |_ 
 |_|  |_.__/ \__,_|\__|

EOF
echo -e "\033[0m"

read -p "reminder you must have wine einstalled for rbat to work " wine
echo ""
read -p "Do you want to install the 'rbat' script to /usr/local/bin/? [y/n] " choice

if [ "$choice" == "y" ]; then
    sudo cp rbat.sh /usr/local/bin/rbat
    sudo chmod +x /usr/local/bin/rbat
    echo ""
    echo "Installing software..."
echo -ne '##                  (10%)\r'
sleep 1
echo -ne '####                (25%)\r'
sleep 1
echo -ne '########            (50%)\r'
sleep 1
echo -ne '############        (75%)\r'
sleep 1
echo -ne '################    (100%)\r'
echo -ne '\n'
echo "Installation complete!"
    echo -e "\033[1;32mThe 'rbat' script has been installed to /usr/local/bin/\033[0m"
       echo -e "\033[1;32mYou can now use the command rbat <BatchFileName>.bat to run Windows Batch files\033[0m"
else
    echo -e "\033[1;31mInstallation cancelled\033[0m"
fi
