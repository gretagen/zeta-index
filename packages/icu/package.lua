return {
  name    = "icu",
  version = "79.1",
  summary = "International Components for Unicode (headers + tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/icu/icu-79.1.tar.gz",
  sha256  = "33b0b963190c7446dd6decf98b1acaa43b4caae5e6871cfcf6875f5239800833",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/unicode/ucnv.h && (test -f " .. p.install_root .. "/usr/lib/pkgconfig/icu-uc.pc -o -f " .. p.install_root .. "/usr/lib64/pkgconfig/icu-uc.pc)")
  end,
}
