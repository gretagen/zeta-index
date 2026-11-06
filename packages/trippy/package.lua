return {
  name    = "trippy",
  version = "0.13.0",
  summary = "Network diagnostic tool combining traceroute and ping (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/trippy/trippy-0.13.0.tar.gz",
  sha256  = "a82467a17cddadadb500cb579bc617cbc5026f790a13af2c4a419a6f574ef74e",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/trip")
  end,
}
