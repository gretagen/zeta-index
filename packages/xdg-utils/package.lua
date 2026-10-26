return {
  name    = "xdg-utils",
  version = "1.2.1",
  summary = "freedesktop.org command-line tools for desktop integration (xdg-open, xdg-mime, xdg-settings)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-utils/xdg-utils-1.2.1.tar.gz",
  sha256  = "eb967dd7c3bdd7075d14d2e931850561c325ca9acabdcfae1965cd7db4558b1c",
  deps    = { "grep", "sed" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xdg-open && test -x " .. p.install_root .. "/usr/bin/xdg-mime && test -x " .. p.install_root .. "/usr/bin/xdg-settings && test -x " .. p.install_root .. "/usr/bin/xdg-email && test -x " .. p.install_root .. "/usr/bin/xdg-screensaver && test -x " .. p.install_root .. "/usr/bin/xdg-desktop-menu && test -x " .. p.install_root .. "/usr/bin/xdg-desktop-icon && test -x " .. p.install_root .. "/usr/bin/xdg-icon-resource && head -1 " .. p.install_root .. "/usr/bin/xdg-open | grep -q '^#!/bin/sh' && ! grep -rq '@[A-Za-z_][A-Za-z_0-9]*@' " .. p.install_root .. "/usr/bin && " .. p.install_root .. "/usr/bin/xdg-mime 2>&1 | grep -q 'Synopsis' && " .. p.install_root .. "/usr/bin/xdg-open --help 2>&1 | grep -q 'Synopsis'")
  end,
}
