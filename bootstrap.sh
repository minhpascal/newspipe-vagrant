#!/bin/sh


sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential git

# Clone the source code of JARR
git clone https://github.com/newspipe/newspipe.git
if [ $? -ne 0 ]; then
    echo "\nERROR: unable to clone the git repository\n"
    exit 1;
fi

cd newspipe/
chmod u+x ./install.sh
./install.sh sqlite


# Start Newspipe at startup
#TODO: start with systemd


# Start the application.
nohup python3.5 src/runserver.py &


#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/30 * * * * cd /home/ubuntu/newspipe/ ; python3.5 src/manager.py fetch_asyncio" >> mycron
#install new cron file
crontab mycron
rm mycron
