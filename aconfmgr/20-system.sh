
# Locale settings
CreateLink /etc/localtime ../usr/share/zoneinfo/Canada/Saskatchewan
locale="en_US.UTF-8 UTF-8"
sed -i "s/#${locale}/${locale}/" $(GetPackageOriginalFile glibc /etc/locale.gen)
cat > "$(CreateFile /etc/locale.conf)" <<EOF
LANG=en_US.UTF-8
EOF


CopyFile /etc/sudoers.d/Archintosh
CopyFile /etc/ssh/sshd_config.d/10-archintosh.conf

# Networking stuff
CopyFile /etc/hosts
CopyFile /etc/nsswitch.conf
CopyFile /etc/resolv.conf

# Contains wifi password in plain text, maybe don't commit to vcs?
IgnorePath /etc/wpa_supplicant/*

# Printing settup
CopyFile /etc/cups/lpoptions
CopyFile /etc/cups/ppd/Brother_MFC-L2710DW_series.ppd
CopyFile /etc/cups/printers.conf 600

# Display settings
CopyFile /etc/X11/xorg.conf.d/10-archintosh.conf '' carl users


# Set default java version. I set this at some point for some reason, forget why
CreateLink /usr/lib/jvm/default java-8-openjdk/jre
CreateLink /usr/lib/jvm/default-runtime java-8-openjdk/jre

# Nix stuff
CopyFile /etc/nix/nix.conf
