return {
  name    = "libxcrypt-compat",
  version = "4.5.2",
  summary = "Legacy API functions for libxcrypt (crypt.h backward compat)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxcrypt-compat/libxcrypt-compat.pkg.tar.zst",
  sha256  = "89476037bf6a96561b86b8b61a2b1d5c34ea2d07036bc9427abdf799d57e934c",
  deps    = { "glibc", "libxcrypt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
