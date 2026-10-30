return {
  name    = "wsdd",
  version = "0.9-2-any",
  summary = "web Services Dynamic Discovery daemon for Windows discovery and discoverability",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wsdd/wsdd-0.9-2-any.pkg.tar.zst",
  sha256  = "151389bddd800f095fcaee4eb849e785582feade06938226b60a1d001d0c5337",
  deps    = { "python", "python-defusedxml", "python-systemd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wsdd")
  end,
}
