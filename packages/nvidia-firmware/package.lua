return {
  name    = "nvidia-firmware",
  version = "620.70.06",
  summary = "NVIDIA GPU firmware blobs (GSP, ucodes) for the 620.70.06 driver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nvidia-firmware/nvidia-firmware-620.70.06.tar.gz",
  sha256  = "335da5e140750e80c5fb30fa47bd2c31afee0c77981ca7e0cee4859a826ed3e6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/firmware/nvidia/620.70.06/gsp_ga10x.bin && test -f " .. p.install_root .. "/usr/lib/firmware/nvidia/620.70.06/ucodes_tu10x.bin")
  end,
}
