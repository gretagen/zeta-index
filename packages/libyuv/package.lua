return {
  name    = "libyuv",
  version = "r2921+644251f25",
  summary = "Library for YUV scaling",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libyuv/libyuv.pkg.tar.zst",
  sha256  = "953c7ee536b35be829a3cc8c614f9a0b553830f5d4d030f35fc452d0199612ce",
  deps    = { "libgcc", "libstdc++", "libjpeg-turbo", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
