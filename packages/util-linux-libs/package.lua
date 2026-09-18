return {
  name    = "util-linux-libs",
  version = "2.42",
  summary = "Util-linux shared libraries (libblkid, libmount)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/util-linux-libs/util-linux-libs-2.42.tar.gz",
  sha256  = "d9b15bc10e0b0f67bbd0f8e406af638e6eeedc8483f41a614c28dbd26d9512db",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libblkid.so.1")
  end,
}
