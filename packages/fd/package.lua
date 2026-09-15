return {
  name    = "fd",
  version = "10.5.0",
  summary = "Simple find alternative",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/fd/fd-10.5.0-3-x86_64.pkg.tar.zst",
  sha256  = "b6480939fdf3a3a2f4e16c857bdd6de9015c9dc949d31f8585268ff504effb2e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fd")
  end,
}