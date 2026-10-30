return {
  name    = "python-systemd",
  version = "236-1-x86_64",
  summary = "python bindings for systemd",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-systemd/python-systemd-236-1-x86_64.pkg.tar.zst",
  sha256  = "123ca9dc3aa3d499ab31a14e9890522cb58d5f964408879b1645ccf08a529209",
  deps    = { "glibc", "libgcc", "python", "systemd", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/systemd/__init__.py")
  end,
}
