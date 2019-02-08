echo "syncing trees"
git clone https://github.com/dev-harsh1998/android_device_lenovo_a6000 -b lineage-15.1 device/lenovo/a6000
git clone https://github.com/dev-harsh1998/android_device_lenovo_msm8916-common -b lineage-15.1 device/lenovo/msm8916-common
git clone https://github.com/dev-harsh1998/proprietary-vendor_lenovo -b vendor/lenovo
git clone https://github.com/dev-harsh1998/kernel_lenovo_msm8916 -b lineage-15.1 kernel/lenovo/a6000
echo "done"
