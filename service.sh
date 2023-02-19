MODDIR="${0%/*}"
chmod 755 "$MODDIR/magiskhide"
MAGISKTMP="$(magisk --path)" "$MODDIR/magiskhide"