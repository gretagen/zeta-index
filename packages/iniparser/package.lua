return {
  name    = "iniparser",
  version = "4.2.6",
  summary = "Standalone ini-file parsing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniparser/iniparser-4.2.6.tar.gz",
  sha256  = "547cd99f8c91a68b8c1030b0e41813b68f319af9841ec1f96cabf87221d31d32",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libiniparser.so.4")
  end,
}
