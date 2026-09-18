return {
  name    = "attr",
  version = "2.5.2",
  summary = "Extended attribute support library for ACL support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/attr/attr-2.5.2.tar.gz",
  sha256  = "6328b12dfed485584ebc9c1823fb5305f8eb0a73fc8042087a131e05f6882ee0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libattr.so")
  end,
}
