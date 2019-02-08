#!/bin/bash

echo "Making directory for cloning jdc"
mkdir jdc
cd jdc
echo "Into the directory now Initiating clone"
repo init -u git://github.com/AOSP-JF-MM/platform_manifest.git -b aosp-7.1.2
echo "repo initialisation complete now cloning"
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -j16
repo sync
echo "Cloned JDC successfully"
echo "Cloning needed msm8916 hals from DU"
git clone https://github.com/DirtyUnicorns/android_hardware_qcom_audio -b n7x-caf-8916 hardware/qcom/audio-caf/msm8916
git clone https://github.com/DirtyUnicorns/android_hardware_qcom_media -b n7x-caf-8916 hardware/qcom/media-caf/msm8916
git clone https://github.com/DirtyUnicorns/android_hardware_qcom_display -b n7x-caf-8916 hardware/qcom/display-caf/msm8916
echo "cloned needed hals from du successfully"
echo "cloning hardware/cyanogen"
git clone https://github.com/LineageOS/android_hardware_cyanogen -b cm-14.1 hardware/cyanogen
echo "msm8916 environment setup done"
echo "cloning device repo"
echo "clone needed device repos and you are good to go"
git clone https://github.com/iamsj7/android_device_yu_jalebi -b 7.x device/yu/jalebi
git clone https://github.com/iamsj7/proprietary_vendor_yu -b 7.x vendor/yu
git clone https://github.com/iamsj7/upstream_kernel_jalebi -b 7.x-caf kernel/cyanogen/msm8916
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common -b 7.x device/cyanogen/msm8916-common
echo "cloned device repos successfully"
echo "Writing compile time script!!"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > script_build.sh
echo "Writing Script Done"
echo "Now you are good to go"
