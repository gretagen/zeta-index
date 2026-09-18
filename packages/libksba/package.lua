return {
  name    = "libksba",
  version = "1.8.0",
  summary = "Library for X.509 and CMS data structures",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libksba/libksba-1.8.0.tar.gz",
  sha256  = "c0d1ede7e82137013fd5c1e8b59a960008b7b82a8edb3f598fd9e9a2598f5533",
  deps    = { "glibc", "libgpg-error" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libksba.so.8")
  end,
}
