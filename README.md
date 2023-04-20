# Port Listener
 This Script Check Port Of Connection And If Connection Lost It Can Be Automaticly Reboot Server
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
## Setup
To Make The Script Run Automatically After A Reboot, You Can Follow Steps: 
Adding The Line:
`/path/to/ListenerPort.sh &`
to the **`/etc/rc.local file`**
## license
[License](https://github.com/AshkanWatson/PortListener/blob/main/LICENSE)