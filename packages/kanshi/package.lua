return {
  name    = "kanshi",
  version = "1.9.0-1-x86_64",
  summary = "dynamic output configuration for Wayland WMs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/kanshi/kanshi-1.9.0-1-x86_64.pkg.tar.zst",
  sha256  = "fa0192fab6c92e0465efc9b3be4691f3846b67a4202c68e6a64934f17bb45bab",
  deps    = { "glibc", "libscfg", "vali", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/kanshi")
  end,
}
