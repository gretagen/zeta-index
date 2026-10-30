return {
  name    = "libgsystemservice",
  version = "0.3.0-2-x86_64",
  summary = "common components for building D-Bus system services",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgsystemservice/libgsystemservice-0.3.0-2-x86_64.pkg.tar.zst",
  sha256  = "6d07b76d9156c80d7d8fa4435b24515b4012081839a3d56a216c43b713816bfb",
  deps    = { "glib", "glibc", "libgcc", "polkit", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgsystemservice-0.so.0.3.0")
  end,
}
