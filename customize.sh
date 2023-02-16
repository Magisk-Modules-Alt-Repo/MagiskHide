[ ! -d "$MODPATH/libs/$ABI" ] && abort "! $ABI not supported"

if [ "$MAGISK_VER_CODE" -lt 24000 ]; then
    abort "! This module only support Magisk v24.0+"
fi

ui_print "- Extract MagiskHide..."
cp -af "$MODPATH/libs/$ABI/magiskhide" "$MODPATH/magiskhide"
rm -rf "$MODPATH/libs"
