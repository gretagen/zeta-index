return {
  name    = "openbsd-netcat",
  version = "1.239_1-1-x86_64",
  summary = "TCP/IP swiss army knife (nc) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/openbsd-netcat/openbsd-netcat-1.239_1-1-x86_64.pkg.tar.zst",
  sha256  = "fb70266e3d67e9f823d18ef50a32003ded7a486f0a732142ef6ea55548eb155a",
  deps    = { "glibc", "libbsd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nc")
  end,
}
