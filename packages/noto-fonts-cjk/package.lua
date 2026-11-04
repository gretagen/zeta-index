return {
  name    = "noto-fonts-cjk",
  version = "2.004",
  summary = "Noto CJK fonts (meta: Sans 2.004 + Serif 2.003)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/noto-fonts-cjk/noto-fonts-cjk-2.004.tar.gz",
  sha256  = "fae0ff86c1b1129c5a59770fdff4dd177addc9a741f6336e6c0e578468d02f54",
  deps    = { "noto-fonts-cjk-sans", "noto-fonts-cjk-serif" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/licenses/noto-cjk/README")
  end,
}
