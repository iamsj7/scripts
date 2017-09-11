#!/bin/bash
echo "Making Directory to sync Dirty Unicorns"
mkdir du
cd du
echo "Preparing to sync"
repo init -u http://github.com/DirtyUnicorns/android_manifest.git -b n7x-caf
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -j8

echo "Sync complete Syncing device repos"
git clone https://github.com/iamsj7/android_device_yu_jalebi -b du-nx7-caf device/yu/jalebi
git clone https://github.com/iamsj7/android_vendor_yu_jalebi- -b cm-14.1 vendor/yu/jalebi
git clone https://github.com/lineageos/android_kernel_cyanogen_msm8916 -b cm-14.1 kernel/cyanogen/msm8916
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common -b du-nx7-caf device/cyanogen/msm8916-common
echo "Sync Complete"

echo "Cloning needed msm8916 hals from du&Los-caf"
rm -rf hardware/qcom/display/msm8916
rm -rf hardware/qcom/audio/msm8916
rm -rf hardware/qcom/media/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b cm-14.1-caf-8916 hardware/qcom/audio/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_display -b cm-14.1-caf-8916 hardware/qcom/display/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_media -b cm-14.1-caf-8916 hardware/qcom/media/msm8916
git clone https://github.com/DirtyUnicorns/android_system_qcom -b n7x-caf system/qcom
git clone https://github.com/LineageOS/android_external_ant-wireless_antradio-library -b cm-14.1 external/ant-wireless/antradio-library
git clone https://github.com/LineageOS/hardware_cyanogen -b cm-14.1 hardware/cyanogen
echo "cloned needed hals from du&los successfully"

echo "Writing compiletime script!!"
curl https://raw.githubusercontent.com/LegacyServer/Scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"

echo "Bye Script complete"
