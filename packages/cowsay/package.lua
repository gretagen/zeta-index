return {
  name    = "cowsay",
  version = "3.8.4",
  summary = "Cow says things",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cowsay/cowsay-3.8.4.tar.gz",
  sha256  = "a048e90ec3ca14bfaa6f1d4ad789a8d5e4b233cd07ccff8aee15c997152245cb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/local/bin/cowsay")
  end,
}
