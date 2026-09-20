return {
  name    = "7zip",
  version = "26.03",
  summary = "File archiver with a high compression ratio",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/7zip/7zip-26.03-1-x86_64.pkg.tar.zst",
  sha256  = "32ae902300f2bdfab48ba8d03e9627830f84bff00a23ec9b80afa94b5a3ee37c",
  deps    = { "glibc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/7z")
  end,
}
