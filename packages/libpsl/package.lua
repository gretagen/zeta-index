return {
  name    = "libpsl",
  version = "0.21.5",
  summary = "Public Suffix List library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libpsl/libpsl-0.21.5.tar.gz",
  sha256  = "81a5b64c901a3b126f1bc499edf7942fd95780a79232d645b92cb994b3757479",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpsl.so.5")
  end,
}
