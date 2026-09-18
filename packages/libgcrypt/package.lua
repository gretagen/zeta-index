return {
  name    = "libgcrypt",
  version = "1.12.2",
  summary = "GNU Cryptographic Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgcrypt/libgcrypt-1.12.2.tar.gz",
  sha256  = "734295cfd98b29b6167167b84dc17945265207868181188897b06fbe378b9b29",
  deps    = { "glibc", "libgpg-error" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgcrypt.so.20")
  end,
}
