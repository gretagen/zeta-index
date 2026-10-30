return {
  name    = "libiptcdata",
  version = "1.0.5-5-x86_64",
  summary = "library for manipulating the IPTC metadata",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libiptcdata/libiptcdata-1.0.5-5-x86_64.pkg.tar.zst",
  sha256  = "1686c691938c8c986a94b2eb221e644e7e35735ba10390a78cff43df3717a248",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libiptcdata.so.0.3.3")
  end,
}
