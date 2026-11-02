return {
  name    = "gsound",
  version = "1.0.3",
  summary = "GStreamer event sound library for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gsound/gsound-1.0.3.tar.gz",
  sha256  = "a1e59fd42f944f8adf3275d1bd2b64ce05524c3efc5804e4e7ab14784f7cab46",
  deps    = { "glibc", "glib", "gstreamer", "gobject-introspection", "libcanberra" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgsound.so* | grep -q . && ls " .. p.install_root .. "/usr/lib/pkgconfig/gsound*.pc | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/GSound-1.0.gir")
  end,
}
