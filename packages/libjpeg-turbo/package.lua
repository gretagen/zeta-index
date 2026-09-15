return {
  name    = "libjpeg-turbo",
  version = "3.2.0",
  summary = "MMX/SSE2/SMID accelerated library for JPEG images (libjpeg.so.8 ABI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libjpeg-turbo/libjpeg-turbo-3.2.0-2-x86_64.pkg.tar.zst",
  sha256  = "6e8d9f16b4e9859d442692fe787d86e6d84e749030f4d848cac3311cd34289a1",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjpeg.so.8")
  end,
}