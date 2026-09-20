return {
  name    = "lib32-nspr",
  version = "4.40",
  summary = "Netscape Portable Runtime (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-nspr/lib32-nspr.pkg.tar.zst",
  sha256  = "89b3b0aecb0672c0ef9a8d86fc914e1d245194d9f51ab7cda0f04c8a8c84161c",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
