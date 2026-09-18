return {
  name    = "findutils",
  version = "4.10.0",
  summary = "GNU find, xargs, locate, and updatedb utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/findutils/findutils-4.10.0.tar.gz",
  sha256  = "d1a692534abc6baa3eaeab6ba1b6f68df7fa3045e35cd70d19ace006c70c5638",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/find && test -x " .. p.install_root .. "/usr/bin/xargs")
  end,
}
