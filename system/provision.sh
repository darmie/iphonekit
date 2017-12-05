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
sudo apt-get install -y llvm-dev uuid-dev gobjc++

# Install python packager
sudo apt-get install -y python-pip 
pip install pyOpenSSL
pip install isign 

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

cd /home/ubuntu
wget https://cmake.org/files/v3.10/cmake-3.10.0.tar.gz
tar xzf cmake-3.10.0.tar.gz
cd cmake-3.10.0
./bootstrap && make && sudo make install
sudo rm /home/ubuntu/cmake-3.10.0.*

cd /home/ubuntu
sudo mkdir cctools
sudo git clone https://github.com/tpoechtrager/apple-libtapi.git
cd apple-libtapi
INSTALLPREFIX=/home/ubuntu/cctools ./build.sh && ./install.sh


cd ~
cd /home/ubuntu
sudo git clone git://github.com/mackyle/xar
cd xar/xar
./autogen.sh && ./configure && make && sudo make install

cd ~
cd /home/ubuntu
sudo git clone https://github.com/tpoechtrager/cctools-port.git
cd cctools-port/cctools
./autogen.sh && ./configure --prefix=/home/ubuntu/cctools --with-libtapi=/home/ubuntu/cctools --target=arm-apple-darwin11 && make && sudo make install

cd /home/ubuntu/cctools-port/usage_examples/ios_toolchain/


sudo ldconfig
#ideviceinstaller --help
