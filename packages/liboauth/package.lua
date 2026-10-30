return {
  name    = "liboauth",
  version = "1.0.3+r16+gc26f038-2-x86_64",
  summary = "c library implementing OAuth Core RFC 5849",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/liboauth/liboauth-1.0.3+r16+gc26f038-2-x86_64.pkg.tar.zst",
  sha256  = "64e0420b60003bc80749bc16c0b3241e3155c1c871c99d4e294b02615a33d923",
  deps    = { "curl", "nss" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liboauth.so.0.8.7")
  end,
}
