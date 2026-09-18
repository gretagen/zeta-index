return {
  name    = "vulkan-loader",
  version = "1.4.357.0",
  summary = "Vulkan ICD loader library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vulkan-loader/vulkan-loader-1.4.357.0.pkg.tar.zst",
  sha256  = "9ed4c22afb7ec3204dc13e8714d8144d43926b8c6d0d8299e6b95215569cd499",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libvulkan.so.1")
  end,
}
