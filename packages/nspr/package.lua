return {
  name    = "nspr",
  version = "4.40",
  summary = "Netscape Portable Runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/nspr/nspr.pkg.tar.zst",
  sha256  = "00c276c71d748e5220757f26776f4ad340b1cb477eb835de0d088f9b36277ad7",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
