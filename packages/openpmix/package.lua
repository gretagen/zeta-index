return {
  name    = "openpmix",
  version = "5.0.11-1-x86_64",
  summary = "Process management interface for MPI (OpenPMIx) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openpmix/openpmix-5.0.11-1-x86_64.pkg.tar.zst",
  sha256  = "723e5a49b3fc10d7a90878df757573fa937cc3b7143e307da8487705f0d92c7b",
  deps    = { "glibc", "hwloc", "libevent", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpmix.so.2")
  end,
}
