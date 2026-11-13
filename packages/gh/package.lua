return {
  name    = "gh",
  version = "2.103.3",
  summary = "GitHub's official command line tool (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gh/gh-2.103.3.tar.gz",
  sha256  = "bb97d007a19f8f4d7a407ff7e36b9df927b96df5a5bc40487624e6ef3b5dc9a4",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gh")
  end,
}
