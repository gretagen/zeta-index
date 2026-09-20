return {
  name    = "libxnvctrl",
  version = "615.71.09",
  summary = "NVIDIA NV-CONTROL X extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxnvctrl/libxnvctrl.pkg.tar.zst",
  sha256  = "bbf10ada1f4f50dfba75a2636c8414f026392e21751a1970151cef8a752a3cf7",
  deps    = { "libxext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
