return {
  name    = "gcc-libs",
  version = "16.2.1",
  summary = "GCC runtime libraries (virtual - provided by libgcc, libstdc++)",
  deps    = { "libgcc", "libstdc++" },
}
