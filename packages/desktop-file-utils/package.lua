return {
  name    = "desktop-file-utils",
  version = "0.28",
  summary = "Command line utilities for working with desktop entries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/desktop-file-utils/desktop-file-utils.pkg.tar.zst",
  sha256  = "cc525a69b6901318f360fae249986e62f233c0320c61274f2bad44449e0c8e44",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/update-desktop-database")
  end,
}
