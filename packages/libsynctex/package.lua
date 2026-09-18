return {
  name    = "libsynctex",
  version = "2026.0-2-x86_64",
  summary = "SyncTeX library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libsynctex/libsynctex-2026.0-2-x86_64.pkg.tar.zst",
  sha256  = "b19ee6ca843a6a0e6401cc910002bacdeda21199f197ac1f90c2100b5583cd8f",
  deps    = { "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
