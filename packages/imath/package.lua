return {
  name    = "imath",
  version = "3.2.3-1-x86_64",
  summary = "a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/imath/imath-3.2.3-1-x86_64.pkg.tar.zst",
  sha256  = "f034fcd6b6df873e8dd248b4ad7a5b9dab86b30f9fd249be92d4299741ac07c2",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libImath-3_2.so.30.3.2.3")
  end,
}
