return {
  name    = "brightnessctl",
  version = "0.5.1",
  summary = "Lightweight brightness control tool (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/brightnessctl/brightnessctl-0.5.1-3-x86_64.pkg.tar.zst",
  sha256  = "d10f5c8d98270f1818785cdc4a12eefe36c540952bd43dfe70be12bd1126c5c3",
  deps    = { "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/brightnessctl")
  end,
}
