return {
  name    = "adwaita-cursors",
  version = "51.0-1-any",
  summary = "Adwaita cursor theme for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/adwaita-cursors/adwaita-cursors-51.0-1-any.pkg.tar.zst",
  sha256  = "7eba104ea1a7a04e3058bf5fc8108ec37bbd38b4966bc36722b23bfaff2e5af4",
  deps    = {  },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/icons/Adwaita/cursors/X_cursor")
  end,
}
