return {
  name    = "gpm",
  version = "1.20.7.r38.ge82d1a6-7-x86_64",
  summary = "General purpose mouse daemon and library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gpm/gpm-1.20.7.r38.ge82d1a6-7-x86_64.pkg.tar.zst",
  sha256  = "c13146ba90f58ad4b561ffb15ae7d667718acca7865eb752b83d1530f3e67689",
  deps    = { "glibc", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gpm")
  end,
}
