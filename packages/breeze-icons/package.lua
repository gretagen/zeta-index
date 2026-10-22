return {
  name    = "breeze-icons",
  version = "6.13.0",
  summary = "KDE: Breeze icon theme.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/breeze-icons/breeze-icons-6.13.0.tar.gz",
  sha256  = "11bbda284ffa1140c730accb4c33aa4eaeb99e08ac6505609f511806dbe4d63b",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
