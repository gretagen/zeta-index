return {
  name    = "dkms",
  version = "3.4.3",
  summary = "Dynamic Kernel Module Support framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dkms/dkms-3.4.3.tar.gz",
  sha256  = "4d6cf538ff62ca5819d040e5ce309bad708d99840ab5784fdb6d163359fca2c5",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/dkms")
  end,
}
