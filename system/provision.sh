apt-get install software-properties-common
add-apt-repository ppa:george-edison55/cmake-3.x
apt-get update
apt-get update
apt-get install -y git
apt-get install -y build-essential
apt-get update
apt-get upgrade -y
apt-get autoremove -y
# Create logs directory
#sudo mkdir /vagrant/system/logs


sudo apt-get install -y libtool
sudo apt-get install -y m4 automake
sudo apt-get install -y pkg-config libplist++-dev libplist++3v5 libplist-dbg libplist-dev libplist-doc libplist-utils  libplist3  python-plist
sudo apt-get install -y python-dev libssl-dev libzip-dev
sudo apt-get install -y llvm-dev uuid-dev gobjc++
sudo apt-get install -y cmake

# Install python packager
sudo apt-get install -y python-pip 

cd /home/ubuntu
sudo git clone https://github.com/darmie/isign.git
cd isign
sudo ./INSTALL.sh


sudo git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd
./autogen.sh && make && sudo make install
sudo rm -rf /home/ubuntu/libusbmuxd

cd /home/ubuntu
sudo git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
./autogen.sh && make && sudo make install
sudo rm -rf /home/ubuntu/libimobiledevice

cd /home/ubuntu
sudo git clone https://github.com/darmie/ideviceinstaller.git
cd ideviceinstaller
./autogen.sh && make && sudo make install
sudo rm -rf /home/ubuntu/ideviceinstaller

#cd /home/ubuntu
#wget https://cmake.org/files/v3.10/cmake-3.10.0.tar.gz
#tar xzf cmake-3.10.0.tar.gz
#cd cmake-3.10.0
#./bootstrap && make && sudo make install
#sudo rm -rf /home/ubuntu/cmake-3.10.0.*


cd /home/ubuntu
sudo mkdir cctools
sudo git clone https://github.com/tpoechtrager/apple-libtapi.git
cd apple-libtapi
INSTALLPREFIX=/home/ubuntu/cctools ./build.sh && ./install.sh
sudo rm -rf /home/ubuntu/apple-libtapi


cd ~
cd /home/ubuntu
sudo git clone git://github.com/mackyle/xar
cd xar/xar
./autogen.sh && ./configure && make && sudo make install
sudo rm -rf /home/ubuntu/xar

cd ~
cd /home/ubuntu
sudo git clone https://github.com/tpoechtrager/cctools-port.git
cd cctools-port/cctools
./autogen.sh && ./configure --prefix=/home/ubuntu/cctools --with-libtapi=/home/ubuntu/cctools --target=arm-apple-darwin11 && make && sudo make install
sudo rm -rf /home/ubuntu/cctools-port
#cd /home/ubuntu/cctools-port/usage_examples/ios_toolchain/


sudo ldconfig
#ideviceinstaller --help
