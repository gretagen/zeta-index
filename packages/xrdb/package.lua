return {
  name    = "xrdb",
  version = "1.2.3",
  summary = "X resource database utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xrdb/xrdb-1.2.3.tar.gz",
  sha256  = "673369b0000dad0330c6eff78325f2fc0ad31d756638437b3e4c88f168bf06ca",
  deps    = { "glibc", "libX11", "libXmu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xrdb")
  end,
}
