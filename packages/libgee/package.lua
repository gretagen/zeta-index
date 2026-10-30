return {
  name    = "libgee",
  version = "0.20.8-1-x86_64",
  summary = "a collection library providing GObject-based interfaces and classes for commonly used data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgee/libgee-0.20.8-1-x86_64.pkg.tar.zst",
  sha256  = "f4878649e486af248a5ffa132b67a60e04abb772a26a21839046cdd87e96e0dc",
  deps    = { "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgee-0.8.so.2.6.1")
  end,
}
