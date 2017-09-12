#!/bin/bash

# run.sh

cd src
make clean
make 
cd ..
./update_image.sh
./run_qemu.sh
