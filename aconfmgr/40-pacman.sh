
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/pacman.d/mirrorlist'

pacman_conf=$(GetPackageOriginalFile pacman /etc/pacman.conf)
sed -i 's/#Color.*/Color/' $pacman_conf
sed -i 's/#ParallelDownloads.*/ParallelDownloads = 5/' $pacman_conf
cat >>  $pacman_conf <<EOF

[multilib]
Include = /etc/pacman.d/mirrorlist
EOF

makepkg_conf=$(GetPackageOriginalFile pacman /etc/makepkg.conf)
echo 'MAKEFLAGS="-j2"' >> $makepkg_conf
