return {
  name    = "dejavusans",
  version = "2.37",
  summary = "DejaVu Sans/Serif/Mono TrueType fonts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dejavusans/dejavusans-2.37.tar.gz",
  sha256  = "ab2de9d354b8a8b630f5fbba93cd30103ae40050656dd0f8e628a1856ee4252f",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf")
  end,
}
