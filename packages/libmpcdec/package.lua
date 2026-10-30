return {
  name    = "libmpcdec",
  version = "0.1+r475-6-x86_64",
  summary = "musePack decoding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmpcdec/libmpcdec-0.1+r475-6-x86_64.pkg.tar.zst",
  sha256  = "9ab6f3f9a35471b2c3cba0c273197d88517347db0849c2f914a88f81cf5dc45b",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmpcdec.so.6.1.0")
  end,
}
