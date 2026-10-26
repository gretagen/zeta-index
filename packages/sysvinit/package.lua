return {
  name = "sysvinit",
  version = "3.14",
  summary = "System V init (init, halt, shutdown, runlevel, etc)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sysvinit/sysvinit-3.14.tar.gz",
  sha256 = "e0f2b8c459aec398d269a840281348c39a4373e4a346d696c5257ee80de7e824",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/init")
  end,
}
