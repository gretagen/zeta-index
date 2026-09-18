return {
  name    = "cpio",
  version = "2.15",
  summary = "GNU cpio: a program to manage archives of files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cpio/cpio-2.15.tar.gz",
  sha256  = "6545b6c9e2da1db74bfdf90f7f673e5728dcec4f13d24de3e530201a877e97ff",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cpio")
  end,
}
