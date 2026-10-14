return {
  name    = "vulkan-loader",
  version = "1.4.357",
  summary = "Vulkan loader library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vulkan-loader/vulkan-loader-1.4.357.tar.gz",
  sha256  = "e513d11d86e93b1dcb71060be6f83fdb06725f9163f8daf71551cb01cefb8124",
  deps    = { "glibc", "wayland", "libxcb", "libdrm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libvulkan.so.1 && test -e " .. p.install_root .. "/usr/lib/libvulkan.so.1.4.357 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/vulkan.pc")
  end,
}
