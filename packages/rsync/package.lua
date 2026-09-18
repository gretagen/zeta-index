return {
  name    = "rsync",
  version = "3.5.0",
  summary = "Remote file sync with ACL/xattr support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/rsync/rsync-3.5.0.tar.gz",
  sha256  = "771f2bf5a3f504f84537633281f5ba19d4618b661c7776101a176f05aea51da2",
  deps    = { "glibc", "acl", "attr", "libz", "lz4", "zstd", "xxhash", "openssl", "brotli" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/rsync && ldd " .. p.install_root .. "/usr/bin/rsync | grep -q libacl")
  end,
}
