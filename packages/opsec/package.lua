return {
  name    = "opsec",
  version = "1.0.0",
  summary = "opsec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/opsec/opsec-1.0.0.tar.gz",
  sha256  = "779d86adecafd1459e54e8a34bc6c3fd3308d03db3a72dd5db79c6e884e028a1",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/opsec")
  end,
}
