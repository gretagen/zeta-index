return {
  name    = "wireplumber",
  version = "0.5.17",
  summary = "Session / policy manager for PipeWire (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wireplumber/wireplumber-0.5.17-1-x86_64.pkg.tar.zst",
  sha256  = "69ffc3e6a4b65a0e055917b4fbd18cd29273498d880aa60bb86147a2c129972c",
  deps    = { "glibc", "gcc", "glib", "libwireplumber", "lua", "pipewire", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wireplumber")
    p:run("test -x " .. p.install_root .. "/usr/bin/wpctl")
  end,
}
