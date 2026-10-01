return {
  name    = "nix",
  version = "2.35.2-2",
  summary = "Nix package manager (official prebuilt binary, /nix store layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix/nix-2.35.2-2.tar.xz",
  sha256  = "1c9f0b2a8bc79de6ce0a1ec3c601470021f44e0a5cfd57e2a08b6446d40b9db0",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -L " .. p.install_root .. "/usr/bin/nix && test -x " .. p.install_root .. "/nix/store/irfrbndi76zhkvqsfhmsn4a99iafck29-nix-2.35.2/bin/nix-store && test -s " .. p.install_root .. "/nix/var/nix/db/db.sqlite")
    p:run("test -f " .. p.install_root .. "/usr/share/zeta/hooks/nix-install-note.hook")
  end,
}
