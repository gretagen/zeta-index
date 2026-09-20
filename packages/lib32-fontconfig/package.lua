return {
  name    = "lib32-fontconfig",
  version = "2:2.18.3",
  summary = "Library for configuring and customizing font access",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-fontconfig/lib32-fontconfig.pkg.tar.zst",
  sha256  = "30e1db4d651b76d18215a065aa1e663558b81caaa185cc9dd95b74b284c02e64",
  deps    = { "fontconfig", "lib32-expat", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
