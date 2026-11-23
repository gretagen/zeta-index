return {
  name    = "wireplumber",
  version = "0.5.15-3",
  summary = "Session / policy manager for PipeWire (bundled with libwireplumber)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wireplumber/wireplumber-0.5.15-3.tar.gz",
  sha256  = "3e00cb682b01eb67513b6d47d7e152216f4153be596a9dc70782643bbd06e56e",
  deps    = { "glibc", "libgcc", "glib", "lua", "pipewire", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wireplumber && test -x " .. p.install_root .. "/usr/bin/wpctl && test -e " .. p.install_root .. "/usr/lib/libwireplumber-0.5.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Wp-0.5.gir && test -f " .. p.install_root .. "/usr/lib/systemd/system/wireplumber.service && ! test -e " .. p.install_root .. "/usr/lib/systemd/user/wireplumber.service && test -L " .. p.install_root .. "/etc/dinit.d/boot.d/wireplumber && grep -q 'id -u pipewire' " .. p.install_root .. "/etc/dinit.d/wireplumber && ! grep -q -- '--reuid=pipewire' " .. p.install_root .. "/etc/shepherd.d/wireplumber.scm && test -x " .. p.install_root .. "/etc/init.d/wireplumber && test -x " .. p.install_root .. "/etc/service/wireplumber/run && test -f " .. p.install_root .. "/etc/dinit.d/wireplumber && test -f " .. p.install_root .. "/etc/shepherd.d/wireplumber.scm")
  end,
}
