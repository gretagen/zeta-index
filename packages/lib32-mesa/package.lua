return {
  name    = "lib32-mesa",
  version = "1:26.2.3",
  summary = "Open-source OpenGL drivers - 32-bit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-mesa/lib32-mesa.pkg.tar.zst",
  sha256  = "3976222e6046e139e113bf3098a017c105766eab06f1ea67a4bcc0d5505b16c5",
  deps    = { "lib32-expat", "lib32-gcc-libs", "lib32-glibc", "lib32-libdrm", "lib32-libelf", "lib32-libglvnd", "lib32-libx11", "lib32-libxcb", "lib32-libxext", "lib32-libxshmfence", "lib32-libxxf86vm", "lib32-llvm-libs", "lib32-lm_sensors", "mesa", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
