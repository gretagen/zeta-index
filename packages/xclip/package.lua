return {
  name    = "xclip",
  version = "0.13",
  summary = "Command line interface to the X11 clipboard",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/xclip/xclip-0.13-6-x86_64.pkg.tar.zst",
  sha256  = "d92a438bf7056e134ecb291a777c7aa2aeec0423a11eeaa9002d8bcc4737a369",
  deps    = { "glibc", "libXmu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xclip")
  end,
}