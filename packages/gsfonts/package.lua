return {
  name    = "gsfonts",
  version = "20200910-6-any",
  summary = "(URW)++ base 35 font set",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gsfonts/gsfonts-20200910-6-any.pkg.tar.zst",
  sha256  = "fa588825fa0d6ba43ad7d2fc755990ea7613bc14440f387ce0a5db3a2cc0e303",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/fontconfig/conf.avail/69-urw-bookman.conf")
  end,
}
