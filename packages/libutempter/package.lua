return {
  name    = "libutempter",
  version = "1.2.3",
  summary = "Library for recording utmp entries (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libutempter/libutempter-1.2.3-1-x86_64.pkg.tar.zst",
  sha256  = "e1dd15aed4cd76b42729d5dc58d4db3dd49d6c5fe08b33abee0df3bcfc98fd13",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libutempter*")
  end,
}
