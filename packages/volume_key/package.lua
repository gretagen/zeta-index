return {
  name    = "volume_key",
  version = "0.3.12",
  summary = "A library for manipulating storage volume encryption keys and storing them separately from volumes to handle forgotten passphrases",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/volume_key/volume_key.pkg.tar.zst",
  sha256  = "8f6528250a09cf4781e2de814a2a4056d05ff5e3df17184aee5a0b59da12a04c",
  deps    = { "cryptsetup", "glib2", "gpgme", "nspr", "nss", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
