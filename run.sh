
# install gui dependencies
sudo apt-get install build-essential libgtk-3-dev
sudo apt-get install libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
sudo apt-get install --reinstall pkg-config cmake-data

CURR_DIR=$PWD
rf -rf "build"
mkdir "build"
cd build || exit

cmake ..
make
# make test

./app 
./test/common_tests

cd $CURR_DIR