return {
  name    = "tzdata",
  version = "2026c",
  summary = "IANA timezone database (zoneinfo)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tzdata/tzdata-2026c.tar.gz",
  sha256  = "19570c684147160ac3fc81efa88bb27aa3aad1bba7f7e8e46bda40c9609385e5",
  deps    = {},
  archive = { strip = 0 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/zoneinfo/America && test -e " .. p.install_root .. "/usr/share/zoneinfo/zone.tab")
  end,
}
