return {
  name    = "identity",
  version = "1.0",
  summary = "Haliade system identity (/etc/os-release)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/identity/identity-1.0.tar.gz",
  sha256  = "4ef53746230e0e1643ff9b6cb9614e59368a4d9daf9c6c90f44f0101fc38cd3b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -f " .. r .. "/etc/os-release")
    p:run("grep -qxF 'NAME=\"HaliadeSYS\"' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'PRETTY_NAME=\"HaliadeSYS (Ver 1.0 : Savonius)\"' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'ID=haliade' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'VERSION_CODENAME=savonius' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'VERSION=\"1.0\"' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'HOME_URL=\"https://github.com/gretagen/HaliadeSYS\"' " .. r .. "/etc/os-release")
    p:run("grep -qxF 'LOGO=haliade' " .. r .. "/etc/os-release")
    p:run("test \"$(wc -l < " .. r .. "/etc/os-release)\" -eq 7")
    p:run("! grep -q Devalas " .. r .. "/etc/os-release")
  end,
}
