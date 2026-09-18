return {
  name    = "readline",
  version = "8.3",
  summary = "GNU Readline library for line editing and history",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/readline/readline-8.3.tar.gz",
  sha256  = "89fbbccb7fde765e4373549e4417010f42ac2e7e031325461c81434aac8ada63",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libreadline.so.8")
  end,
}
