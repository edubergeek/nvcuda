# nvcuda
NVIDIA Docker CUDA with X11 support

# install nvdocker.sh to /etc/profile.d
sudo cp nvdocker.sh /etc/profile.d
# you must source it or log out and back in
source nvdocker.sh

#build the container (from the directory where git clone was invoked)
docker build -t cuda nvcuda

#run the container with all available GPU cards
nvrun --gpus all cuda
#run the container with a single GPU card
nvrun --gpus 1 cuda
