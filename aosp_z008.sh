echo "Syncing Intel Repos From Lineageos"
git clone https://github.com/lineageos/android_hardware_intel_common_libmix -b cm-14.1 hardware/intel/common/libmix
git clone https://github.com/LineageOS/android_hardware_intel_common_libva -b cm-14.1 hardware/intel/common/libva
git clone https://github.com/LineageOS/android_hardware_intel_common_libwsbm -b cm-14.1 hardware/intel/common/libwsbm
git clone https://github.com/LineageOS/android_hardware_intel_common_omx-components -b cm-14.1 hardware/intel/common/omx-components
git clone https://github.com/LineageOS/android_hardware_intel_common_utils -b cm-14.1 hardware/intel/common/utils
git clone https://github.com/LineageOS/android_hardware_intel_img_hwcomposer -b cm-14.1 hardware/intel/img/hwcomposer
git clone https://github.com/LineageOS/android_hardware_intel_img_psb_headers -b cm-14.1 hardware/intel/img/psb_headers
git clone https://github.com/LineageOS/android_hardware_intel_img_psb_video -b cm-14.1 hardware/intel/img/psb_video
echo "Syncing Intel Repos From Google Source"
git clone https://android.googlesource.com/platform/hardware/intel/audio_media -b nougat-mr2-release hardware/intel/audio_media
git clone https://android.googlesource.com/platform/hardware/intel/bootstub -b nougat-mr2-release hardware/intel/bootstub
git clone https://android.googlesource.com/platform/hardware/intel/common/libstagefrighthw -b nougat-mr2-release hardware/intel/common/libstagefrighthw
git clone https://android.googlesource.com/platform/hardware/intel/common/wrs_omxil_core -b nougat-mr2-release hardware/intel/common/wrs_omxil_core
git clone https://android.googlesource.com/platform/hardware/intel/common/bd_prov -b nougat-mr2-release hardware/intel/common/bd_prov
echo "Intel Repos Sucessfully Cloned"
echo "syncing Device sources"
echo "cloning device repos"
git clone https://github.com/lineageos/android_device_asus_mofd-common -b cm-14.1 device/asus/mofd-common
git clone https://github.com/lineageos/android_device_asus_Z008 -b cm-14.1 device/asus/Z008
git clone https://github.com/lineageos/android_kernel_asus_moorefield -b cm-14.1 kernel/asus/moorefield
git clone https://github.com/TheMuppets/proprietary_vendor_asus -b cm-14.1 vendor/asus
echo "done"
echo "syncying device dependencies"
git clone https://github.com/lineageos/android_external_stlport -b cm-14.1 external/stlport
git clone https://github.com/lineageos/android_packages_resources_devicesettings -b cm-14.1 packages/resources/devicesettings
git clone https://github.com/lineageos/android_packages_apps_FlipFlap -b cm-14.1 packages/apps/FlipFlap
echo "wew you are good to go"

echo "script done"
