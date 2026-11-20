return {
  name    = "glibmm-compat",
  version = "2.66.5",
  summary = "glibmm 2.4 compatibility libraries (gtkmm3-era consumers)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glibmm-compat/glibmm-compat-2.66.5.tar.gz",
  sha256  = "eed85e35738425effd1757cb516110ae87aad43ed57ca6219d09095ed47d0f60",
  deps    = { "glibc", "gcc", "glib", "libsigc++2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libglibmm-2.4.so.1 && test -f " .. p.install_root .. "/usr/lib/libgiomm-2.4.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/glibmm-2.4.pc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/giomm-2.4.pc && test -d " .. p.install_root .. "/usr/include/glibmm-2.4 && ! test -e " .. p.install_root .. "/usr/lib/libglibmm-2.68.so.1 && ! test -e " .. p.install_root .. "/usr/lib/pkgconfig/glibmm-2.68.pc && ! test -d " .. p.install_root .. "/usr/include/glibmm-2.68")
  end,
}
