return {
  name    = "python-xcffib",
  version = "1.7.1-1-any",
  summary = "xcffib is the XCB binding for python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-xcffib/python-xcffib-1.7.1-1-any.pkg.tar.zst",
  sha256  = "a7922c8315d630bccfdfa61a4be43ad58d551501985c7da73f0f883d27401e6e",
  deps    = { "python-cffi", "libxcb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/xcffib-1.7.1.dist-info/METADATA")
  end,
}
