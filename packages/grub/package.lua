return {
  name    = "grub",
  version = "2.14-1",
  summary = "GNU GRand Unified Bootloader (BIOS + EFI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/grub/grub-2.14-1.tar.gz",
  sha256  = "32cf74fe201158b9cc3aecd2806975866d42e6cf23036357e79964edf0a8bf8a",
  deps    = { "glibc", "device-mapper", "xz-utils", "systemd-libs", "gcc", "freetype", "libfuse3", "libpng", "libz", "bzip2", "brotli" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/grub-install -a -f " .. p.install_root .. "/usr/lib/grub/x86_64-efi/modinfo.sh -a -f " .. p.install_root .. "/usr/lib/grub/i386-pc/lnxboot.img")
  end,
}
