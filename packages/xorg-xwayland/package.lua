return {
  name    = "xorg-xwayland",
  version = "24.1.14-1-x86_64",
  summary = "run X clients under wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xwayland/xorg-xwayland-24.1.14-1-x86_64.pkg.tar.zst",
  sha256  = "ff0147866b9196feca370239854abb2a7c6d99f8c9de09330ec4cbe4542d0441",
  deps    = { "nettle", "libepoxy", "libXfont2", "pixman", "xorg-server-common", "libxcvt", "mesa-full", "libglvnd", "libXau", "wayland", "libdrm", "libtirpc", "libei", "libxshmfence", "libdecor", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/Xwayland")
  end,
}
