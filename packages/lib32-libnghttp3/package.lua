return {
  name    = "lib32-libnghttp3",
  version = "1.18.0",
  summary = "HTTP/3 library written in C (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libnghttp3/lib32-libnghttp3.pkg.tar.zst",
  sha256  = "e28f63680e645e2c1eecff9696bfd7bfb31a80733d4cecb480e642d107dbd231",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
