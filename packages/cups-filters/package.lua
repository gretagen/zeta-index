return {
  name    = "cups-filters",
  version = "2.0.1-3-x86_64",
  summary = "openPrinting CUPS Filters",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cups-filters/cups-filters-2.0.1-3-x86_64.pkg.tar.zst",
  sha256  = "51038c783e6b5d89f05b8c0944aac88f16435d69999f6fb6d9ee3c768d3436a5",
  deps    = { "libcups", "libppd", "libcupsfilters", "glibc", "bash" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/cups/backend/beh")
  end,
}
