return {
  name    = "flameshot",
  version = "14.0.0-1-x86_64",
  summary = "powerful yet simple to use screenshot software",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/flameshot/flameshot-14.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "1753af7e2b6cd4b57be755cd0b1dae4079c188b91b67c611e367deb11450abfd",
  deps    = { "qt6-svg", "hicolor-icon-theme", "kguiaddons" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/flameshot")
  end,
}
