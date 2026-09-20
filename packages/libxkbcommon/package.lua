return {
  name    = "libxkbcommon",
  version = "1.13.2",
  summary = "Keyboard handling library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxkbcommon/libxkbcommon-1.13.2-1-x86_64.pkg.tar.zst",
  sha256  = "18d8dc90958eda2edaab9b671ee96c2c1f2b1a322618eca97c7c04605d738581",
  deps    = { "glibc", "xkeyboard-config", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
