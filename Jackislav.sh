#!/bin/bash

# Update package list and install necessary packages

sudo apt update


sudo apt -y install ocl-icd-opencl-dev nano htop cmake python3-pip screen


# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git


cd XENGPUMiner


chmod +x build.sh
chmod +x miner.sh


./build.sh


# Update the configuration file
sed -i 's/account = 0x24691e54afafe2416a8252097c9ca67557271475/account = 0x4244A1743BD57A3dbe2aa7914aA0a287437A0EFb/g’ config.conf
# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 5;
sudo nohup ./miner.sh -g1 -c2 > miner.log 2>&1 &
