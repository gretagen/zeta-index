return {
  name    = "gcc",
  version = "16.2.0",
  summary = "GNU Compiler Collection (C and C++ front ends, libstdc++)",
  url     = "https://files.spectoria.dev/zeta-monsters/gcc-16.2.0.tar.gz",
  sha256  = "787062eff1b04b508ac0eb49ad1f3a26177adb23ce36cd35ba4407ecbff18427",
  deps    = { "glibc", "libzstd", "zstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gcc && test -x " .. p.install_root .. "/usr/libexec/gcc/x86_64-pc-linux-gnu/16.2.0/cc1")
  end,
}
