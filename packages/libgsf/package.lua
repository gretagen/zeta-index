return {
  name    = "libgsf",
  version = "1.14.60-1-x86_64",
  summary = "extensible I/O abstraction library for dealing with structured file formats",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgsf/libgsf-1.14.60-1-x86_64.pkg.tar.zst",
  sha256  = "64abd3d509e148bf349db32ffbbda35f3f4d3b02fdd48fb218513a213c275091",
  deps    = { "bzip2", "gdk-pixbuf", "glib", "glibc", "libxml2", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgsf-1.so.114.0.60")
  end,
}
