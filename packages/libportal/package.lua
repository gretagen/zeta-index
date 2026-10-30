return {
  name    = "libportal",
  version = "0.11.0-1-x86_64",
  summary = "gIO-style async APIs for most Flatpak portals",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libportal/libportal-0.11.0-1-x86_64.pkg.tar.zst",
  sha256  = "b25f331290f34bf10532eb55a8f25409ed53ac0ada45d6e0737edbc2455297bf",
  deps    = { "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libportal.so.1.0.0")
  end,
}
