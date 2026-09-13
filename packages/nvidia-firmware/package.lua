return {
  name    = "nvidia-firmware",
  version = "610.57.04",
  summary = "NVIDIA driver GSP firmware (loaded by the open kernel modules)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/nvidia-firmware/nvidia-firmware-610.57.04.tar.gz",
  sha256  = "fd4573689eb99e84676e69828014fd9feae5339fe098099cd90890ad72895c2d",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/firmware/nvidia/610.57.04/gsp_tu10x.bin")
  end,
}
