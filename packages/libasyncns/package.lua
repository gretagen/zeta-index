return {
  name    = "libasyncns",
  version = "0.8+r3+g68cd5af-3-x86_64",
  summary = "a C library for executing name service queries asynchronously",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libasyncns/libasyncns-0.8+r3+g68cd5af-3-x86_64.pkg.tar.zst",
  sha256  = "de65e601391ace5c126e863ad67245b03cfe87f46c12b509668f3da2419bbf15",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libasyncns.so.0.3.1")
  end,
}
