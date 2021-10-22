#!/bin/bash

make clean
. build/envsetup.sh
lunch omni_Stratus_C5-eng
mka recoveryimage

echo " Recovery Should Be Built"
echo ""
read
