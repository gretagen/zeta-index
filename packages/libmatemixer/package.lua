return {
  name    = "libmatemixer",
  version = "1.28.0",
  summary = "Mixer library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmatemixer/libmatemixer-1.28.0.pkg.tar.zst",
  sha256  = "047834f5908e663d1ad2ad65e51fbec28e743142c308cecbf4607966ca6c7b17",
  deps    = { "alsa-lib", "glib", "libpulse", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
