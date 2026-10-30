return {
  name    = "libp11-kit",
  version = "0.26.5-1-x86_64",
  summary = "loads and enumerates PKCS#11 modules (library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libp11-kit/libp11-kit-0.26.5-1-x86_64.pkg.tar.zst",
  sha256  = "8ddc055b304a98c2434fa5d25550c94c0bbcdb22388f752e05e619b2ee98027c",
  deps    = { "glibc", "libffi", "libtasn1" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libp11-kit.so.0.4.11")
  end,
}
