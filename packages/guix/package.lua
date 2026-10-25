return {
  name    = "guix",
  version = "1.5.0",
  summary = "GNU Guix package manager (official prebuilt binary, /gnu/store layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guix/guix-1.5.0.tar.xz",
  sha256  = "d81999a68aa3ff817351bd8a423878aaa64f4c082ec540e7f47d908d1f2b98e7",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -L " .. p.install_root .. "/usr/bin/guix && test -L " .. p.install_root .. "/usr/bin/guix-daemon && ls -d " .. p.install_root .. "/gnu/store/*-guix-1.5.0 >/dev/null && test -x " .. p.install_root .. "/gnu/store/*-guix-1.5.0/bin/guix && test -x " .. p.install_root .. "/gnu/store/*-guix-1.5.0/bin/guix-daemon && test -f " .. p.install_root .. "/var/guix/db/db.sqlite && test -L " .. p.install_root .. "/var/guix/profiles/per-user/root/current-guix && test -f " .. p.install_root .. "/usr/share/zeta/hooks/guix-install.hook")
  end,
}
