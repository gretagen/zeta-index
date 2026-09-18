return {
  name    = "kbd",
  version = "2.10.0",
  summary = "Keyboard and console utilities (loadkeys, setfont, dumpkeys, showkey, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kbd/kbd-2.10.0.tar.gz",
  sha256  = "65fc73eed4f6f18a0390ef1dc4ea4405a157c01f81b411c6501203afb75481f6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/loadkeys && test -x " .. p.install_root .. "/usr/bin/setfont")
  end,
}
