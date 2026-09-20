return {
  name    = "vulkan-icd-loader",
  version = "1.4.357.0",
  summary = "Vulkan Installable Client Driver (ICD) Loader",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/vulkan-icd-loader/vulkan-icd-loader.pkg.tar.zst",
  sha256  = "9ed4c22afb7ec3204dc13e8714d8144d43926b8c6d0d8299e6b95215569cd499",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
