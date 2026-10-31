return {
  name    = "visidata",
  version = "3.5-1-any",
  summary = "Terminal spreadsheet multitool for tabular data (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/visidata/visidata-3.5-1-any.pkg.tar.zst",
  sha256  = "153160bb146617ab06709875f05c21a5b5d86a08573ddde3eaadd5e207400944",
  deps    = { "python", "python-dateutil", "python-importlib-metadata", "setuptools" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/visidata")
  end,
}
