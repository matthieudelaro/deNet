# deNet
My own implementation of DNN

##Setup, Compile, and Run
./downloadAssets.sh # download and unzip image data sets

cd build
cmake . # generate Makefile
make # compile the sources

./deNet.exe # run the executable


##File Architecture:
### ./data/
Training and testing data sets reside in ./data. Those are
ignored in the repot, but can be downloaded automatically
by running ./downloadAssets.sh.

### ./build/
Build scripts, CMake files, executables, and other data related to
building process are stored here.
