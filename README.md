# nvcuda
NVIDIA Docker CUDA with X11 support

# install the nvrun bash alias
sudo cp nvdocker.sh /etc/profile.d

#you must source it or log out and back in

source nvdocker.sh

# build the container
#build from the directory where git clone was invoked

cd ..

docker build -t cuda nvcuda

# run the container with all available GPU cards

nvrun --gpus all cuda

# run the container with a single GPU card

nvrun --gpus 1 cuda

# installing other packages

_Ubuntu 18.04 images use apt-get_
_E.g. install python3_

apt-get update && apt-get upgrade -y
apt-get -y install python3 python3-pip
