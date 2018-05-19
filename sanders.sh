echo "Cloning Device Repos"
git clone https://github.com/AospExtended-Devices/device_motorola_sanders -b 8.1.x device/motorola/sanders
git clone https://github.com/BigTopKrazies/vendor_motorola_sanders -b 8.1 vendor/motorola/sanders
git clone https://github.com/PixelExperience/packages_resources_MotoActions -b oreo-mr1 packages/resources/MotoActions
git clone https://github.com/Keertesh19/kernel_motorola_msm8953 -b 8.1-ods kernel/motorola/msm8953
git clone https://github.com/Keertesh19/prebuilts_gcc_linux-x86_aarch64_aarch64-linaro-7.2 -b master prebuilts/gcc/linux-x86/aarch64/aarch64-linaro-7.2
echo "Device Trees Synced"
echo "Syncing Hals"
echo "Good To Go"
echo "Byeee"
