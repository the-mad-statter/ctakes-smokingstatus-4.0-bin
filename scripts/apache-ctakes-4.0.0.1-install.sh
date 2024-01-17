#!/bin/sh

# Step 1: Set your UMLS API Credentials
echo "Remember to set your UMLS API Credentials"

cd /tmp


# Step 2. Install cTAKES Core
wget https://dlcdn.apache.org//ctakes/ctakes-4.0.0.1/apache-ctakes-4.0.0.1-bin.tar.gz
tar -xvf apache-ctakes-4.0.0.1-bin.tar.gz -C /usr/local


# Step 3. Install cTAKES Resources
wget http://sourceforge.net/projects/ctakesresources/files/ctakes-resources-4.0-bin.zip
unzip -o ctakes-resources-4.0-bin.zip
\cp -rf ./resources/* /usr/local/apache-ctakes-4.0.0.1/resources

# Step 4. Install cTAKES Smoking Status
wget https://github.com/the-mad-statter/ctakes-smokingstatus-4.0-bin/raw/main/bin/ctakes-smokingstatus-4.0-bin.tar.gz
tar -xvf ctakes-smokingstatus-4.0-bin.tar.gz -C /usr/local/apache-ctakes-4.0.0.1
chmod +x /usr/local/apache-ctakes-4.0.0.1/bin/runSmokingStatusCPE.sh
chmod +x /usr/local/apache-ctakes-4.0.0.1/bin/runctakesCPE2.sh
