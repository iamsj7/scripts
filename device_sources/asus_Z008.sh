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
