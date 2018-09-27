#!/bin/bash 

export IMAGE_NAME="marlo_random_agent"

crowdai-repo2docker --no-run \
  --user-id 1001 \
  --user-name crowdai \
  --image-name ${IMAGE_NAME} \
  --debug .
