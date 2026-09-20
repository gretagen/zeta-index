return {
  name    = "lib32-libnghttp2",
  version = "1.70.0",
  summary = "Framing layer of HTTP/2 is implemented as a reusable C library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libnghttp2/lib32-libnghttp2.pkg.tar.zst",
  sha256  = "cde3f4a0e86109d777a7d61be9f9ffc731f6f989e482c133f1c462ed69fb1bc5",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
