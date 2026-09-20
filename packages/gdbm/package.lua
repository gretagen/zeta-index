return {
  name    = "gdbm",
  version = "1.26",
  summary = "GNU database library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gdbm/gdbm.pkg.tar.zst",
  sha256  = "7bb8768fc7f617c580ae4c7902aed5413984a8374915da42beeecbb085c2a29e",
  deps    = { "readline", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
