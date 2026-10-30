return {
  name    = "xorg-xauth",
  version = "1.1.5-1-x86_64",
  summary = "x.Org authorization settings program",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xorg-xauth/xorg-xauth-1.1.5-1-x86_64.pkg.tar.zst",
  sha256  = "df9e0d1f29ae0135a49b17157841a4cc7c97869f9f27fd7480fff64f9afb94b7",
  deps    = { "libXmu", "libXau", "libXext", "libX11", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xauth")
  end,
}
