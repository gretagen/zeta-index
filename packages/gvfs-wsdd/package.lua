return {
  name    = "gvfs-wsdd",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - Web Services Dynamic Discovery backend (Windows",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-wsdd/gvfs-wsdd-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "fedac5de09fca210ca6d711f0bd7f148c6e0d63025e7e1aee02906cf13755f97",
  deps    = { "gvfs", "libdconf", "glib", "glibc", "libgcc", "wsdd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfsd-wsdd")
  end,
}
