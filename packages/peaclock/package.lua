return {
  name    = "peaclock",
  version = "0.4.3",
  summary = "Responsive and customizable clock, timer, and stopwatch for the terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/peaclock/peaclock-0.4.3.tar.gz",
  sha256  = "13c8a4b30bfde8de9aea93b8bc019249437e3bbae9c30784144c0300bd16d541",
  deps    = { "glibc", "icu", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/peaclock && grep -q libicuuc " .. p.install_root .. "/usr/bin/peaclock && " .. p.install_root .. "/usr/bin/peaclock --version")
  end,
}
