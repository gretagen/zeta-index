return {
  name    = "glslang",
  version = "1.4.357",
  summary = "GLSL/HLSL to SPIR-V compiler and validator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glslang/glslang-1.4.357.tar.gz",
  sha256  = "45286ed6276cdd18700528d47edb61be5d6b4637272b21ca954987ed1b95d565",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glslang")
    p:run("test -f " .. p.install_root .. "/usr/lib/libglslang.so")
  end,
}
