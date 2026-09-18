return {
  name    = "limine",
  version = "12.6.1",
  summary = "Limine multiprotocol bootloader (UEFI, BIOS, PXE)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/limine/limine-12.6.1.tar.gz",
  sha256  = "7d30bea27b61a30a79edb8c24d75881256b58f900a71bf6a4c470c0f7d3c1c81",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/limine && test -e " .. p.install_root .. "/usr/share/limine/BOOTX64.EFI")
  end,
}
