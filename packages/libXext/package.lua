return {
  name = "libXext",
  version = "1.3.7",
  summary = "X11 miscellaneous extension library (Xext, MIT-SHM, DBE, etc.)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXext/libXext-1.3.7.tar.gz",
  sha256 = "c32c75d0f132f7f4074cce7aff47cecd70af3b48ec410ac64a1762ec7e0d7373",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXext.so.6")
  end,
}
