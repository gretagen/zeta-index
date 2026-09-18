return {
  name    = "shadow",
  version = "4.20.2",
  summary = "Password and user management utilities (passwd, login, su, useradd, etc.)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shadow/shadow-4.20.2.tar.gz",
  sha256  = "955530127965e3f50f84a504ff216160746712d8079e2279e5e6bd721552e211",
  deps    = { "glibc", "pam", "libbsd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/passwd && test -x " .. p.install_root .. "/usr/sbin/useradd")
  end,
}
