return {
  name    = "lib32-glibc",
  version = "2.44+r24+g16be1518495f",
  summary = "GNU C Library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-glibc/lib32-glibc.pkg.tar.zst",
  sha256  = "8aaea9fbcacd58c7114b13de001ca354017afa09bb396c382683f7d20d94999c",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
