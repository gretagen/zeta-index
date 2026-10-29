return {
  name    = "mate-themes",
  version = "3.22.26",
  summary = "Themes for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-themes/mate-themes-3.22.26.tar.gz",
  sha256  = "ccae145d7c5b315c9e10249d4a01595a08eb48a7f3aedce95a3299966e39d70b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
