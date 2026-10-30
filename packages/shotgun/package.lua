return {
  name    = "shotgun",
  version = "2.5.1-2-x86_64",
  summary = "minimal X screenshot utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/shotgun/shotgun-2.5.1-2-x86_64.pkg.tar.zst",
  sha256  = "54d6a1c2fb19c917afb1ff5a4e103ea30a61004cc33ff78cfead0a83dee2c0ad",
  deps    = { "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/shotgun")
  end,
}
