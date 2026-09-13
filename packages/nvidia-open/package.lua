return {
  name    = "nvidia-open",
  version = "610.57.04",
  summary = "NVIDIA open GPU kernel modules for 7.1.10-gen (prebuilt)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/nvidia-open/nvidia-open-610.57.04.tar.gz",
  sha256  = "0cae0a23a7964fbfea0f678f0be70d0f2e21968f176969dcc57a9a697ca4e47c",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/lib/modules/7.1.10-gen/kernel/drivers/video/nvidia.ko")
  end,
}
