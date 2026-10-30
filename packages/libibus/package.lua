return {
  name    = "libibus",
  version = "1.5.34-2-x86_64",
  summary = "IBus input method library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libibus/libibus-1.5.34-2-x86_64.pkg.tar.zst",
  sha256  = "d4c5d9193dea4c7e334d1d544ad3ba6fb0bb461507fd7c44eb5b39d8e1533bc5",
  deps    = { "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libibus-1.0.so")
  end,
}
