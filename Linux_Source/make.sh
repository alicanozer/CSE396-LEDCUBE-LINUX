sudo svn checkout svn://svn.code.sf.net/p/irrlicht/code/trunk irrlicht-trunk
sudo svn update
sudo apt-get install g++
sudo apt-get -y install build-essential
sudo apt-get -y install xserver-xorg-dev
sudo apt-get -y install x11proto-xf86vidmode-dev
sudo apt-get -y install libxxf86vm-dev mesa-common-dev
sudo apt-get -y install libgl1-mesa-dev
sudo apt-get -y install libglu1-mesa-dev
sudo apt-get -y install libxext-dev
sudo apt-get -y install libxcursor-dev

cd source/Irrlicht && make
cd ../..
sudo cp -r include/* /usr/local/include/
sudo cp lib/Linux/libIrrlicht.a /usr/local/lib

cd proje_src
make
