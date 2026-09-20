return {
  name    = "libxxf86vm",
  version = "1.1.7",
  summary = "XFree86-VidMode extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxxf86vm/libxxf86vm.pkg.tar.zst",
  sha256  = "b9215b44734a0149f6e9b3c9bfcbb5abef2b6f32b2767ed628bafc3f0cc38934",
  deps    = { "glibc", "libx11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
