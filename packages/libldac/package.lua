return {
  name    = "libldac",
  version = "2.0.2.6-1-x86_64",
  summary = "lDAC Bluetooth encoder library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libldac/libldac-2.0.2.6-1-x86_64.pkg.tar.zst",
  sha256  = "aa163544d10dd2e8ebfb3011894660aa9334566aad731899b274de8c0171c1ba",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libldacBT_abr.so.2.0.2")
  end,
}
