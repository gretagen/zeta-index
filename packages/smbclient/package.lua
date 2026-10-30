return {
  name    = "smbclient",
  version = "4.25.1-1-x86_64",
  summary = "tools to access a server's filespace and printers via SMB",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/smbclient/smbclient-4.25.1-1-x86_64.pkg.tar.zst",
  sha256  = "60edd2a387e8219353c42f2c936d7011e3492a329d5e085a3599aab05aa68de6",
  deps    = { "cifs-utils", "gnutls", "icu", "jansson", "ldb", "libarchive", "libbsd", "libcups", "libldap", "libnsl", "readline", "libtdb", "tevent", "libwbclient", "popt", "python", "talloc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/smbclient")
  end,
}
