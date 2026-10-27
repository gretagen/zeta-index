return {
  name    = "dust",
  version = "1.2.6",
  summary = "More intuitive version of du in Rust",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dust/dust-1.2.6.tar.gz",
  sha256  = "6f6258b95fdda8029ad6df5c39b89223e94073661a377b992c2fff1448415bf5",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dust")
  end,
}
