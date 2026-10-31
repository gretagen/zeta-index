return {
  name    = "libfabric",
  version = "2.7.0-1-x86_64",
  summary = "Open Fabric Interfaces library (libfabric) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfabric/libfabric-2.7.0-1-x86_64.pkg.tar.zst",
  sha256  = "748fb926d2512b1d3510986cf8d58dfa8030490825239d992acca55948b39b9f",
  deps    = { "glibc", "numactl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfabric.so.1")
  end,
}
