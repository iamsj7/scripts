echo "cloning msm8916-caf hals from lineageos git"
rm -rf hardware/qcom/audio-caf/msm8916
rm -rf hardware/qcom/display-caf/msm8916
rm -rf hardware/qcom/meidia-caf/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-15.1-caf-8916  hardware/qcom/audio-caf/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-15.1-caf-8916 hardware/qcom/display-caf/msm8916
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-15.1-caf-8916  hardware/qcom/media-caf/msm8916
echo "done"
