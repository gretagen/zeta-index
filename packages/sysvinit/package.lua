return {
  name = "sysvinit",
  version = "3.14",
  summary = "System V init (init, halt, shutdown, runlevel, etc)",
  url = "https://github.com/slicer69/sysvinit/releases/download/3.14/sysvinit-3.14.tar.xz",
  sha256 = "c90874b8c054a35991fb8c4d30c443ed1e9b1815ff6165c7b483f558be4e4b53",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/init")
  end,
}
