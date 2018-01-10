#!/bin/bash

# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache/$username
prebuilts/misc/linux-x86/ccache/ccache -M 50G

# clean
make clean && make clobber

export KBUILD_BUILD_USER=$username

export KBUILD_BUILD_HOST=$hostname

# build
. build/envsetup.sh
lunch $RomlunchCode_$devicecode-userdebug
make $makecommand -j16
