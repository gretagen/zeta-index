return {
  name    = "dconf",
  version = "0.49.0",
  summary = "Configuration database system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/dconf/dconf.pkg.tar.zst",
  sha256  = "6464869f8fcef78b4908e94c8a37a3eaf6f12be773ebaae6ada4461873ca7fbc",
  deps    = { "bash", "gcc-libs", "glib2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
