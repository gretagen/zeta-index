return {
  name    = "python-setproctitle",
  version = "1.3.7-2-x86_64",
  summary = "allows a python process to change its process title",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-setproctitle/python-setproctitle-1.3.7-2-x86_64.pkg.tar.zst",
  sha256  = "d4b43db93750b27f7066975d7ce3b0b5000e2634df572d8db9c324710f8fa72e",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/setproctitle-1.3.7.dist-info/METADATA")
  end,
}
