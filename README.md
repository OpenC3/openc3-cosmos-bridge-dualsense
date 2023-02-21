# OpenC3 COSMOS Bridge for Dual Sense

This bridges provides an interface to connect to a Sony PS5 DualSense Controller in a COSMOS bridge
It currently uses a limited driver to the api called myhidapi, that works well on MacOs but may not work on
other OS. Let us know!

## Pair the Dual Sense Controller with your computer and turn it on.

1. Open your OS bluetooth settings
1. On the controller, pairing is initialized by pressing and holding the home button and the share button

## Install and Run the Bridge

1. gem install openc3
1. Instill libhidapi and development headers for your operating system. (MacOS: brew install hidapi) See https://github.com/libusb/hidapi
1. gem install openc3-cosmos-bridge-dualsense
1. Update the next step with your specific settings
1. openc3cli bridgegem openc3-cosmos-bridge-dualsense router_port=2951

## Install the COSMOS Plugin

1. Download the openc3-cosmos-dualsense plugin from rubygems.org
1. Install in the COSMOS Admin Tool
