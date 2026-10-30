return {
  name    = "gexiv2-common",
  version = "0.16.2-2-x86_64",
  summary = "gObject-based wrapper around the Exiv2 library (common files)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gexiv2-common/gexiv2-common-0.16.2-2-x86_64.pkg.tar.zst",
  sha256  = "8824611dad8479fad7c3f64b348bd22da550b7a4db10f0e0d7b093d1af2b78e0",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/gi/overrides/GExiv2.py")
  end,
}
