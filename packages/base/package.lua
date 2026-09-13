return {
  name    = "base",
  version = "1.0",
  summary = "Haliade OS base system (metapackage)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/base/base-1.0.tar.gz",
  sha256  = "b1cfe25b987423ed5a1b81ed9c2f43ac13d905d1f615c4b325df4bbcb3e67da0",
  deps    = { "glibc", "gcc", "openrc", "haliade-utils", "bash", "coreutils", "tar", "squashfs-tools", "lua", "cfdisk", "bubblewrap", "util-linux", "zeta" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/base/README")
  end,
}
