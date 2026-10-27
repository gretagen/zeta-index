return {
  name    = "zoxide",
  version = "0.10.0",
  summary = "Smarter cd command for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zoxide/zoxide-0.10.0.tar.gz",
  sha256  = "a4b99046d527b10a99db091520bd6a40da4fa73608eeb8558136982e1760a8e4",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zoxide")
  end,
}
