return {
  name    = "hyprcursor",
  version = "0.1.13",
  summary = "Library and toolkit for the Hyprland cursor format",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprcursor/hyprcursor-0.1.13.tar.gz",
  sha256  = "7edc1244ef8111a376dc1820a509ac0fce08020e5713d6c24f37105a45d8b206",
  deps    = { "glibc", "hyprlang", "libzip", "cairo", "librsvg", "tomlplusplus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libhyprcursor.so")
    p:run("test -x " .. p.install_root .. "/usr/bin/hyprcursor-util")
  end,
}
