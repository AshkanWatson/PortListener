# Port Listener
 This Script Is Listener Of Port And If Connection Lost It Can Be Automatically Reboot Server
## Installation
```
# Clone The Repository
git clone https://github.com/AshkanWatson/PortListener.git

# Enter Into The Directory
cd PortListener

# Make The Script Executable
chmod +x PortListener.sh

# Run The Script
./PortListener.sh
```
You Can Put This Script On Startup App To Run After Reboot Too For Do This Check [Setup Section](https://github.com/AshkanWatson/PortListener#setup)
## Setup
To Make The Script Run Automatically After A Reboot, You Can Follow Steps:
Adding The Line:
`/path/to/PortListener.sh &`
to the **`/etc/rc.local`** File

And If You Don't Have *rc.loacl* File In Your */etc* Follow These Steps:
```
# For Enable Automatically
Enable rc.local service

# Manually Create A Systemd Service
sudo nano /etc/systemd/system/rc-local.service
# Now Enter The Following Text, Save And Close The File.
[Unit]
 Description=/etc/rc.local Compatibility
 ConditionPathExists=/etc/rc.local

[Service]
 Type=forking
 ExecStart=/etc/rc.local start
 TimeoutSec=0
 StandardOutput=tty
 RemainAfterExit=yes
 SysVStartPriority=99

[Install]
 WantedBy=multi-user.target

# Create and Edit rc.local file
sudo nano /etc/rc.local
# Paste in the following, this ensures that the script is bash executable, all bash scripts shoul have this at the top save and close the file.
*#!/bin/bash*

sudo chmod +x /etc/rc.local

#Enable the service on boot
sudo systemctl enable rc-local

sudo systemctl status rc-local

```
## License
[License](https://github.com/AshkanWatson/PortListener/blob/main/LICENSE)