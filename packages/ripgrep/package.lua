return {
  name    = "ripgrep",
  version = "15.2.0",
  summary = "Recursive grep alternative",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ripgrep/ripgrep-15.2.0-1-x86_64.pkg.tar.zst",
  sha256  = "4ab540861ee43dfe6974403dd3f03830615fd4b53971736f5c4fc7aa82133a21",
  deps    = { "glibc", "pcre2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rg")
  end,
}