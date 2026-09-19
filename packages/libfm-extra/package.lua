return {
  name    = "libfm-extra",
  version = "1.4.1",
  summary = "File-manager helper library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfm-extra/libfm-extra-1.4.1-1-x86_64.pkg.tar.zst",
  sha256  = "a2be248b57beb81d32d50a8335f2b39f0a2f1efb6de7ed64f7e41e31e3838112",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libfm-extra*.so*")
  end,
}
