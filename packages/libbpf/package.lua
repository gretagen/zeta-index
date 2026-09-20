return {
  name    = "libbpf",
  version = "1.7.0",
  summary = "Library for loading eBPF programs and reading and manipulating eBPF objects from user-space",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libbpf/libbpf.pkg.tar.zst",
  sha256  = "07ca39704fd534fcb4f520550cdddad5c113521f87035fb66f66a50a6d843257",
  deps    = { "libelf", "libz", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
