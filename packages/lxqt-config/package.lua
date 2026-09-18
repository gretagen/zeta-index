return {
  name    = "lxqt-config",
  version = "2.1.0",
  summary = "LXQt component (lxqt-config)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-config/lxqt-config-2.1.0.tar.gz",
  sha256  = "4734c18f9e2bb8dff7f188c8ca402e8efc401f2fb75850fb92e24bb55868a244",
  deps    = { "glibc", "kwindowsystem", "libICE", "libSM", "libXcursor", "libXext", "libXfixes", "libXi", "liblxqt", "libqtxdg", "libz", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-config")
  end,
}
