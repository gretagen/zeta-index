return {
  name    = "zsh",
  version = "5.9.2",
  summary = "Powerful shell with scripting and tab completion",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zsh/zsh-5.9.2.tar.gz",
  sha256  = "4cfdbb66d856425bfeb1897f618b29ae33c644efd9b56181d628abc9164c1fc4",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zsh")
  end,
}
