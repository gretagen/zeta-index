return {
  name    = "noto-fonts-emoji",
  version = "2.057-1-any",
  summary = "google Noto Color Emoji font",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/noto-fonts-emoji/noto-fonts-emoji-2.057-1-any.pkg.tar.zst",
  sha256  = "d030b017c729065e1f6349a71ed573e8eeedf9f47a6f945e0d3178236e4418e8",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/fonts/noto/NotoColorEmoji.ttf")
  end,
}
