
alias nvrun='docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -it -v /scratch/${USER}/:/scratch/ -v /stage/${USER}/:/stage/ -v /fast/${USER}/:/fast/ -v /tmp/.X11-unix/:/tmp/.X11-unix -v "/home/$USER/.Xauthority:/tmp/Xauthority" --env="DISPLAY=${DISPLAY}" -p "8888:8888" '
