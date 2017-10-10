#!/bin/bash

echo "Sync complete now Syncing device repos"
git clone https://github.com/chaubeyprateek/android_device_yu_jalebi -b lineage-15.0 device/yu/jalebi
git clone https://github.com/jalebioreo/android_device_cyanogen_msm8916-common -b lineage-15.0 device/cyanogen/msm8916-common
git clone https://github.com/jalebioreo/vendor_yu -b lineage-15.0-stable vendor/yu
git clone https://github.com/jalebioreo/android_kernel_cyanogen_msm8916 -b lineage-15.0 kernel/cyanogen/msm8916
echo "Sync Complete"

echo "Writing compile time script!!"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"
echo "Bye Script complete"
echo "khallas BC"
