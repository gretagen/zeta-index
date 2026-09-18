return {
  name    = "abseil-cpp",
  version = "20260107",
  summary = "Google's Abseil C++ library (collection of C++ library code)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/abseil-cpp/abseil-cpp-2601.tar.gz",
  sha256  = "3bfba22efca2f7a734e7bf935ef25827aea4523184482f9644377c53a58fc13f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libabsl_base.so.2601.0.0")
  end,
}
