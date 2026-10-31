return {
  name    = "mtr",
  version = "0.96-1-x86_64",
  summary = "Network diagnostic tool combining traceroute and ping (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mtr/mtr-0.96-1-x86_64.pkg.tar.zst",
  sha256  = "a09e28746e69869d49e55c90f7493b755011fe71358584ec351c09b0887503c5",
  deps    = { "glibc", "jansson", "ncurses", "libcap" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mtr")
  end,
}
