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
`/path/to/ListenerPort.sh &`
to the **`/etc/rc.local`** File
## License
[License](https://github.com/AshkanWatson/PortListener/blob/main/LICENSE)