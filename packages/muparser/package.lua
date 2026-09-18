return {
  name    = "muparser",
  version = "2.3.5",
  summary = "Fast math expression parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/muparser/muparser-2.3.5.tar.gz",
  sha256  = "8f949227a65cb6361c4bf6f9610c9abc2d8bbf48ef9eeca61e61520d3aee7408",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmuparser.so.2")
  end,
}
