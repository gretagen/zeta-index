return {
  name    = "pcsclite",
  version = "2.5.3-1-x86_64",
  summary = "pC/SC Architecture smartcard middleware library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pcsclite/pcsclite-2.5.3-1-x86_64.pkg.tar.zst",
  sha256  = "bd80ba7f5d249a00f1cf4da0c77eba0635e230b1035c0bf219b3e2cad3bd02a2",
  deps    = { "systemd-libs", "polkit" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpcsclite.so.1")
  end,
}
