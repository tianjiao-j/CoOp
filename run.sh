#!/bin/bash

# dtd oxford_pets stanford_cars ucf101 food101 sun397 fgvc_aircraft eurosat caltech101 oxford_flowers imagenet
for DATASET_NAME in dtd oxford_pets stanford_cars ucf101 food101 sun397 fgvc_aircraft eurosat oxford_flowers imagenet
  do
    bash scripts/coop/main.sh ${DATASET_NAME} rn50_ep50 end 16 1 False
    bash scripts/coop/main.sh ${DATASET_NAME} rn50_ep100 end 16 2 False
    bash scripts/coop/main.sh ${DATASET_NAME} rn50_ep100 end 16 4 False
    bash scripts/coop/main.sh ${DATASET_NAME} rn50 end 16 8 False
    bash scripts/coop/main.sh ${DATASET_NAME} rn50 end 16 16 False
done