return {
  name    = "lib32-vulkan-icd-loader",
  version = "1.4.357.0",
  summary = "Vulkan Installable Client Driver (ICD) Loader (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-vulkan-icd-loader/lib32-vulkan-icd-loader.pkg.tar.zst",
  sha256  = "741aa42332b707d0aa7b944f7ce07a6cb4ccc0f7f513d0edb9a432608cda4d5b",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
