return {
  name    = "libgbinder",
  version = "1.1.54",
  summary = "GLib-style interface to Android binder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgbinder/libgbinder-1.1.54.tar.gz",
  sha256  = "f57aa802844a30594a90d1d83d49dfee0e552cc8d3492507d394fea9340f3ee4",
  deps    = { "glibc", "glib", "libglibutil" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgbinder.so.* >/dev/null && ls " .. p.install_root .. "/usr/lib/pkgconfig/*binder*.pc >/dev/null && ls " .. p.install_root .. "/usr/include/gbinder/*.h >/dev/null")
  end,
}
