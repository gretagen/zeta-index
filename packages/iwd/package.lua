return {
  name    = "iwd",
  version = "3.12",
  summary = "Wireless daemon (iNet Wireless Daemon)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iwd/iwd-3.12.tar.xz",
  sha256  = "d89a5e45c7180170e19be828f9e944a768c593758094fc57a358d0e7c4cb1a49",
  deps    = { "glibc", "ell", "readline" },
  build   = function(p)
    p:run("./configure --prefix=/usr --localstatedir=/var --enable-external-ell --disable-manual-pages")
    p:run("make -j$(nproc)")
    p:run("DESTDIR=" .. p.install_root .. " make install")
    p:run("install -d " .. p.install_root .. "/etc/iwd")
  end,
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/iwd")
    p:run("test -d " .. p.install_root .. "/etc/iwd")
    p:run("! strings " .. p.install_root .. "/usr/libexec/iwd | grep -q /usr/var")
  end,
}
