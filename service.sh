MODDIR="${0%/*}"
if magisk --denylist exec true; then
    chmod 755 "$MODDIR/magiskhide"
    MAGISKTMP="$(magisk --path)" "$MODDIR/magiskhide"
fi