return {
  name    = "openexr",
  version = "3.5.2-1-x86_64",
  summary = "a high dynamic-range image file format library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openexr/openexr-3.5.2-1-x86_64.pkg.tar.zst",
  sha256  = "3cec88be56af81254d5fc4b0f40c0b9f4a8a897da01f0dcf18d20501d5afd593",
  deps    = { "glibc", "imath", "libdeflate", "libgcc", "libstdc++", "openjph", "zstd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libIex-3_5.so.34.3.5.2")
  end,
}
