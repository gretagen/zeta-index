return {
  name    = "gjs",
  version = "1.90.1",
  summary = "JavaScript bindings for GNOME (gjs runtime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gjs/gjs-1.90.1.tar.gz",
  sha256  = "a3082a067271d6ea670e162fd72c29cea547f9c901862c5885cc6e19f4c71c42",
  deps    = { "glibc", "glib", "cairo", "mozjs", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgjs.so && test -x " .. p.install_root .. "/usr/bin/gjs && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/gjs -c 'print(40+2)' | grep -q 42")
  end,
}
