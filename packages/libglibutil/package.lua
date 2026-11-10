return {
  name    = "libglibutil",
  version = "1.0.83",
  summary = "GLib utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libglibutil/libglibutil-1.0.83.tar.gz",
  sha256  = "506ad155ce240c2d990d4277ff98388c31d3461b5149e8761b9391a522b9cf06",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libglibutil.so.* >/dev/null && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libglibutil.pc && test -f " .. p.install_root .. "/usr/include/gutil/gutil_macros.h")
  end,
}
