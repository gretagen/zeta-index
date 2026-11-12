return {
  name    = "shader-slang",
  version = "2026.22",
  summary = "NVIDIA Slang shader compiler (slangc)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shader-slang/shader-slang-2026.22.tar.gz",
  sha256  = "a6972d9aa4ed3557abdb24e96294c4ea1a38024396b83f335b17553799f5510b",
  deps    = { "glibc", "libstdc++", "libgcc", "libX11", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/slangc && test -f " .. p.install_root .. "/usr/lib/libslang-compiler.so && " .. p.install_root .. "/usr/bin/slangc -v")
  end,
}
