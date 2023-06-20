#!/bin/bash

clear
echo "___________________________________________________________________________"
echo " ▄▄▄        ██████  ██░ ██  ██ ▄█▀ ▄▄▄       ███▄    █                     "
echo "▒████▄    ▒██    ▒ ▓██░ ██▒ ██▄█▒ ▒████▄     ██ ▀█   █                     "
echo "▒██  ▀█▄  ░ ▓██▄   ▒██▀▀██░▓███▄░ ▒██  ▀█▄  ▓██  ▀█ ██▒                    "
echo "░██▄▄▄▄██   ▒   ██▒░▓█ ░██ ▓██ █▄ ░██▄▄▄▄██ ▓██▒  ▐▌██▒                    "
echo " ▓█   ▓██▒▒██████▒▒░▓█▒░██▓▒██▒ █▄ ▓█   ▓██▒▒██░   ▓██░                    "
echo " ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒▒ ▒▒ ▓▒ ▒▒   ▓▒█░░ ▒░   ▒ ▒                     "
echo "  ▒   ▒▒ ░░ ░▒  ░ ░ ▒ ░▒░ ░░ ░▒ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░                    "
echo "  ░   ▒   ░  ░  ░   ░  ░░ ░░ ░░ ░   ░   ▒      ░   ░ ░                     "
echo "      ░  ░      ░   ░  ░  ░░  ░         ░  ░         ░                     "
echo "                                                       Made By AshkanWatson"
echo "                                            https://github.com/AshkanWatson"
echo "___________________________________________________________________________"
sleep 1
# Prompt the user to enter the IP address of the server
read -p "Enter the IP address of the server: " IP

# Prompt the user to enter the port number to check for connection
read -p "Enter the port number to check for connection (e.g. 443): " PORT

# Set the check interval in seconds
INTERVAL=60

# Set the log file name and path for reboot log
REBOOT_LOG_FILE=/var/log/reboot.log

# Set the log file name and path for script run log
SCRIPT_LOG_FILE="$HOME/Desktop/script.log"

echo "Script started running at $(date '+%Y-%m-%d %H:%M:%S')" >> $SCRIPT_LOG_FILE

while true; do
    nc -z -w5 $IP $PORT > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Connection to $IP:$PORT successful."
    else
        echo "Connection to $IP:$PORT failed. Rebooting server..."
        shutdown -r now
        echo "Server rebooted at $(date '+%Y-%m-%d %H:%M:%S')" >> $REBOOT_LOG_FILE
    fi
    sleep $INTERVAL
done
