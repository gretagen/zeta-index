return {
  name = "s6",
  version = "2.15.1.1",
  summary = "Skarnet process supervision suite and init system",
  url = "https://skarnet.org/software/s6/s6-2.15.1.1.tar.gz",
  sha256 = "62080839eb5b04d51efd4ef6e7b43e29b5d0576efce9eb319ace32ea90c05931",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/s6-svscan --version")
  end,
}
