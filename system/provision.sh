apt-get update
apt-get install -y git
apt-get install -y build-essential
apt-get update
apt-get upgrade -y
apt-get autoremove -y
# Create logs directory
su - vagrant -c "mkdir /vagrant/system/logs"


sudo apt-get install -y libtool
sudo apt-get install -y m4 automake
sudo apt-get install -y pkg-config libplist++-dev libplist++3v5 libplist-dbg libplist-dev libplist-doc libplist-utils  libplist3  python-plist
sudo apt-get install -y python-dev libssl-dev libzip-dev

sudo git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd
./autogen.sh && make && sudo make install

cd /home/ubuntu
sudo git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
./autogen.sh && make && sudo make install

cd /home/ubuntu
sudo git clone https://github.com/darmie/ideviceinstaller.git
cd ideviceinstaller
./autogen.sh && make && sudo make install

sudo ldconfig
ideviceinstaller --help
