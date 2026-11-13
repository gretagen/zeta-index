return {
  name    = "nvidia-gpucomp",
  version = "620.70.06",
  summary = "NVIDIA GPU shader compiler libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-gpucomp/nvidia-gpucomp-620.70.06.tar.gz",
  sha256  = "d0c41a02d80ed2cc70a4816ed7848713b34184fdc713e5b3e34c737c3983882d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvidia-gpucomp.so.1 && test -e " .. p.install_root .. "/usr/lib/libnvidia-tileiras.so.1 && test -f " .. p.install_root .. "/usr/lib/libnvidia-gpucomp.so.620.70.06")
  end,
}
