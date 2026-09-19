return {
  name    = "libkeybinder3",
  version = "0.3.2",
  summary = "Library for global keyboard shortcuts (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libkeybinder3/libkeybinder3-0.3.2-5-x86_64.pkg.tar.zst",
  sha256  = "726d51e5d4939aa575ca758dd97ff48dc567ffed9827b3536b02dc81a8f4c2a3",
  deps    = { "gtk3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libkeybinder*.so*")
  end,
}
