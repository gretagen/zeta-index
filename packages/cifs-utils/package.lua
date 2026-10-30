return {
  name    = "cifs-utils",
  version = "7.9-1-x86_64",
  summary = "cIFS filesystem user-space tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cifs-utils/cifs-utils-7.9-1-x86_64.pkg.tar.zst",
  sha256  = "086befab80425b7d08a7029ae3b4dcb1c97d98d4f27d3e090ab403a9e999c26e",
  deps    = { "keyutils", "krb5", "pam", "libcap-ng", "libwbclient", "talloc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/cifs.idmap")
  end,
}
