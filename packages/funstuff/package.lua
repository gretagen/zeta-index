return {
  name    = "funstuff",
  version = "0.1.1",
  summary = "Terminal toys: animations, cowsay bubble, weather",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/funstuff/funstuff-0.1.1.tar.gz",
  sha256  = "9dbc40ff1ae2a7a062472e69b6b516302a7b6753e8fda7069a3ac16de73677d4",
  deps    = { "bash", "gawk", "ncurses", "perl", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/badapple && test -x " .. p.install_root .. "/usr/bin/fan && test -x " .. p.install_root .. "/usr/bin/turbine && test -x " .. p.install_root .. "/usr/bin/gynoidsay && test -x " .. p.install_root .. "/usr/bin/weather && bash -n " .. p.install_root .. "/usr/bin/badapple && bash -n " .. p.install_root .. "/usr/bin/fan && bash -n " .. p.install_root .. "/usr/bin/turbine && bash -n " .. p.install_root .. "/usr/bin/weather && perl -c " .. p.install_root .. "/usr/bin/gynoidsay && head -1 " .. p.install_root .. "/usr/bin/weather | grep -q '#!/bin/sh' && grep -q 'my $artfile = \"/usr/lib/gynoidsay/ascii\"' " .. p.install_root .. "/usr/bin/gynoidsay && grep -q '\"/usr/lib/badapple/BadApple_ASCII.ps1\"' " .. p.install_root .. "/usr/bin/badapple && test -f " .. p.install_root .. "/usr/lib/gynoidsay/ascii && test -f " .. p.install_root .. "/usr/lib/badapple/BadApple_ASCII.ps1")
  end,
}
