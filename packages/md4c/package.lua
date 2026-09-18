return {
  name    = "md4c",
  version = "0.5.3",
  summary = "C Markdown parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/md4c/md4c-0.5.3.tar.gz",
  sha256  = "b7fd314984ce208e4d43a0b03301d7481519b368cd9c5c9501de1aea46526782",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmd4c.so.0")
  end,
}
