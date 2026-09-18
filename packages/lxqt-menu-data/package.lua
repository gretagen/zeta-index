return {
  name    = "lxqt-menu-data",
  version = "2.1.0",
  summary = "LXQt menu configuration data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-menu-data/lxqt-menu-data-2.1.0.tar.gz",
  sha256  = "5e5ef885fab0eb5ef07ccd40c019325cb9c49097110faf06641a9b514979727b",
  deps    = { "lxqt-build-tools" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/cmake/lxqt-menu-data/lxqt-menu-data-config.cmake")
  end,
}
