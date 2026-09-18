return {
  name    = "xkbcomp",
  version = "1.4.7",
  summary = "X keyboard description compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xkbcomp/xkbcomp-1.4.7.tar.gz",
  sha256  = "d7bea80e857570a6b3dfd7afa4469c9aa104cb22e3a658ad5815ca6e50ad90de",
  deps    = { "glibc", "libX11", "libXkbfile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xkbcomp")
  end,
}
