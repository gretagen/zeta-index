return {
  name    = "lksctp-tools",
  version = "1.0.21-1-x86_64",
  summary = "SCTP userspace library and tools (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lksctp-tools/lksctp-tools-1.0.21-1-x86_64.pkg.tar.zst",
  sha256  = "e088b6e569283af9893c72c85273ec884ff998974168e24254812528792d291f",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsctp.so.1")
  end,
}
