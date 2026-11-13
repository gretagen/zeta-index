return {
  name    = "nvidia-optix",
  version = "620.70.06",
  summary = "NVIDIA OptiX ray tracing runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-optix/nvidia-optix-620.70.06.tar.gz",
  sha256  = "de19af75ffa5e74c7bfeeef90267084b8737a7d565ae9b1b6ab3e56220e35df3",
  deps    = { "glibc", "nvidia-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnvoptix.so.1 && test -f " .. p.install_root .. "/usr/share/nvidia/nvoptix.bin")
  end,
}
