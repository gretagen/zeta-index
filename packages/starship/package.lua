return {
  name    = "starship",
  version = "1.27.0",
  summary = "cross-shell prompt for any shell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/starship/starship-1.27.0.tar.gz",
  sha256  = "98ac190eda5858c98c410944120244a343309b5bd6708321281b7d1e0fb11b49",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/starship")
  end,
}
