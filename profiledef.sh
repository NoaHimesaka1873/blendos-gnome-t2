#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="blendOS-T2"
iso_label="BLENDOS_T2_$(date +%Y%m)"
iso_publisher="blendOS <https://blendos.co> in collaboration with T2Linux <https://t2linux.org>"
iso_application="blendOS Live/Rescue CD for Macs with T2 chip"
iso_version="$(date +%Y.%m.%d)-T2"
install_dir="blend"
buildmodes=('iso')
bootmodes=(
  'bios.syslinux.mbr'
  'bios.syslinux.eltorito'
  'uefi-ia32.grub.esp'
  'uefi-ia32.grub.eltorito'
	'uefi-x64.systemd-boot.esp'
	'uefi-x64.systemd-boot.eltorito'
)
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/pci-rescan.sh"]="0:0:755"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/generate_locale"]="0:0:755"
  ["/etc/default/useradd"]="0:0:600"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers"]="0:0:400"
  ["/etc/locale.gen"]="0:0:644"
)
