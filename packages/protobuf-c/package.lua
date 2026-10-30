return {
  name    = "protobuf-c",
  version = "1.5.2-15-x86_64",
  summary = "protocol Buffers implementation in C",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/protobuf-c/protobuf-c-1.5.2-15-x86_64.pkg.tar.zst",
  sha256  = "5f6d5bf77d267ab0b77dd09e488a3480c7e4e8c92a2d9e9a43200c386886a1c7",
  deps    = { "protobuf" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libprotobuf-c.so.1.0.0")
  end,
}
