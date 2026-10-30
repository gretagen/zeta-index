return {
  name    = "libssc",
  version = "0.4.4-1-x86_64",
  summary = "library for exposing Qualcomm Sensor Core sensors to Linux",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libssc/libssc-0.4.4-1-x86_64.pkg.tar.zst",
  sha256  = "6fa2bfa80ee5f35e06eafcead32fab20fd5d108ef96f4d503a23c5971d5ebd4c",
  deps    = { "glib", "glibc", "libgcc", "libqmi", "libqrtr-glib", "protobuf-c" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libssc.so.2")
  end,
}
