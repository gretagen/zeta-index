return {
  name    = "gtksourceview",
  version = "3.24.11",
  summary = "Text editor widget with syntax highlighting (GTK3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtksourceview/gtksourceview-3.24.11.tar.gz",
  sha256  = "6431e17c06cf23cab3b9d1b8cf4403e823f18f93877a71d1df85f69b0eaae0c9",
  deps    = { "glibc", "glib", "gtk3", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/gtksourceview-3.0.pc && test -e " .. p.install_root .. "/usr/lib/libgtksourceview-3.0.so")
  end,
}
