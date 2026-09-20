return {
  name    = "sed",
  version = "4.10",
  summary = "GNU stream editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/sed/sed.pkg.tar.zst",
  sha256  = "90733f34fe5791b554b935998df858350bcea53061257dba06829ce3533f8e01",
  deps    = { "acl", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
