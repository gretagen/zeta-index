return {
  name    = "wireplumber",
  version = "0.5.15-2",
  summary = "Session / policy manager for PipeWire (bundled with libwireplumber)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wireplumber/wireplumber-0.5.15-2.tar.gz",
  sha256  = "e83f91663c8b0034bd6e6e0b557067c039d0f790f543a5c9bc7d188b70392147",
  deps    = { "glibc", "libgcc", "glib", "lua", "pipewire", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wireplumber && test -x " .. p.install_root .. "/usr/bin/wpctl && test -e " .. p.install_root .. "/usr/lib/libwireplumber-0.5.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Wp-0.5.gir && test -f " .. p.install_root .. "/usr/lib/systemd/system/wireplumber.service && ! test -e " .. p.install_root .. "/usr/lib/systemd/user/wireplumber.service && test -L " .. p.install_root .. "/etc/dinit.d/boot.d/wireplumber && test -x " .. p.install_root .. "/etc/init.d/wireplumber && test -x " .. p.install_root .. "/etc/service/wireplumber/run && test -f " .. p.install_root .. "/etc/dinit.d/wireplumber && test -f " .. p.install_root .. "/etc/shepherd.d/wireplumber.scm")
  end,
}
