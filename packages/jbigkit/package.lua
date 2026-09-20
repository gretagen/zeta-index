return {
  name    = "jbigkit",
  version = "2.1",
  summary = "JBIG encoding/decoding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/jbigkit/jbigkit-2.1-8-x86_64.pkg.tar.zst",
  sha256  = "ca53fa884681273162aadcf99c30514a7010d5e621eb0a5ae491500ae8dc52c9",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
