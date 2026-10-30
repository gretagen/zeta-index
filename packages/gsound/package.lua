return {
  name    = "gsound",
  version = "1.0.3-4-x86_64",
  summary = "GNOME sound library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gsound/gsound-1.0.3-4-x86_64.pkg.tar.zst",
  sha256  = "50d26aed781218070f671f70c36c556ff5e0cf5b1bb1d21461aabc7a20fd2e5c",
  deps    = { "glib", "glibc", "libcanberra" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gsound-play")
  end,
}
