return {
  name    = "pciutils",
  version = "3.15.0",
  summary = "PCI utility tools and the libpci library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pciutils/pciutils-3.15.0.tar.gz",
  sha256  = "fd58c30032c9ce1492b8a9ad2b376938047cfa12b17b83accc99b9f84c3ea13a",
  deps    = { "glibc", "libz", "kmod", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpci.so.3 && test -f " .. p.install_root .. "/usr/include/pci/pci.h && test -x " .. p.install_root .. "/usr/bin/lspci && test -n \"$(find " .. p.install_root .. "/usr/lib -name '*.pc' -path '*pci*')\"")
  end,
}
