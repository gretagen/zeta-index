return {
  name    = "libdovi",
  version = "3.4.0",
  summary = "Library to read and write Dolby Vision metadata",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdovi/libdovi.pkg.tar.zst",
  sha256  = "5832cbddc94e3eb134fc14420d8b4503cb9683041b724a64fdedd080155fa106",
  deps    = { "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
