return {
  name    = "socat",
  version = "1.8.1.3-1-x86_64",
  summary = "Multipurpose relay (SOcket CAT) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/socat/socat-1.8.1.3-1-x86_64.pkg.tar.zst",
  sha256  = "a2f10617c24c5fc18bf1dd06aee28d466d3e31660c8fda17585fe813d296c38c",
  deps    = { "glibc", "readline", "openssl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/socat")
  end,
}
