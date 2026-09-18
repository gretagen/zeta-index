return {
  name    = "systemd-libs",
  version = "257",
  summary = "systemd libraries (libsystemd, libudev)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd-libs/systemd-libs-257.tar.gz",
  sha256  = "7cb3f65300754e012e768c7fbcffda9ca18e3ab139d71a9454e600c93ad83dd8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsystemd.so.0")
  end,
}
