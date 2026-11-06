return {
  name    = "cpufetch",
  version = "1.07",
  summary = "Fancy CPU architecture fetching tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cpufetch/cpufetch-1.07.tar.gz",
  sha256  = "26747b06bdb8f1876ce1717b2af956a3dc6c0da0ec02de958583b99e6e53d123",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cpufetch && test -f " .. p.install_root .. "/usr/share/man/man1/cpufetch.1 && test -f " .. p.install_root .. "/usr/share/licenses/cpufetch-git/LICENSE && " .. p.install_root .. "/usr/bin/cpufetch 2>/dev/null | grep -qiE \"intel|amd|cpu\"")
  end,
}
