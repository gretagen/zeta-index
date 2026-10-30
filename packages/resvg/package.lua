return {
  name    = "resvg",
  version = "0.49.0-1-x86_64",
  summary = "sVG rendering library and CLI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/resvg/resvg-0.49.0-1-x86_64.pkg.tar.zst",
  sha256  = "29e4e573b0107321928b9bee355a4bd8bf97bb0c45f23ef9ae9d5c71bcd14475",
  deps    = { "gdk-pixbuf" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/resvg")
  end,
}
