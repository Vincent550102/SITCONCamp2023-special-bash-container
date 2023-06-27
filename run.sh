#!/bin/bash
docker build -t my-bash-image . && sudo docker run -it --rm my-bash-image
