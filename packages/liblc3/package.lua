return {
  name    = "liblc3",
  version = "1.1.3-2-x86_64",
  summary = "low Complexity Communication Codec library and tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/liblc3/liblc3-1.1.3-2-x86_64.pkg.tar.zst",
  sha256  = "8c5039ae39f823830941ed4d52a781758041c0289b918bce5cba67eb9ee89579",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblc3.so.1")
  end,
}
