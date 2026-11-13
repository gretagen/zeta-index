return {
  name    = "doggo",
  version = "1.4.2",
  summary = "Modern command-line DNS client (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/doggo/doggo-1.4.2.tar.gz",
  sha256  = "2b041e1557255b7cf60c0bf987842d88c5040bd2004f6cf72c1012314938d642",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/doggo")
  end,
}
