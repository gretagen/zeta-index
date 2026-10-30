return {
  name    = "tevent",
  version = "0.17.2-2-x86_64",
  summary = "event system based on the talloc memory management library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tevent/tevent-0.17.2-2-x86_64.pkg.tar.zst",
  sha256  = "aa30a016ec4d8b8aba0d2930392e3fc841afd8b59fc6955aedd343876dcee5f5",
  deps    = { "talloc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtevent.so.0.17.2")
  end,
}
