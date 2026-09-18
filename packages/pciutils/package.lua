return {
  name    = "pciutils",
  version = "3.15.0",
  summary = "PCI bus utilities (lspci, setpci, update-pciids)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pciutils/pciutils-3.15.0.tar.gz",
  sha256  = "48e8ac07777aecd1add0b9f439468caa05c071156e5d02df606f71ff662bfaac",
  deps    = { "glibc", "libz", "systemd-libs", "kmod" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lspci")
  end,
}
