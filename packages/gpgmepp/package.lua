return {
  name    = "gpgmepp",
  version = "2.2.0",
  summary = "C++ bindings for GPGME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gpgmepp/gpgmepp.pkg.tar.zst",
  sha256  = "d0e2be1c05328d397b3d4b7a4e89b4eefdaf3caf23c364bb08ae4037f7aefb28",
  deps    = { "gpgme", "libgcc", "libgpg-error", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
