#!/bin/bash

echo "---- Running post-deployment script on Ubuntu EC2 ----"

# Move to the app directory if needed
cd /home/ubuntu/app || exit

# Install Node.js dependencies
echo "Installing dependencies..."
npm install

# Optional: stop existing app if using pm2 or node
echo "Restarting app..."
pm2 restart app || pm2 start app.js --name app

echo "---- Post-deployment script finished ----"
