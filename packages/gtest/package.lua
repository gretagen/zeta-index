return {
  name    = "gtest",
  version = "1.18.0-1-x86_64",
  summary = "google Test - C++ testing utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gtest/gtest-1.18.0-1-x86_64.pkg.tar.zst",
  sha256  = "a056289240aebf743810c69a9dc3a8503edf9ae98b5be167fddd66598236ebe5",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgmock.so.1.18.0")
  end,
}
