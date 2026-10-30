return {
  name    = "openjph",
  version = "0.32.0-1-x86_64",
  summary = "open-source implementation of JPEG2000 Part-15",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openjph/openjph-0.32.0-1-x86_64.pkg.tar.zst",
  sha256  = "46ae741a0369a74b549072a2c95a3cea5e6ab4ef63314f3b7a83efa318ca8cce",
  deps    = { "glibc", "libgcc", "libstdc++", "libtiff" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libopenjph.so.0.32.0")
  end,
}
