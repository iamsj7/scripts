echo "cloning device repos"
git clone https://github.com/lineageos/android_device_asus_mofd-common -b cm-14.1 device/asus/mofd-common
git clone https://github.com/lineageos/android_device_asus_Z008 -b cm-14.1 device/asus/Z008
git clone https://github.com/lineageos/android_kernel_asus_moorefield -b cm-14.1 kernel/asus/moorefield
git clone https://github.com/TheMuppets/proprietary_vendor_asus -b cm-14.1 vendor/asus
echo "done"
echo "wew you are good to go"
