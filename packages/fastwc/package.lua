return {
  name    = "fastwc",
  version = "0.1.0",
  summary = "A wc replacement that beats GNU wc - SIMD kernels, mmap, threads",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fastwc/fastwc-0.1.0.tar.gz",
  sha256  = "4137be8c452c49743d2c23e14d85b4eca49003c7060969b0f19ee306be6bc428",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fastwc && printf 'a b c\\n' | " .. p.install_root .. "/usr/bin/fastwc -w | grep -q '3'")
  end,
}
