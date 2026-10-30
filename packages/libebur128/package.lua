return {
  name    = "libebur128",
  version = "1.2.6-2-x86_64",
  summary = "a library that implements the EBU R 128 standard for loudness normalisation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libebur128/libebur128-1.2.6-2-x86_64.pkg.tar.zst",
  sha256  = "95ea3382b10f3891f8d4527035eca3c3bca95c602bb3d2a7e26ce260e40cf7ee",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libebur128.so.1.2.6")
  end,
}
