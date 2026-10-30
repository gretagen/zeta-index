return {
  name    = "spandsp",
  version = "0.0.6-7-x86_64",
  summary = "low-level signal processing library that modulates and demodulates signals commonly used in",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/spandsp/spandsp-0.0.6-7-x86_64.pkg.tar.zst",
  sha256  = "08ee8756f182ad22f5651818c459c868cd992985f724ee4af30c0b5564c09c55",
  deps    = { "glibc", "libtiff" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libspandsp.so.2.0.0")
  end,
}
