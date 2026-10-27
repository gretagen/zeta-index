return {
  name    = "bottom",
  version = "0.14.9",
  summary = "Cross platform graphical process and system monitor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bottom/bottom-0.14.9.tar.gz",
  sha256  = "33247b0243eddaa3e33fc308fac546f7f1f4e082ba7e9c36c31d794b99af41e1",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/btm")
  end,
}
