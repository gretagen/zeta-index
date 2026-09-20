return {
  name    = "rav1e",
  version = "0.8.1",
  summary = "AV1 encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/rav1e/rav1e-0.8.1-3-x86_64.pkg.tar.zst",
  sha256  = "17812c6c332ad56fbbce4b758ce8cf9b8d311b2474a574619643aedd681119c3",
  deps    = { "glibc", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
