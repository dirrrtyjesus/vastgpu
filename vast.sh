#!/bin/bash

# Update package list and install necessary packages

sudo apt update
sleep 5
echo "---------------------------"

sudo apt -y install ocl-icd-opencl-dev
sleep 5
echo "---------------------------"

sudo apt -y install nano
sleep 5
echo "---------------------------"

sudo apt -y install htop
sleep 5
echo "---------------------------"

sudo apt -y install nvtop
sleep 5
echo "---------------------------"

sudo apt -y install cmake
sleep 5
echo "---------------------------"

sudo apt -y install python3-pip
sleep 5
echo "---------------------------"

sudo apt -y install screen
sleep 5
echo "---------------------------"

sudo apt -y upgrade
sleep 5
echo "---------------------------"

# Clone the repository and build the project
git clone https://github.com/dirrrtyjesus/dirtybear
sleep 5
echo "---------------------------"

cd dirtybear
sleep 5
echo "---------------------------"

chmod +x build.sh
sleep 5
echo "---------------------------"

./build.sh
sleep 5
echo "---------------------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 5
echo "---------------------------"


