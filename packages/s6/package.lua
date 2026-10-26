return {
  name = "s6",
  version = "2.15.1.1",
  summary = "Skarnet process supervision suite and init system",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/s6/s6-2.15.1.1.tar.gz",
  sha256 = "70ed15ce8e5b79734f316a5d0213d5625bdd61b31989dd0cdce3c7bad2e6f06b",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/s6-svscan --version")
  end,
}
