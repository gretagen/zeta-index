return {
  name    = "efibootmgr",
  version = "18-4-x86_64",
  summary = "Interact with the EFI Boot Manager (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/efibootmgr/efibootmgr-18-4-x86_64.pkg.tar.zst",
  sha256  = "1e6166d0024f3f0de37919a51f5c00981e42e6e087937858cf82f30edf71f17e",
  deps    = { "glibc", "efivar", "popt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/efibootmgr")
  end,
}
