#!/bin/bash

echo "Sync complete Syncing device repos"
git clone https://github.com/iamsj7/android_device_yu_jalebi -b 7.x device/yu/jalebi
git clone https://github.com/iamsj7/proprietary_vendor_yu -b 7.x vendor/yu
git clone https://github.com/iamsj7/upstream_kernel_jalebi -b 7.x-caf kernel/cyanogen/msm8916
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common -b 7.x device/cyanogen/msm8916-common
echo "Sync Complete"

echo "Writing compile time script!!"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"
echo "Bye Script complete"
echo "khallas BC"
