return {
  name    = "python-brltty",
  version = "6.9.1-3-x86_64",
  summary = "braille display driver for Linux/Unix - Python bindings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-brltty/python-brltty-6.9.1-3-x86_64.pkg.tar.zst",
  sha256  = "af0305de691a6d7cb52636592f86d5f89fe4aa2895fca7a28d20ab3665468c96",
  deps    = { "brltty", "glibc", "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/Brlapi-0.8.8-py3.14.egg-info/PKG-INFO")
  end,
}
