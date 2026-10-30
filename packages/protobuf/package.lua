return {
  name    = "protobuf",
  version = "36.1-1-x86_64",
  summary = "protocol Buffers - Google's data interchange format",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/protobuf/protobuf-36.1-1-x86_64.pkg.tar.zst",
  sha256  = "3d63417c8fbe2354bea29b23c338baf3f03c9438e0127c5519d6dddc4825185c",
  deps    = { "abseil-cpp", "glibc", "libgcc", "libstdc++", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libprotobuf-lite.so.36.1.0")
  end,
}
