#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e4885b59b932e9d8ec5eb994360bd7a738f1f33c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ebc501ff5e0311d516de588f862195162b77e2ee EMMC:/dev/block/bootdevice/by-name/recovery e4885b59b932e9d8ec5eb994360bd7a738f1f33c 67108864 ebc501ff5e0311d516de588f862195162b77e2ee:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
