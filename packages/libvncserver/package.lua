return {
  name    = "libvncserver",
  version = "0.9.15-1-x86_64",
  summary = "cross-platform C libraries that allow you to easily implement VNC server or client",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libvncserver/libvncserver-0.9.15-1-x86_64.pkg.tar.zst",
  sha256  = "1a4f5fef67070727241883352dd4ed56b48ab87c6bffe630df6a0c922fba2434",
  deps    = { "gnutls", "libgcrypt", "libjpeg-turbo", "libpng", "libsasl", "lzo", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libvncclient.so.0.9.15")
  end,
}
