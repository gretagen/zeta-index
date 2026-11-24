return {
  name    = "fastfetch",
  version = "2.72.0",
  summary = "System information tool (fastfetch, zeta-tracking fork)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fastfetch/fastfetch-2.72.0.tar.gz",
  sha256  = "4c868b968ba80f063cef826e3200943372a6b736c9f4cb2e2e36ad7c62e642c2",
  deps    = { "glibc", "zeta", "vulkan-loader" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fastfetch && " .. p.install_root .. "/usr/bin/fastfetch --version | grep -q 2.72 && " .. p.install_root .. "/usr/bin/fastfetch -s packages --pipe | grep -qi zeta")
  end,
}
