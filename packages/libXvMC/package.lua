return {
  name    = "libXvMC",
  version = "1.0.14",
  summary = "X Video Motion Compensation extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXvMC/libXvMC-1.0.14.tar.xz",
  sha256  = "14f4e833fd5105f72fae0c19f93c4b245a207c3b36a1b16281eb0775d97c8809",
  deps    = { "glibc", "libX11", "libXext", "libXv" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXvMC.so.1")
  end,
}
