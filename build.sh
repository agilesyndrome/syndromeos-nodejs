#!/bin/bash


# Generic python verions
while read v; do
  make NODE_VERSION=$v docker
  make NODE_VERSION=$v publish
done <VERSIONS

## Python apps based off those versions
#make -C python_apps all

