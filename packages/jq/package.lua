return {
  name    = "jq",
  version = "1.8.2",
  summary = "Command-line JSON processor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/jq/jq-1.8.2-1-x86_64.pkg.tar.zst",
  sha256  = "35f197700d1e8a1692fd67c644c1e57a72f4969707772ac1f477b02351248e1b",
  deps    = { "glibc", "oniguruma" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jq")
  end,
}
