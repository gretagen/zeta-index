return {
  name    = "kcrash",
  version = "6.13.0",
  summary = "KDE: KCrash",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcrash/kcrash-6.13.0.tar.gz",
  sha256  = "108c94fc72c0c47bffac33babd46224e4e83fdc25bcfd48f1bbaf74863b39a1c",
  deps    = { "glibc", "qtbase", "gcc", "kcoreaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
