return {
  name    = "intel-gmmlib",
  version = "22.10.1",
  summary = "Intel Graphics Memory Management Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/intel-gmmlib/intel-gmmlib-22.10.1.tar.gz",
  sha256  = "775c610cbb5598918aae491e524851a5264e06b488322df0e00079dd98afcbde",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libigdgmm.so.12")
  end,
}
