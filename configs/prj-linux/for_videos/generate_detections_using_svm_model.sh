#!/bin/bash

# Path to VIAME installation
export VIAME_INSTALL=/opt/noaa/viame

# Processing options
export INPUT_DIRECTORY=videos
export FRAME_RATE=5

# Setup paths and run command
source ${VIAME_INSTALL}/setup_viame.sh

python ${VIAME_INSTALL}/configs/process_video.py \
  -d ${INPUT_DIRECTORY} -frate ${FRAME_RATE} \
  -p pipelines/detector_use_svm_models.pipe
