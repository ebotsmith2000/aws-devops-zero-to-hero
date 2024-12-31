# automate the codeDeploy installation with the following shell script
#!/bin/bash

# Update package list
sudo apt update

# Install Ruby and wget if not already installed
sudo apt install -y ruby wget

# Navigate to the home directory
cd /home/ubuntu

# Download the CodeDeploy agent installer script for Ubuntu
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

# Make the install script executable
chmod +x ./install

# Run the install script
sudo ./install auto

# Start the CodeDeploy agent service
sudo service codedeploy-agent start

# Check the status of the CodeDeploy agent
sudo service codedeploy-agent status

# Inform user of successful installation
echo "AWS CodeDeploy agent installed and started successfully."
