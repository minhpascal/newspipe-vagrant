#!/bin/sh


sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y build-essential git

# Clone the source code of JARR
git clone https://github.com/JARR/JARR.git
if [ $? -ne 0 ]; then
    echo "\nERROR: unable to clone the git repository\n"
    exit 1;
fi

cd JARR/
chmod u+x ./install.sh
./install.sh sqlite


# Start JARR at startup
#echo "#!/bin/sh -e" > /etc/rc.local
#echo "cd /home/vagrant/JARR/" >> /etc/rc.local
#echo "sudo -u vagrant python3.5 src/runserver.py &" >> /etc/rc.local
#echo "exit 0" >> /etc/rc.local
#chmod 755 /etc/rc.local

# Start the application.
#sudo /etc/init.d/rc.local start
nohup python3.5 src/runserver.py &


#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/30 * * * * cd /home/ubuntu/JARR/ ; python3.5 src/manager.py fetch_asyncio None None" >> mycron
#install new cron file
crontab mycron
rm mycron
