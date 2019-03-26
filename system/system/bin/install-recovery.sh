#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:6ca918ef7e186db8917a2e72642afa214315c4a8; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:124fa290d9eb5064f364a2bfed8a9a20aa33514c EMMC:/dev/block/bootdevice/by-name/recovery 6ca918ef7e186db8917a2e72642afa214315c4a8 67108864 124fa290d9eb5064f364a2bfed8a9a20aa33514c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
