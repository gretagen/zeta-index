return {
  name    = "iwd",
  version = "3.12",
  summary = "Wireless daemon (iNet Wireless Daemon)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iwd/iwd-3.12.tar.gz",
  sha256  = "51e300dc8239f7c5f8b086aa5c1f91f3f720366c31f4359d896f91ef3cd24cf0",
  deps    = { "glibc", "ell", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/iwd && test -x " .. p.install_root .. "/usr/bin/iwctl && test -d " .. p.install_root .. "/etc/iwd && ! strings " .. p.install_root .. "/usr/libexec/iwd | grep -q /usr/var")
  end,
}
