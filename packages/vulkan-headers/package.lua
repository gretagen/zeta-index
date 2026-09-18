return {
  name    = "vulkan-headers",
  version = "1.3.296",
  summary = "Vulkan API headers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vulkan-headers/vulkan-headers-1.3.296.tar.gz",
  sha256  = "0002b67f6f7afc63dcb7e56abf3d9a5dcc2c0e4dfef4bd93c662f7e503bd4f2a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/include/vulkan")
  end,
}
