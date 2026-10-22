return {
  name    = "ki18n",
  version = "6.13.0",
  summary = "KDE: Ki18n",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ki18n/ki18n-6.13.0.tar.gz",
  sha256  = "c647eab42edec41ff3e377ddcb21bbee3ba40db701c36ca4b785ac547498032b",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
