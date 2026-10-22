return {
  name    = "karchive",
  version = "6.24.0",
  summary = "KDE: Qt addon providing access to numerous types of archives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/karchive/karchive-6.24.0.tar.gz",
  sha256  = "a5546fadb9b0ba0390c00fe16e5c7f363f6753d41e7fedeb2251cdc7674badef",
  deps    = { "glibc", "qtbase", "gcc", "bzip2", "xz-utils" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
