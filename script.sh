
#!/bin/bash

# Update the package list and install necessary dependencies
sudo yum update -y
sudo yum install -y curl git

# Install Node.js and npm using NodeSource repository
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y nodejs

# Check Node.js and npm versions
node -v
npm -v

# Install Git
sudo yum install -y git

# Check Git version
git --version

cd /home/ec2-user
# Clone the repository
git clone https://github.com/VenkataSridhar3012/autoscaling-elasticLoadBalance.git

# Change into the cloned directory
cd autoscaling-elasticLoadBalance

# Set necessary permissions (adjust permissions according to your app's needs)
sudo chmod -R 755 .

# Install Node.js project dependencies
npm install

# Start the Node.js application
node app.js > app.out.log 2> app.err.log < /dev/null &
