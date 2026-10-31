return {
  name    = "httpie",
  version = "3.2.4-2-any",
  summary = "User-friendly command-line HTTP client (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/httpie/httpie-3.2.4-2-any.pkg.tar.zst",
  sha256  = "67ef72cb14a978498839f80a67350f5bbc49b6cf77f90f94686a2f018c8c530d",
  deps    = { "python", "python-charset-normalizer", "python-defusedxml", "python-multidict", "pip", "python-pygments", "python-pysocks", "python-requests", "python-requests-toolbelt", "python-rich" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/http")
  end,
}
