return {
  name    = "libsysprof-capture",
  version = "50.0",
  summary = "Kernel based performance profiler - capture library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsysprof-capture/libsysprof-capture.pkg.tar.zst",
  sha256  = "4467ddc2c476f9a6249737ff1ef5714f4b376e55719968c168f3b8a86c098bbb",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
