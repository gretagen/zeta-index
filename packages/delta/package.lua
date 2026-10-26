return {
  name = "delta",
  version = "0.20.1",
  summary = "Syntax highlighting pager for git and diff",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/delta/delta-0.20.1.tar.gz",
  sha256 = "f08e27c0349ec752e61004171fdbb6c56460e4b862c88d8a85cf5aaa26b46718",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/delta --version")
  end,
}
