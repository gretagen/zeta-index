return {
  name    = "libiec61883",
  version = "1.2.0",
  summary = "IEEE 1394 media transport library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libiec61883/libiec61883-1.2.0-9-x86_64.pkg.tar.zst",
  sha256  = "ce0718c4be56ebe9570c6571412191bc1bc57461ac646397b4e52b0f2b5032cd",
  deps    = { "glibc", "libraw1394", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
