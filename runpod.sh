#!/bin/bash

# Update package list and install necessary packages
apt update
apt -y install ocl-icd-opencl-dev
apt -y install nano
apt -y install htop
apt -y install nvtop
apt -y install cmake
apt -y install screen
apt -y install python3-pip

git clone https://github.com/dirrrtyjesus/nappingbear.git
cd nappingbear
chmod +x build.sh
./build.sh

# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x4244A1743BD57A3dbe2aa7914aA0a287437A0EFb/g' config.conf

# Install Python requirements
pip install -U -r requirements.txt
