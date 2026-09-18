return {
  name = "fastfetch",
  version = "2.68.1",
  summary = "Fast, feature-rich system information fetcher (neofetch successor)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fastfetch/fastfetch-2.68.1.tar.gz",
  sha256 = "8aa2fb625830193412e85395d5a098a3b7b5021d6ab8ef8fc0666881261d7a81",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/fastfetch --version")
  end,
}
