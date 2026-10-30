return {
  name    = "libgfortran",
  version = "16.2.1+r23+gd564253eb6c8-1-x86_64",
  summary = "runtime libraries shipped by GCC",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgfortran/libgfortran-16.2.1+r23+gd564253eb6c8-1-x86_64.pkg.tar.zst",
  sha256  = "0b40387c87793ed7b72fc3138c6877630ed66d8b5f841e436f4372a6405663e6",
  deps    = { "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgfortran.so.5.0.0")
  end,
}
