return {
  name    = "oxygen-icons",
  version = "6.31.0",
  summary = "KDE: Oxygen icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/oxygen-icons/oxygen-icons-6.31.0.tar.gz",
  sha256  = "8cbfebcc46b9c485f1f3f85ee248d569004adc7683673f37ad172337812ed59b",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
