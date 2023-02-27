[ ! -d "$MODPATH/libs/$ABI" ] && abort "! $ABI not supported"

if ! $BOOTMODE; then
    abort "! Installing from recovery is not supported"
fi

if [ "$MAGISK_VER_CODE" -lt 24000 ]; then
    abort "! This module only support Magisk v24.0+"
fi

ui_print "- Extract MagiskHide..."
cp -af "$MODPATH/libs/$ABI/magiskhide" "$MODPATH/magiskhide"
rm -rf "$MODPATH/libs"

if [ ! -d "$(magisk --path)/.magisk/modules/$MODID" ]; then
    URL="http://github.com/huskydg/magiskhide"
    am start -a android.intent.action.VIEW -d "$URL" &>/dev/null
fi
