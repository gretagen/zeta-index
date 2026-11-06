return {
  name    = "viu",
  version = "1.6.1",
  summary = "Terminal image viewer using ANSI escape codes (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/viu/viu-1.6.1.tar.gz",
  sha256  = "35c873aebbd46489db24910731203b6d2eabb5b2c36e7c431e06de8d70616e82",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/viu")
  end,
}
