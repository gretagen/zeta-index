return {
  name    = "base",
  version = "1.0.6",
  summary = "Haliade system base (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/base/base-1.0.1.tar.gz",
  sha256  = "55546fa4a994570e9c87e15128b1a1d691b8608cbc885cd489f480a32b12f8ed",
  deps    = { "haliade-utils", "bash", "bc", "binutils", "btrfs-progs", "bubblewrap", "ca-certificates", "cfdisk", "connman", "curl", "dbus", "diffutils", "dosfstools", "dejavusans", "elogind", "findutils", "gawk", "gcc-minimal", "genkernel", "glibc", "grep", "impala", "identity", "iproute2", "iputils", "iwd", "kbd", "libbpf", "libgudev", "libpciaccess", "librtmp", "libssh2", "libtirpc", "libusb", "limine", "lz4", "lzo", "manual", "micro", "ncurses", "openrc", "openssh", "pciutils", "perl", "procps-ng", "readline", "rsync", "sed", "shadow", "squashfs-tools", "systemd-libs", "tar", "terminfo", "ttf-nerdfonts", "thesh", "udev-rules", "usbutils", "util-linux", "uutils-coreutils", "unzip", "wget", "which", "xdg-utils", "xkbcommon", "xorriso", "xz-utils", "zeta" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
