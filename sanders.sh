echo "Cloning Device Repos"
git clone https://github.com/AospExtended-Devices/device_motorola_sanders -b 8.1.x device/motorola/sanders
git clone https://github.com/GZR-Kernels/kernel_motorola_msm8953_sanders -b 8.1-ods kernel/motorola/msm8953
git clone https://github.com/BigTopKrazies/vendor_motorola_sanders -b 8.1 vendor/motorola/sanders
git clone https://github.com/PixelExperience/packages_resources_MotoActions -b oreo-mr1 packages/resources/MotoActions
echo "Device Trees Synced"
echo "Syncing Hals"
rm -rf hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/media-caf/msm8937
rm -rf hardware/qcom/display-caf/msm8937
git clone https://github.com/boulzordev/android_hardware_qcom_display -b bzr-8.1-8937 hardware/qcom/display-caf/msm8937
git clone https://github.com/boulzordev/android_hardware_qcom_media -b bzr-8.1-8937 hardware/qcom/media-caf/msm8937
git clone https://github.com/boulzordev/android_hardware_qcom_audio -b bzr-8.1-8937 hardware/qcom/audio-caf/msm8937
echo "Syncing Hals Completed"
echo "Good To Go"
echo "Byeee"
