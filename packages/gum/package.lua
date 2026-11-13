return {
  name    = "gum",
  version = "2.0.2",
  summary = "Tool for making shell scripts interactive (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gum/gum-2.0.2.tar.gz",
  sha256  = "ff2b66a5e9661e9103969f8fa17fe836e3f1b5541eaf7bb79594d6b86f28052e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gum")
  end,
}
