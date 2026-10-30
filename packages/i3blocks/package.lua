return {
  name    = "i3blocks",
  version = "1.5-4-x86_64",
  summary = "define blocks for your i3bar status line",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/i3blocks/i3blocks-1.5-4-x86_64.pkg.tar.zst",
  sha256  = "4d9086b63eefe32562f343e136caf863a91fc1bbdd8f6ef72aa3a92396989034",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/i3blocks")
  end,
}
