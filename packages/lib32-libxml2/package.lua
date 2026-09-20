return {
  name    = "lib32-libxml2",
  version = "2.15.4",
  summary = "XML C parser and toolkit (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxml2/lib32-libxml2.pkg.tar.zst",
  sha256  = "abefa74ff8e1501b8db68f395c70d75cedb7b01198813607cb08991ef2f83e23",
  deps    = { "lib32-glibc", "lib32-icu", "libxml2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
