return {
  name    = "greetd-agreety",
  version = "0.10.3-2-x86_64",
  summary = "generic greeter daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/greetd-agreety/greetd-agreety-0.10.3-2-x86_64.pkg.tar.zst",
  sha256  = "5fca40eab8a4c272bd3ee4794873c2c73401c5398840d7da8f50a5a5af347f0c",
  deps    = { "glibc", "libgcc", "greetd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/agreety")
  end,
}
