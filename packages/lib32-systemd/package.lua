return {
  name    = "lib32-systemd",
  version = "261.3",
  summary = "system and service manager (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-systemd/lib32-systemd.pkg.tar.zst",
  sha256  = "160448c31f1b3a36b0eebe98106445de3d36338079fb1bed28f23e1635d4b152",
  deps    = { "systemd-libs", "lib32-gcc-libs", "lib32-libgcrypt", "lib32-libxcrypt", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
