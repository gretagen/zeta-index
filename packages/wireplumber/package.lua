return {
  name    = "wireplumber",
  version = "0.5.15-1",
  summary = "Session / policy manager for PipeWire (bundled with libwireplumber)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wireplumber/wireplumber-0.5.15-1.tar.gz",
  sha256  = "ba9d859b84e039d35f9aa85431681649bf16a81b2da89367812afb38cfd1b09a",
  deps    = { "glibc", "libgcc", "glib", "lua", "pipewire", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wireplumber && test -x " .. p.install_root .. "/usr/bin/wpctl && test -e " .. p.install_root .. "/usr/lib/libwireplumber-0.5.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/Wp-0.5.gir && test -f " .. p.install_root .. "/usr/lib/systemd/user/wireplumber.service && test -x " .. p.install_root .. "/etc/init.d/wireplumber && test -x " .. p.install_root .. "/etc/service/wireplumber/run && test -f " .. p.install_root .. "/etc/dinit.d/wireplumber && test -f " .. p.install_root .. "/etc/shepherd.d/wireplumber.scm")
  end,
}
