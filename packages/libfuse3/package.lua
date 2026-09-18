return {
  name    = "libfuse3",
  version = "3.18.2",
  summary = "Filesystem in Userspace library (FUSE 3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfuse3/libfuse3-3.18.2.tar.gz",
  sha256  = "c0c060cd4dee1a8f9b612b2533741870689b464575d48dcb2943b38b4a5d6b44",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libfuse3*.so*' | grep -q .")
  end,
}
