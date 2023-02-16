## MagiskHide

Portable ptrace-based MagiskHide (from MagiskDelta) for Official Magisk v24.0+ as MagiskHide has been removed. In addition, this module does not need to install Riru or enable Zygisk.

### How to use this

This module is **ONLY** for Official Magisk v24.0+ and does not need Zygisk to be enabled.

This module reads DenyList as hidelist, but **DOES NOT** need to enable Zygisk and Enforced DenyList

There is two way to modify denylist configuration without enabling Zygisk.

#### Configure Magisk apps

1. Install this module, turn off Zygisk and reboot.
2. Temproprily toggle on Zygisk (I don't tell you to enable Zygisk) as you cannot configure DenyList when Zygisk switch is toggled off
3. Configure apps you want to hide, add it to denylist
4. Toggle off Zygisk

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

## Source code

- <https://github.com/HuskyDG/MagiskHide>
