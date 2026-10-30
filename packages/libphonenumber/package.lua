return {
  name    = "libphonenumber",
  version = "9.0.42-1-x86_64",
  summary = "google's common library for parsing, formatting, and validating international phone numbers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libphonenumber/libphonenumber-9.0.42-1-x86_64.pkg.tar.zst",
  sha256  = "f857fedd2d4dd5d3b1c340357d4d876f31b50ce377b874db5a60fc638a0b8160",
  deps    = { "abseil-cpp", "glibc", "icu", "libgcc", "libstdc++", "protobuf" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgeocoding.so.9.0")
  end,
}
