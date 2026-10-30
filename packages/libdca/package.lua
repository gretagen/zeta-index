return {
  name    = "libdca",
  version = "0.0.7-3-x86_64",
  summary = "library for decoding DTS Coherent Acoustics streams",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libdca/libdca-0.0.7-3-x86_64.pkg.tar.zst",
  sha256  = "e3620d06ec5b3d5ff7316b4f57c7151c8595bb2cfc8e413ffb160eb6dbd52734",
  deps    = { "bash", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdca.so.0.0.0")
  end,
}
