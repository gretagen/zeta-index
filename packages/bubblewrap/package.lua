return {
  name    = "bubblewrap",
  version = "0.11.2",
  summary = "Low-level unprivileged sandboxing tool (used by Flatpak)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bubblewrap/bubblewrap-0.11.2.tar.gz",
  sha256  = "a1dc0b18a40564eaa0e7ad5ad187bf2519f83865b43d8e5df0e471f13a226240",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bwrap")
  end,
}
