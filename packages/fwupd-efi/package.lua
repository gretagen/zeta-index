return {
  name    = "fwupd-efi",
  version = "1.9-1-any",
  summary = "EFI executable for fwupd (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fwupd-efi/fwupd-efi-1.9-1-any.pkg.tar.zst",
  sha256  = "a1fe301a0edd8344a33d1ab737ce8de00bb2ba51c21cae9fca6b1cf6876b741a",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/fwupd/efi/fwupdx64.efi")
  end,
}
