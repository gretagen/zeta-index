return {
  name    = "xdg-user-dirs-gtk",
  version = "0.16-1-x86_64",
  summary = "creates user dirs and asks to relocalize them",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xdg-user-dirs-gtk/xdg-user-dirs-gtk-0.16-1-x86_64.pkg.tar.zst",
  sha256  = "5579674821b9fc97756e2c0f47e17a5ed032fd1fca5735a74c2170e23464a3c2",
  deps    = { "glib", "glibc", "gtk3", "xdg-user-dirs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xdg-user-dirs-gtk-update")
  end,
}
