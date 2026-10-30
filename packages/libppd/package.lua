return {
  name    = "libppd",
  version = "2.1.1-2-x86_64",
  summary = "openPrinting - the legacy support library for PPD files",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libppd/libppd-2.1.1-2-x86_64.pkg.tar.zst",
  sha256  = "7a8fba5dc41dea41b16216b43e6f9ce374a3e56b2b668b9b473d9da54c634650",
  deps    = { "libcups", "libcupsfilters", "libz", "glibc", "libstdc++", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libppd.so.2.0.0")
  end,
}
