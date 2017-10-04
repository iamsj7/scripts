#!/bin/bash
echo "Making Directory to sync AIM"
mkdir aim
cd aim
echo "Preparing to sync"
repo init -u git://github.com/AIMROM/manifest.git -b o
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -j8

echo "Sync complete now Syncing device repos"
git clone https://github.com/chaubeyprateek/android_device_yu_jalebi -b lineage-15.0 device/yu/jalebi
git clone https://github.com/jalebioreo/android_device_cyanogen_msm8916-common -b lineage-15.0 device/cyanogen/msm8916-common
git clone https://github.com/jalebioreo/vendor_yu  -b lineage-15.0-stable vendor/yu
git clone https://github.com/jalebioreo/android_kernel_cyanogen_msm8916 -b lineage-15.0 kernel/cyanogen/msm8916
rm -rm hardware/qcom/wlan-caf
git clone https://github.com/jalebioreo/android_hardware_qcom_wlan -b lineage-15. 0-caf hardware/qcom/wlan-caf
echo "Sync Complete"

echo "Writing compile time script!!"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"
echo "Bye Script complete"
echo "khallas BC"
