return {
  name    = "sddm",
  version = "0.21.0-7-x86_64",
  summary = "qML based X11 and Wayland display manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sddm/sddm-0.21.0-7-x86_64.pkg.tar.zst",
  sha256  = "927cc24362cdc83b8c48532252ae4d41ade99dc5e65cb0fdeb9b6d69f7601a7a",
  deps    = { "bash", "glibc", "libgcc", "libstdc++", "libXau", "libxcb", "pam", "qt6-base", "qt6-declarative", "systemd-libs", "ttf-liberation", "xorg-server", "xorg-xauth" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/sddm")
  end,
}
