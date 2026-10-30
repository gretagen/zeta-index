return {
  name    = "nspr",
  version = "4.40-1-x86_64",
  summary = "netscape Portable Runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/nspr/nspr-4.40-1-x86_64.pkg.tar.zst",
  sha256  = "00c276c71d748e5220757f26776f4ad340b1cb477eb835de0d088f9b36277ad7",
  deps    = { "glibc", "bash" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnspr4.so")
  end,
}
