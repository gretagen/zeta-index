return {
  name    = "base",
  version = "1.0.1",
  summary = "Haliade system base system (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/base/base-1.0.1.tar.gz",
  sha256  = "55546fa4a994570e9c87e15128b1a1d691b8608cbc885cd489f480a32b12f8ed",
  deps    = { "glibc", "gcc-minimal", "openrc", "haliade-utils", "bash", "uutils-coreutils", "tar", "squashfs-tools", "lua", "cfdisk", "bubblewrap", "util-linux", "zeta", "thesh", "declaration", "house-handlers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
