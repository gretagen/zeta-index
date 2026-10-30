return {
  name    = "python-argcomplete",
  version = "3.7.2-1-any",
  summary = "easy, extensible command line tab completion of arguments for your Python script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-argcomplete/python-argcomplete-3.7.2-1-any.pkg.tar.zst",
  sha256  = "202817bb7d46d719388cb3ce1a962e50e5d535a78578676b46ecbc11bcd5fce9",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/activate-global-python-argcomplete")
  end,
}
