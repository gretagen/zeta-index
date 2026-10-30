return {
  name    = "libmatio",
  version = "1.5.30-1-x86_64",
  summary = "c library with a fortran 90/95 module interface for reading/writing MATLAB MAT-files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmatio/libmatio-1.5.30-1-x86_64.pkg.tar.zst",
  sha256  = "793ea554a35f2413206172f1d91e968a764bf871c3220c1a8c0caf8d1b819c2e",
  deps    = { "glibc", "hdf5", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmatio.so.14.0.0")
  end,
}
