IgnorePath '/backup'
IgnorePath '/dev/*'
IgnorePath '/proc/*'
IgnorePath '/sys/*'
IgnorePath '/tmp/*'
IgnorePath '/run/*'
IgnorePath '/mnt/*'
IgnorePath '/lost+found'
IgnorePath '/net'
IgnorePath '/nix/*'
IgnorePath '/var/*'
IgnorePath '/share'
IgnorePath '/usr'

IgnorePath '/boot/*/*.EFI'
IgnorePath '/boot/*/*.efi'
IgnorePath '/boot/EFI/*'
IgnorePath '/boot/*.img'
IgnorePath '/boot/vmlinuz-*'

IgnorePath '/opt/intel' # intel oneAPI for Blender/ray tracer stuff
IgnorePath '/opt/resolve'
IgnorePath '/opt/containerd'

IgnorePath '/etc/.updated'
IgnorePath '/etc/ca-certificates/extracted/*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/mkinitcpio.d/*.preset'
IgnorePath '/etc/group*'
IgnorePath '/etc/gshadow*'
IgnorePath '/etc/passwd*'
IgnorePath '/etc/shadow*'
IgnorePath '/etc/shells'
IgnorePath '/etc/subgid*'
IgnorePath '/etc/subuid*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/ssh/*key*'
IgnorePath '/etc/lvm/archive/*'
IgnorePath '/etc/lvm/backup/*'
IgnorePath '/etc/fonts/*'
IgnorePath '/etc/texmf/*' # latex font stuff
IgnorePath '/etc/multipath'

IgnorePath '/etc/fstab' # Every machine will be different. TODO: keep this in config somehow
IgnorePath '/etc/hostname' # Every machine different
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'
IgnorePath '/etc/cni'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/libvirt'
IgnorePath '/etc/xml/catalog'
IgnorePath '/etc/sgml' # standard generalized markup language, man page/docs stuff
IgnorePath '/etc/dbus-1/system.d'
IgnorePath '/etc/modules-load.d/*'

IgnorePath '/etc/conf.d/lm_sensors' # Hardware dependent, created with sensors-detect

IgnorePath '/usr/lib/ghc-*/package.conf.d/package.cache'
IgnorePath '/usr/share/mime/*'
IgnorePath '/etc/docker/key.json'
IgnorePath '/etc/dconf/db/ibus' # Don't use ibus much, maybe add to config if that changes

IgnorePath '/etc/cups/**/*.O'
IgnorePath '/etc/cups/*.O'
IgnorePath '/etc/cups/classes.conf'
IgnorePath '/etc/cups/subscriptions.conf'
IgnorePath '/etc/printcap' # autogenerated

IgnorePath '/etc/wireguard/*' # Not sure these should be commited to vcs
