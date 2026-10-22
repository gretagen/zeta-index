return {
  name    = "hunspell",
  version = "1.7.5",
  summary = "Hunspell spell-checker library and CLI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hunspell/hunspell-1.7.5.tar.gz",
  sha256  = "769fd27116437e80838f183705b93acc4110a0d08b1b148bfa8f3d4441b7c547",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hunspell && test -f " .. p.install_root .. "/usr/include/hunspell/hunspell.h && ls " .. p.install_root .. "/usr/lib/libhunspell* " .. p.install_root .. "/usr/lib64/libhunspell* 2>/dev/null | grep -q .")
  end,
}
