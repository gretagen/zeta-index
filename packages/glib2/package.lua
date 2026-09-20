return {
  name    = "glib2",
  version = "2.88.3",
  summary = "GLib library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/glib2/glib2-2.88.3-1-x86_64.pkg.tar.zst",
  sha256  = "9569884e1f670d46e40ea0b8ca4ea2a1a29689be297fed1390bc5af9a03967d2",
  deps    = { "glibc", "pcre2", "libffi", "zlib", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
