return {
  name    = "vulkan-tools",
  version = "1.4.363.0-1-x86_64",
  summary = "Vulkan tools (vulkaninfo, vkcube)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vulkan-tools/vulkan-tools-1.4.363.0-1-x86_64.pkg.tar.zst",
  sha256  = "b8d0cab28210881c237bdee344bfe6c4a43cf77373e6f8e6cfc3e98a575e2045",
  deps    = { "glibc", "libgcc", "libstdc++", "libX11", "libxcb", "vulkan-loader", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/vulkaninfo")
  end,
}
