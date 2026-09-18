return {
  name    = "gettext",
  version = "1.0-2-x86_64",
  summary = "GNU gettext runtime library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gettext/gettext-1.0-2-x86_64.pkg.tar.zst",
  sha256  = "bf1bd9d2f096f1446a645a89a26663371ab6ef78a8ed4b1c3f006b60569a2e28",
  deps    = { "acl", "attr", "curl", "json-c", "libunistring", "libxml2", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
