return {
  name    = "uchardet",
  version = "0.0.8",
  summary = "Encoding detector library ported from Mozilla",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/uchardet/uchardet.pkg.tar.zst",
  sha256  = "afe60fcdc490303349b23d0aaf3fa19205fb4a029ba1382dd8bd2a18d5db292c",
  deps    = { "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
