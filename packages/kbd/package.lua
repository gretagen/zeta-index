return {
  name    = "kbd",
  version = "2.10.0-2",
  summary = "Keyboard and console utilities (loadkeys, setfont, dumpkeys, showkey, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kbd/kbd-2.10.0-2.tar.gz",
  sha256  = "f3e56601a74feadfcdbb49e7fd2fba55152c2f73591874aebd194c44c4c6bd9a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/loadkeys && test -x " .. p.install_root .. "/usr/bin/setfont")
    -- Haliade default console fonts (Unispace): pin the CONTENT so a payload
    -- regression cannot silently restore kbd's stock default8x16.
    p:run("sha256sum " .. p.install_root .. "/usr/share/consolefonts/default8x16.psfu.gz | grep -q ^8349dfca24540f4f5d1bcde2c7cfaba2aabfa9377674b15625e3340a7a3e5102")
    p:run("sha256sum " .. p.install_root .. "/usr/share/consolefonts/default8x32.psfu.gz | grep -q ^98d843224d7467595f53244da9f44d9ef4af8e1c7c9109f4012d8e331fb34ffd")
  end,
}
