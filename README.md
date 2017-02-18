## Lineage OS device tree for Galaxy S5+ / G901F / kccat6

Build manifest `.repo/local_manifests/kccat6.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="IonKiwi/android_device_samsung_kccat6xx" path="device/samsung/kccat6xx" remote="github" revision="cm-14.1" />
  <project name="IonKiwi/android_kernel_samsung_kccat6" path="kernel/samsung/kccat6" remote="github" revision="cm-14.1" />
  <project name="IonKiwi/android_device_samsung_lentislte-common" path="device/samsung/lentislte-common" remote="github" revision="cm-14.1" />
  <project name="IonKiwi/android_vendor_samsung_kccat6xx" path="vendor/samsung/kccat6xx" remote="github" revision="master" />
  <project name="IonKiwi/android_vendor_samsung_lentislte-common" path="vendor/samsung/lentislte-common" remote="github" revision="master" />
  
  <project name="LineageOS/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-14.1" />
  <project name="LineageOS/android_device_samsung_qcom-common" path="device/samsung/qcom-common" remote="github" revision="cm-14.1" />
  <project name="LineageOS/android_external_stlport" path="external/stlport" remote="github" revision="cm-14.1" />
  <project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" revision="cm-14.1" />
  <project name="LineageOS/android_packages_resources_devicesettings" path="packages/resources/devicesettings" remote="github" revision="cm-14.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
source build/envsetup.sh
brunch kccat6xx
```
