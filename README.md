## MagiskHide

Portable ptrace-based MagiskHide (from MagiskDelta) for Official Magisk v24.0+ as MagiskHide has been removed. In additional, this module does not need to rely on Riru or Zygisk.

### How to use this

This module is **ONLY** for Official Magisk v24.0+ and does not need Zygisk to be enabled. Which mean you can hide Magisk root without enabling Zygisk.

This module reads DenyList as hidelist, but **DOES NOT** need to enable Zygisk and Enforced DenyList. You can use this module when Zygisk is enabled also but it is meanless.

NOTE: Isolated process and app zygote is not handle-able on Android 10 and lower. So Android 11+ is recommended!

There are two way to modify denylist configuration without enabling Zygisk.

#### Configure Magisk apps

- As Magisk app does not allow you to configure denylist when zygisk is off. You must toggle Zygisk on temprorily (not reboot) to configurate denylist and toggle Zygisk off after done.

#### Configure by CLI

- You can manage denylist by `magisk --denylist`.


- To add pkg/process to denylist, use this command (example adding `com.google.android.gms.unstable`):

```
magisk --denylist add com.google.android.gms com.google.android.gms.unstable
```

- To remove pkg/process to denylist, use this command (example removing `com.google.android.gms.unstable`):

```
magisk --denylist rm com.google.android.gms com.google.android.gms.unstable
```

- Use `magisk --denylist ls` to view denylist configuration

### Bugreport

- If MagiskHide is working, you should see these line in Magisk logs:

<img src="http://huskydg.github.io/img/Screenshot_20230228-102509.png" width="60%"/>

- If there is any problem, use debug version and attach `/cache/magisk.log` when report bug.

### Source code

- <https://github.com/HuskyDG/MagiskHide>
