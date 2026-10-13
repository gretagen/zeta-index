return {
  name    = "meson",
  version = "1.12.1",
  summary = "Fast and user friendly build system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/meson/meson-1.12.1.tar.gz",
  sha256  = "e90ec03c1e3fff0210f2e18b210d6cc0e7bb6e75b61f84b84d7b511d8ede1cd5",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/meson && " .. p.install_root .. "/usr/bin/meson --version")
  end,
}
