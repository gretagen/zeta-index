return {
  name    = "femboysay",
  version = "0.1.0",
  summary = "an intuitive tool, for them",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/femboysay/femboysay-0.1.0.tar.gz",
  sha256  = "573d4b81da60f296c15f460ac1b34731005352f119157cca99be024db33a241a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/femboysay")
  end,
}
