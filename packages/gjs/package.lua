return {
  name    = "gjs",
  version = "1.90.1-1-x86_64",
  summary = "JavaScript bindings for GNOME (SpiderMonkey)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gjs/gjs-1.90.1-1-x86_64.pkg.tar.zst",
  sha256  = "2b73150035a46ab337904b2486d66fe5ba18a8c6bcb1ce06a5f1192ee26d1854",
  deps    = { "cairo", "libdconf", "glib", "glibc", "gobject-introspection-runtime", "js140", "libffi", "libgcc", "libstdc++", "libsysprof-capture", "libX11", "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gjs && test -e " .. p.install_root .. "/usr/lib/libgjs.so.0")
  end,
}
