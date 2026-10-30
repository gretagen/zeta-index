return {
  name    = "lightdm",
  version = "1.33.1-1-x86_64",
  summary = "a lightweight display manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lightdm/lightdm-1.33.1-1-x86_64.pkg.tar.zst",
  sha256  = "3f36bc3e099554e4c644b875aa54d98c52737bb26622e3710c84a425024bd8eb",
  deps    = { "audit", "bash", "glib", "glibc", "libgcc", "libgcrypt", "libX11", "libxcb", "libXdmcp", "libxklavier", "pam", "polkit", "xorg-server", "xorg-xmodmap", "xorg-xrdb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/lightdm")
  end,
}
