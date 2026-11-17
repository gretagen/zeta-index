return {
  name    = "speck",
  version = "0.1.0",
  summary = "Extremely minimalistic text editor (hex-encoded ELF)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/speck/speck-0.1.0.tar.gz",
  sha256  = "4562a314bb94fbaba899176def1dbd3443fa940cc81d56e936fdfa7593b120e2",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/speck && file " .. p.install_root .. "/usr/bin/speck | grep -q 'ELF 64-bit'")
  end,
}
