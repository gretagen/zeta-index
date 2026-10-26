return {
  name = "s6",
  version = "2.15.1.1",
  summary = "Skarnet process supervision suite and init system",
  url = "https://github.com/skarnet/s6/archive/refs/tags/v2.15.1.1.tar.gz",
  sha256 = "8ef6eeb6243d1c372ff8f830607a2a1870d36cf1b640599f3a614dece249e4c4",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/s6-svscan --version")
  end,
}
