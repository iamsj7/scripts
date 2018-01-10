#!/bin/bash
echo "Making Directory to sync AOSiP"
mkdir aosip
cd aosip
echo "Preparing to sync"
repo init -u https://github.com/AOSiP/platform_manifest.git -b nougat-mr2
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -j8

echo "Syncing device repos"
git clone https://github.com/iamsj7/android_device_yu_jalebi -b 7.x device/yu/jalebi
git clone https://github.com/iamsj7/proprietary_vendor_yu -b 7.x vendor/yu
git clone https://github.com/iamsj7/upstream_kernel_jalebi -b 7.x-caf kernel/cyanogen/msm8916
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common -b 7.x device/cyanogen/msm8916-common
echo "Sync Complete"

echo "Cloning needed msm8916 hals from Los-caf"
rm -rf hardware/qcom/display
rm -rf hardware/qcom/audio
rm -rf hardware/qcom/media/
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b cm-14.1-caf-8916 hardware/qcom/audio
git clone https://github.com/LineageOS/android_hardware_qcom_display -b cm-14.1-caf-8916 hardware/qcom/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b cm-14.1-caf-8916 hardware/qcom/media
git clone https://github.com/lineageos/android_hardware_cyanogen -b cm-14.1 hardware/cyanogen
echo "cloned needed hals from los successfully"
echo "Writing compile time script!!"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"
echo "Bye Script complete"
