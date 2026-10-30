return {
  name    = "python-psutil",
  version = "7.2.2-1-x86_64",
  summary = "a cross-platform process and system utilities module for Python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-psutil/python-psutil-7.2.2-1-x86_64.pkg.tar.zst",
  sha256  = "1e5928dfd3070fbba60c0e9f7c2ce96faf4fb04c3e16a1291a3bd176222a21b3",
  deps    = { "glibc", "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/psutil-7.2.2.dist-info/METADATA")
  end,
}
