return {
  name    = "protobuf",
  version = "6.31.1",
  summary = "Protocol Buffers runtime and compiler (protoc)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/protobuf/protobuf-6.31.1.tar.gz",
  sha256  = "4a7bf618631605a1f8140dbd34c59f0edc13b701211e7189458b5db5b2138352",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/protoc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/protobuf.pc && ls " .. p.install_root .. "/usr/lib/libprotobuf.so* | grep -q libprotobuf && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/protoc --version")
  end,
}
