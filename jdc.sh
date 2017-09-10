#!/bin/bash

echo "Making directory for cloning jdc"
mkdir jdc
cd jdc
echo "Into the directory now Initiating clone"
repo init -u git://github.com/AOSP-JF-MM/platform_manifest.git -b aosp-7.1.2
echo "repo initialisation complete now cloning"
repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync -j8
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
git clone https://github.com/iamsj7/android_device_yu_jalebi -b cm-14.1 device/yu/jalebi
git clone https://github.com/iamsj7/android_vendor_yu_jalebi- -b cm-14.1 vendor/yu/jalebi
git clone https://github.com/lineageos/android_kernel_cyanogen_msm8916 -b cm-14.1 kernel/cyanogen/msm8916
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common -b cm-14.1 device/cyanogen/msm8916-common
echo "cloned device repos successfully"
echo "Now you are good to go"
