return {
  name    = "colord-gtk-common",
  version = "0.3.1-1-x86_64",
  summary = "GTK integration for colord (common data)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/colord-gtk-common/colord-gtk-common-0.3.1-1-x86_64.pkg.tar.zst",
  sha256  = "6faa5c34c7c3fee8fd749840b7348caf4f8bb6b32a16a86c828419f05346296f",
  deps    = {  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/girepository-1.0/ColordGtk-1.0.typelib")
  end,
}
