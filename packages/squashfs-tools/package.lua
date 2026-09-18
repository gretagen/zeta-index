return {
  name    = "squashfs-tools",
  version = "4.7.5",
  summary = "Tools for creating and extracting squashfs filesystems (mksquashfs, unsquashfs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/squashfs-tools/squashfs-tools-4.7.5.tar.gz",
  sha256  = "e4ae769184a74b6ed9c75d5cc3b2dab6e606904a5503d3210ee98f6036ba0c84",
  deps    = { "glibc", "libz", "lzo", "lz4", "libzstd", "xz-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mksquashfs && test -x " .. p.install_root .. "/usr/bin/unsquashfs")
  end,
}
