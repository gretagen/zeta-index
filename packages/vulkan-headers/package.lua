return {
  name    = "vulkan-headers",
  version = "1.4.357",
  summary = "Vulkan API headers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vulkan-headers/vulkan-headers-1.4.357.tar.gz",
  sha256  = "beb4c49bf9aa5ad5daa680bb77bc5dda2cb5fc6f551517289bc4fac6a6f5d9e7",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/vulkan/vulkan.h")
  end,
}
