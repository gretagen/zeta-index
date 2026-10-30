return {
  name    = "lxdm",
  version = "0.5.3-10-x86_64",
  summary = "lightweight X11 Display Manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxdm/lxdm-0.5.3-10-x86_64.pkg.tar.zst",
  sha256  = "1823c9954bc1ea53543aacb2b6da7f733064e5cfa0572d18a3a778956fc29c13",
  deps    = { "bash", "cairo", "gdk-pixbuf", "glib", "glibc", "gtk3", "libX11", "libxcb", "pam", "pango", "xorg-server" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/lxdm")
  end,
}
