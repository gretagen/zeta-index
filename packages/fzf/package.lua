return {
  name    = "fzf",
  version = "0.74.4",
  summary = "Fuzzy finder for the command line",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/fzf/fzf-0.74.4-1-x86_64.pkg.tar.zst",
  sha256  = "061593421be4b2dfc769f077f3f906e01708347841ccbfdf7f97270b5408886d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fzf")
  end,
}
