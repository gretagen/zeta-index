return {
  name    = "cpufetch",
  version = "1.07",
  summary = "Fancy CPU architecture fetching tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cpufetch/cpufetch-1.07.tar.gz",
  sha256  = "0ae93d273a3b9bcaab0291779e9ddb5a500d88fa9c3e94446c9def6544d30a56",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/cpufetch && test -f " .. p.install_root .. "/usr/share/man/man1/cpufetch.1 && test -f " .. p.install_root .. "/usr/share/licenses/cpufetch-git/LICENSE && " .. p.install_root .. "/usr/bin/cpufetch 2>/dev/null | grep -qiE \"intel|amd|cpu\"")
  end,
}
