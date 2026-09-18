return {
  name    = "nix",
  version = "2.35.2",
  summary = "Nix package manager (official prebuilt binary, /nix store layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nix/nix-2.35.2.tar.xz",
  sha256  = "82b01be0a8d07eb25780e58637b7dddecd727e122c082f946dee1d250d406584",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -L " .. p.install_root .. "/usr/bin/nix && test -x " .. p.install_root .. "/nix/store/irfrbndi76zhkvqsfhmsn4a99iafck29-nix-2.35.2/bin/nix-store && test -s " .. p.install_root .. "/nix/var/nix/db/db.sqlite")
  end,
}
