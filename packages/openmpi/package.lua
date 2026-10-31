return {
  name    = "openmpi",
  version = "5.0.11-1-x86_64",
  summary = "High performance message passing library (Open MPI) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openmpi/openmpi-5.0.11-1-x86_64.pkg.tar.zst",
  sha256  = "71f3a19ee7be5cae944778a3586c0814d5a9e4c5c6d118b637a206545ea755dd",
  deps    = { "glibc", "hwloc", "libevent", "libfabric", "libgcc", "openpmix", "openucx", "prrte" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmpi.so.40")
  end,
}
