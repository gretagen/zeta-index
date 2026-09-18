return {
  name    = "libcanberra",
  version = "0.30",
  summary = "XDG Sound Theme and Name Specifications implementation",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcanberra/libcanberra-0.30.tar.gz",
  sha256  = "16f542fc3022a120643fbb9c6ec3f42f2b310c8df927f3dfa8cc66dfe4f56e58",
  deps    = { "glibc", "glib", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libcanberra.so.0 -a -f " .. p.install_root .. "/usr/lib/libcanberra-gtk3.so.0")
  end,
}
