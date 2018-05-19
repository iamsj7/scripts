#!/bin/bash

# DEVICE TREE VARIENTS (AEX/RR/PE/VALIDUS/LINEAGE)
# COMMON TREE VARIENTS (LINEAGE/AOSP)

# VALUES
CLONE_HALLS="YES"
COMMON_TREE="LINEAGE"
DEVICE_TREE="LINEAGE"
BUILD_SCRIPT="YES"

echo "start"
echo "sed loyf"

# LINEAGE TEMP-1 TREE
if [ "$DEVICE_TREE" = "LINEAGE" ];
then
git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b temp-1 device/yu/jalebi
fi

# PIXEL EXPERIENCE DEVICE TREE
if [ "$DEVICE_TREE" = "PE" ];
then
git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b PE device/yu/jalebi
fi

# RR OREO DEVICE TREE
if [ "$DEVICE_TREE" = "RR" ];
then
git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b RR-O device/yu/jalebi
fi

# VALIDUS DEVICE TREE
if [ "$DEVICE_TREE" = "VALIDUS" ];
then
git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b validus-8.1 device/yu/jalebi
fi

# AOSP EXTENDED DEVICE TREE
if [ "$DEVICE_TREE" = "AEX" ];
then
git clone https://github.com/AospExtended-Devices/android_device_yu_jalebi -b 8.1.x device/yu/jalebi
fi

# LINEAGE COMMON
if [ "$COMMON_TREE" = "LINEAGE" ];
then
git clone https://github.com/lineageos/android_device_cyanogen_msm8916-common-1 -b lineage-15.1 device/cyanogen/msm8916-common
fi

# AOSP COMMON (REMOVED ENFORCE RRO FRAMEWORKS)
if [ "$COMMON_TREE" = "AOSP" ];
then
git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common-1 -b aosp-o device/cyanogen/msm8916-common
fi

# KERNEL SOURCE (LINEAGE OS)
git clone https://github.com/lineageos/android_kernel_cyanogen_msm8916 -b lineage-15.1 kernel/cyanogen/msm8916

# VENDOR (SIR PLOX VOLTE)
git clone https://github.com/iamsj7/android_proprietary_vendor_yu -b lineage-15.1-volte vendor/yu
echo "cloned trees"

# HALLS
if [ "$CLONE_HALLS" = "YES" ];
then
echo "sycning hals from lineageos"
rm -rf hardware/qcom/audio-caf/msm8916
rm -rf hardware/qcom/display-caf/msm8916
rm -rf hardware/qcom/media-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_audio -b lineage-15.1-caf-8916 hardware/qcom/audio-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_display -b lineage-15.1-caf-8916 hardware/qcom/display-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_media -b lineage-15.1-caf-8916 hardware/qcom/media-caf/msm8916
echo "cloned halls successfully"
fi

# BUILD SCRIPT
if [ "$BUILD_SCRIPT" = "YES" ];
then
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > build.sh
fi
echo "lazy fellow"
echo "ALL THE BEST FOR COMPILE ERROS (I IZ NOOB AF)"
