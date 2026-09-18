return {
  name    = "pam",
  version = "1.7.2",
  summary = "Pluggable Authentication Modules (linux-pam)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pam/pam-1.7.2.tar.gz",
  sha256  = "101aa83df1eb42ee1e17f903b4eb1e11f18bdd79653a57751da984eeb7e27651",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpam.so.0 && test -f " .. p.install_root .. "/etc/pam.d/other")
  end,
}
