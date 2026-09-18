return {
  name    = "driftwm",
  version = "0.17.3",
  summary = "Trackpad-first infinite canvas Wayland compositor (smithay)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/driftwm/driftwm-0.17.3.tar.gz",
  sha256  = "a2608af803f377d5b8374285110ad3ef985e49269347534230f99f1330f1e80a",
  deps    = { "glibc", "libdisplay-info", "mesa-drivers", "seatd", "systemd-libs", "libinput", "xkbcommon", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/driftwm")
  end,
}
