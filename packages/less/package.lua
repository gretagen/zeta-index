return {
  name    = "less",
  version = "704",
  summary = "GNU less pager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/less/less-704.tar.gz",
  sha256  = "31ce728c2ffcfaa69baccb76df71801e6381e5fec6dc094e04001c8da1555b31",
  deps    = { "glibc", "libtinfo" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/less")
  end,
}
