return {
  name    = "accountsservice",
  version = "26.27.3",
  summary = "D-Bus interface for user account manipulation (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/accountsservice/accountsservice-26.27.3.pkg.tar.zst",
  sha256  = "d3af0478419f59cf771f516cd6265e1e9f7a4e8d3e9cede1d0e6f7173835dab1",
  deps    = { "glib", "json-c", "libxcrypt", "polkit", "shadow", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
