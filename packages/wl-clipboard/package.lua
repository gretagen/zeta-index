return {
  name    = "wl-clipboard",
  version = "2.3.0-1-x86_64",
  summary = "command-line copy/paste utilities for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wl-clipboard/wl-clipboard-2.3.0-1-x86_64.pkg.tar.zst",
  sha256  = "3ba82e724f496eeafe16a6e6f2a54f0bbf5e64f28bf8555a0d3ce4efa8c17693",
  deps    = { "glibc", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wl-copy")
  end,
}
