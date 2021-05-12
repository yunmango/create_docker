#!/bin/bash
IMAGE_NAME=$1
if [ "$#" -ne 1 ]; then
    docker images
else  
      docker run --gpus all -it --ipc=host --net=host --privileged -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -e NVIDIA_DRIVER_CAPABILITIES=all -v "$HOME/Workspace/Project/perception_mobility/workspace:/root/workspace:rw" -v "$HOME/Workspace/Project/perception_mobility/catkin_ws:/root/catkin_ws:rw" -v "$HOME/Data:/root/data:rw" $IMAGE_NAME /bin/bash  
      
        
fi


