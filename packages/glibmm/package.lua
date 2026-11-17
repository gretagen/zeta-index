return {
  name    = "glibmm",
  version = "2.89.1",
  summary = "C++ bindings for GLib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glibmm/glibmm-2.89.1.tar.gz",
  sha256  = "fc1162d5707765a01e37798e57ab106b0d08c17c447ea1bf371a2a3a68be960d",
  deps    = { "glibc", "gcc", "glib", "libsigc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libglibmm-2.68.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/glibmm-2.68.pc && test -f " .. p.install_root .. "/usr/include/glibmm-2.68/glibmm.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --modversion glibmm-2.68 | grep -q 2.89")
  end,
}
