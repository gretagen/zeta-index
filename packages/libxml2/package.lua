return {
  name    = "libxml2",
  version = "2.15.3",
  summary = "XML C parser and toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxml2/libxml2-2.15.3.tar.gz",
  sha256  = "99214081590302908c76116d1eb4b700ab32fd519ce2fde331b32a963c36918b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxml2.so.16")
  end,
}
