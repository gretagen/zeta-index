return {
  name    = "bolt",
  version = "0.9.11-3-x86_64",
  summary = "thunderbolt 3 device manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bolt/bolt-0.9.11-3-x86_64.pkg.tar.zst",
  sha256  = "39fa256a5ccb093d40bf41af68f037d43785af76df8601dbc85d1ef24222b726",
  deps    = { "polkit", "systemd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/boltctl")
  end,
}
