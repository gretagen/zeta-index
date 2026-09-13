return {
  name    = "nvidia-compiler",
  version = "595.71.05",
  summary = "NVIDIA official driver compiler libraries (NVVM, gpucomp, tileiras)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/nvidia-compiler/nvidia-compiler-595.71.05.tar.xz",
  sha256  = "f62603f1bbd2d72b40478e7a84690486c5142a3b7f1267db9ec8912fff0c4353",
  deps    = { "glibc", "nvidia-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvidia-nvvm.so.4")
  end,
}
