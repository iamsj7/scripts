echo "start"
echo "sed loyf"

# TO GET SYNC THE CUSTOM VARIENTS JUST # HASHTAG TO THE DEFUALT LINES AND RMEOVE # FOR CUSTOMS VARIENTS TO GET SYNCED

git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b temp-1 device/yu/jalebi

# PIXEL EXPERIENCE TREE
#git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b PE device/yu/jalebi

# RR OREO TREE
#git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b RR-O device/yu/jalebi

# VALIDUS OREO TREE
#git clone https://github.com/iamsj7/android_device_yu_jalebi-1 -b validus-8.1 device/yu/jalebi

# AOSP EXTENDED TREE
#git clone https://github.com/AospExtended-Devices/android_device_yu_jalebi -b 8.1.x device/yu/jalebi

# LINEAGE COMMON
git clone https://github.com/lineageos/android_device_cyanogen_msm8916-common-1 -b lineage-15.1 device/cyanogen/msm8916-common

# AOSP COMMON (REMOVED ENFORCE RRO FRAMEWORKS)
#git clone https://github.com/iamsj7/android_device_cyanogen_msm8916-common-1 -b aosp-o device/cyanogen/msm8916-common

# KERNEL SOURCE (LINEAGE OS)
git clone https://github.com/lineageos/android_kernel_cyanogen_msm8916 -b lineage-15.1 kernel/cyanogen/msm8916

# VENDOR (SIR PLOX VOLTE)
git clone https://github.com/iamsj7/android_proprietary_vendor_yu -b lineage-15.1-volte vendor/yu

echo "cloned trees"
echo "sycning hals from lineageos"
rm -rf hardware/qcom/audio-caf/msm8916
rm -rf hardware/qcom/display-caf/msm8916
rm -rf hardware/qcom/media-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_audio -b lineage-15.1-caf-8916 hardware/qcom/audio-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_display -b lineage-15.1-caf-8916 hardware/qcom/display-caf/msm8916
git clone https://github.com/lineageos/android_hardware_qcom_media -b lineage-15.1-caf-8916 hardware/qcom/media-caf/msm8916
echo "cloned halls successfully"
curl https://raw.githubusercontent.com/iamsj7/scripts/master/script_build.sh > build.sh
echo "lazy fellow"
echo "ALL THE BEST FOR COMPILE ERROS (I IZ NOOB AF)"
