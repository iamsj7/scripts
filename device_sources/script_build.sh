#!/bin/bash

# Change As Per Your Need(Script Credits LegacyServer)
username=iamsj7
use_ccache="yes"
make_clean="yes"
lunch_command="lineage"
device="$jalebi"
target_command="$bacon"
BUILD_USER="iamsj7"
HOST_NAME="MakeInIndia-SJHub"

# Colors makes things beautiful
export TERM=xterm

    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    blu=$(tput setaf 4)             #  blue
    cya=$(tput setaf 6)             #  cyan
    txtrst=$(tput sgr0)             #  Reset

# CCACHE UMMM!!! Cooks my builds fast

if [ "$use_ccache" = "yes" ];
then
echo -e ${blu}"CCACHE is enabled for this build"${txtrst}
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache/$username
prebuilts/misc/linux-x86/ccache/ccache -M 50G
fi

if [ "$use_ccache" = "yes" ];
then
export CCACHE_DIR=/home/ccache/$username
ccache -C
export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 50G
wait
echo -e ${grn}"CCACHE Cleared"${txtrst};
fi

# Its Clean Time
if [ "$make_clean" = "yes" ];
then
make clean && make clobber
wait
echo -e ${cya}"OUT dir from your repo deleted"${txtrst};
fi

# Build user and host
export KBUILD_BUILD_USER=$BUILD_USER
export KBUILD_BUILD_HOST=$HOST_NAME

# Build ROM
. build/envsetup.sh
lunch "$lunch_command"_"$device"-userdebug
make "$target_command" -j84
