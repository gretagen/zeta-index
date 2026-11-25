return {
  name    = "deno",
  version = "2.9.8",
  summary = "Secure runtime for JavaScript and TypeScript",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/deno/deno-2.9.8.tar.gz",
  sha256  = "ab6a148db29b15d1d7cf1c43e1f26965bfce7aea6f8f9b57f8ce9d06eb2cdd3a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/deno && test -f " .. p.install_root .. "/usr/share/licenses/deno/LICENSE && " .. p.install_root .. "/usr/bin/deno --version | grep -q 'deno 2.9.8'")
  end,
}
