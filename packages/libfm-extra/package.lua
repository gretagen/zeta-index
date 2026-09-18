return {
  name    = "libfm-extra",
  version = "1.3.2",
  summary = "File-manager helper library (libfm-extra)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libfm-extra/libfm-extra-1.3.2.tar.gz",
  sha256  = "29bcabce01554729f62705101821649905b5ee03b5d8b7cf525da84118e8fa0d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libfm-extra.so.4")
  end,
}
