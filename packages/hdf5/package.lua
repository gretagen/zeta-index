return {
  name    = "hdf5",
  version = "2.2.0-1-x86_64",
  summary = "general purpose library and file format for storing scientific data",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/hdf5/hdf5-2.2.0-1-x86_64.pkg.tar.zst",
  sha256  = "c87b81f8139357c7d6a12d0b02edf60215ffcb99ae4d961c1f23b4780c9f838d",
  deps    = { "bash", "glibc", "libaec", "libgcc", "libgfortran", "libstdc++", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhdf5.so.320.2.0")
  end,
}
