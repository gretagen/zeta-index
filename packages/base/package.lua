return {
  name    = "base",
  version = "1.0.5",
  summary = "Haliade system base system (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/base/base-1.0.1.tar.gz",
  sha256  = "55546fa4a994570e9c87e15128b1a1d691b8608cbc885cd489f480a32b12f8ed",
  deps    = { "bash", "bc", "binutils", "btrfs-progs", "bubblewrap", "busybox-init", "ca-certificates", "cfdisk", "chronos", "connman", "curl", "dbus", "diffutils", "dosfstools", "elogind", "findutils", "foundation", "gawk", "gcc-minimal", "genkernel", "glibc", "grep", "impala", "iniswap", "iproute2", "iputils", "iwd", "kbd", "libbpf", "libgudev", "libpciaccess", "librtmp", "libssh2", "libtirpc", "libusb", "limine", "lz4", "lzo", "manual", "micro", "ncurses", "openrc", "openssh", "pciutils", "perl", "procps-ng", "readline", "rsync", "sed", "shadow", "squashfs-tools", "subspace-scripts", "systemd-libs", "tar", "terminfo", "thesh", "tree", "udev-rules", "usbutils", "util-linux", "uutils-coreutils", "wget", "which", "xdg-utils", "xkbcommon", "xorriso", "xz-utils", "zeta" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
