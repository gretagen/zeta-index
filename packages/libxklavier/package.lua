return {
  name    = "libxklavier",
  version = "5.4",
  summary = "X Keyboard Extension querying/manipulation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxklavier/libxklavier-5.4.tar.gz",
  sha256  = "9f53d74289a7103d823e84a013179274d079798ab303d8681c5f0c57307ae7fe",
  deps    = { "glibc", "libX11", "libXkbfile", "libXi", "libxml2", "glib", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxklavier.so.16")
  end,
}
