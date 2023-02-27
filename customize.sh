[ ! -d "$MODPATH/libs/$ABI" ] && abort "! $ABI not supported"

if ! $BOOTMODE; then
    abort "! Installing from recovery is not supported"
fi

if [ "$MAGISK_VER_CODE" -lt 24000 ]; then
    abort "! This module only support Magisk v24.0+"
fi

if echo "$MAGISK_VER" | grep -q "alpha"; then
    ui_print "! Broken third party Magisk detected"
    ui_print "- Magisk alpha is known to have some broken changes"
    ui_print "  which will cause this module does not work normally"
    ui_print "- Please use Official Magisk instead"
fi

ui_print "- Extract MagiskHide..."
cp -af "$MODPATH/libs/$ABI/magiskhide" "$MODPATH/magiskhide"
rm -rf "$MODPATH/libs"

if [ ! -d "$(magisk --path)/.magisk/modules/$MODID" ]; then
    URL="http://github.com/huskydg/magiskhide"
    am start -a android.intent.action.VIEW -d "$URL" &>/dev/null
fi
