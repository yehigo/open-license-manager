
rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../../../open-license-manager

make

make install
