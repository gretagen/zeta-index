return {
  name    = "libmatroska",
  version = "7.0.0",
  summary = "Matroska container library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmatroska/libmatroska-7.0.0.tar.gz",
  sha256  = "f694c52d90b532d6050aa499259f8862fe8ea2f50198bedcc4976ac37ef39a76",
  deps    = { "glibc", "libebml" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmatroska.so.7")
  end,
}
