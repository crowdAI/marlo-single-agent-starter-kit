#!/bin/bash 

########################################################################
# This script tests the submission locally by mimicking (to some extent)
# what happens on the evaluation serber
########################################################################

export IMAGE_NAME="marlo_random_agent"

# Build Image from the repository 
./build.sh

# Ensure you have a Minecraft Client running on port 10000
# by doing : $MALMO_MINECRAFT_ROOT/launchClient.sh -port 10000

docker run --net=host -it $IMAGE_NAME /home/crowdai/run.sh

# Now if everything works out well, then you should see the agent inside 
# the docker container interacting with the minecraft client on your host.
