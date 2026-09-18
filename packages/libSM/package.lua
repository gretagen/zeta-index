return {
  name    = "libSM",
  version = "1.2.5",
  summary = "X Session Management library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libSM/libSM-1.2.5.tar.gz",
  sha256  = "881f6c4b4aebb852cefca4b7476789009afb41ae6ce26ca8282ecb09a8a8dcce",
  deps    = { "glibc", "libICE", "libX11", "xorgproto", "xtrans" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libSM.so.6")
  end,
}
