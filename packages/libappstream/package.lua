return {
  name    = "libappstream",
  version = "1.1.5",
  summary = "AppStream cross-distro software metadata library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libappstream/libappstream-1.1.5.tar.gz",
  sha256  = "b75ed62e392c69bdc6a1f2b8a2f9bf50829c738901e9a935be7dd2172435b6b2",
  deps    = { "glibc", "libfyaml", "libxmlb", "libcurl", "libxml2", "libyaml" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libappstream.so.5")
  end,
}
