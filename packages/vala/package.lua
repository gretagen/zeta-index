return {
  name    = "vala",
  version = "0.56.19",
  summary = "Vala compiler and VAPI generator (build tool)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vala/vala-0.56.19.tar.gz",
  sha256  = "bdaec06d22c39e0127c43b75bd433265581db949fc617057a41d215324703d62",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/valac && test -x " .. p.install_root .. "/usr/bin/vapigen && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/vala-0.56 " .. p.install_root .. "/usr/bin/valac --version | grep -q 0.56 && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/vala-0.56 " .. p.install_root .. "/usr/bin/vapigen --version | grep -q 0.56")
  end,
}
