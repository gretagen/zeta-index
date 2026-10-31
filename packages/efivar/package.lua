return {
  name    = "efivar",
  version = "39-2-x86_64",
  summary = "Tools and library for manipulating EFI variables (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/efivar/efivar-39-2-x86_64.pkg.tar.zst",
  sha256  = "9bfa2152203237d61f0e41819572e2fe19e9cf5613442b24f5f02573ab030e74",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libefivar.so.1")
  end,
}
