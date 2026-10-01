return {
  name    = "nix",
  version = "2.35.2-3",
  summary = "Nix package manager (official prebuilt binary, /nix store layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix/nix-2.35.2-3.tar.xz",
  sha256  = "f40bc80b035cb2a27be68176ac23973ba32e0d43ad3e7cf32cfe836d2adbb49d",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -L " .. p.install_root .. "/usr/bin/nix && test -x " .. p.install_root .. "/nix/store/irfrbndi76zhkvqsfhmsn4a99iafck29-nix-2.35.2/bin/nix-store && test -s " .. p.install_root .. "/nix/var/nix/db/db.sqlite")
    p:run("test -f " .. p.install_root .. "/usr/share/zeta/hooks/nix-install-note.hook")
    p:run("test -f " .. p.install_root .. "/etc/nix/nix.conf && test -f " .. p.install_root .. "/etc/profile.d/nix-haliade.sh")
  end,
}
