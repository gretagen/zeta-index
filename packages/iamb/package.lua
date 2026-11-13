return {
  name    = "iamb",
  version = "0.13.1",
  summary = "Terminal Matrix client (I Am Better Matrix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iamb/iamb-0.13.1.tar.gz",
  sha256  = "0baf5d6578542666281efe2bae9c8f6181e001f704de57b93b215b38b84f1ba9",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iamb && " .. p.install_root .. "/usr/bin/iamb --version | grep -q '0.13.1' && test -f " .. p.install_root .. "/usr/share/man/man1/iamb.1 && " .. p.install_root .. "/usr/bin/iamb --help | grep -q 'Usage'")
  end,
}
