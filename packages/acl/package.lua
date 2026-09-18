return {
  name    = "acl",
  version = "2.4.0",
  summary = "Access control list library and utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/acl/acl-2.4.0.tar.gz",
  sha256  = "032327f2d4cfeef305401b87552466ea71f47a8f7c8465db3a00003054d7230e",
  deps    = { "glibc", "attr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("readelf --version-info " .. p.install_root .. "/usr/lib/libacl.so.1.2.2400 | grep -q ACL_1.3 && test -x " .. p.install_root .. "/usr/bin/setfacl && test -x " .. p.install_root .. "/usr/bin/getfacl")
  end,
}
