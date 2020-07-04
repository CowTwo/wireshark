echo "Please remember to execute this script inside myUtility container"
cwd=$(pwd)
cd wireshark-3.2.4

if [ -d "./build" ] 
then
    echo "Directory ./build exists, remove it" 
    rm -rf ./build
fi

cp CMakeOptions.txt.origin CMakeOptions.txt
mkdir ./build
cd ./build
cmake ../
make

cd $cwd
