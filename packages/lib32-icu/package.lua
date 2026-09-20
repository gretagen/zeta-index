return {
  name    = "lib32-icu",
  version = "78.3",
  summary = "International Components for Unicode library (32 bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-icu/lib32-icu.pkg.tar.zst",
  sha256  = "810db30f47576a5a01ebcb9d0964ba95104760067906a09b5f2b464059ddede2",
  deps    = { "lib32-gcc-libs", "lib32-glibc", "icu", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
