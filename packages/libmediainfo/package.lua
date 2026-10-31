return {
  name    = "libmediainfo",
  version = "26.10-1-x86_64",
  summary = "Shared library for MediaInfo (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmediainfo/libmediainfo-26.10-1-x86_64.pkg.tar.zst",
  sha256  = "cde60ea5a0342786516bfaa199662b83e0f58900bacd1adc58023a00feb1210c",
  deps    = { "glibc", "libstdc++", "libgcc", "libz", "libcurl", "graphviz", "libmms", "tinyxml2", "libzen" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmediainfo.so.0")
  end,
}
