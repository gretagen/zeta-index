return {
  name    = "libcbor",
  version = "0.14.0-1-x86_64",
  summary = "c library for parsing and generating CBOR, the general-purpose schema-less binary data format",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcbor/libcbor-0.14.0-1-x86_64.pkg.tar.zst",
  sha256  = "c6178320776e798dbd9d558cd5891ab2462a10c96c3dbc2dd3624c86ee59cc7e",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcbor.so.0.14.0")
  end,
}
