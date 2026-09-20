return {
  name    = "libsasl",
  version = "2.1.28",
  summary = "Cyrus Simple Authentication Service Layer (SASL) library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsasl/libsasl.pkg.tar.zst",
  sha256  = "113e1676371544e5142a46ee046a6179ace201c4f0a0d56b618a984b5c764463",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
