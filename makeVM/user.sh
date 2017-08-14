echo $(whoami)
pkill -u vagrant
usermod vagrant -l butterfly -d /home/butterfly
echo "butterfly:butterfly" | sudo chpasswd
