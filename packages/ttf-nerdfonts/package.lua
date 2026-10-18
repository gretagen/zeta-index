return {
  name    = "ttf-nerdfonts",
  version = "3.5.1",
  summary = "Nerd Fonts icon glyphs + patched mono fonts (waybar/terminal)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ttf-nerdfonts/ttf-nerdfonts-3.5.1.tar.xz",
  sha256  = "a06a21cc948229ac1a4e9469c140ca5445626d1a8dd6f4d692d95e0a4d8b94e5",
  deps    = { "fontconfig" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/truetype/nerdfonts/SymbolsNerdFontMono-Regular.ttf && ls " .. p.install_root .. "/usr/share/fonts/truetype/nerdfonts/*JetBrains* >/dev/null && ls " .. p.install_root .. "/usr/share/fonts/truetype/nerdfonts/*Hack* >/dev/null && ls " .. p.install_root .. "/usr/share/fonts/truetype/nerdfonts/*Meslo* >/dev/null")
  end,
}
