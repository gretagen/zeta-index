return {
  name    = "helix",
  version = "25.07.1",
  summary = "Post-modern modal text editor with grammar-based syntax highlighting (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/helix/helix.pkg.tar.zst",
  sha256  = "7ed41ecd878198f77def6c34a17b24f0df3fb6c80714d3646ffbb3a6afb9351d",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    -- The launcher is an absolute symlink (usr/bin/helix -> /usr/lib/helix/hx);
    -- assert the real binary so the check resolves inside the staging tree.
    p:run("test -x " .. p.install_root .. "/usr/lib/helix/hx")
    p:run("test -L " .. p.install_root .. "/usr/bin/helix")
    p:run("test -d " .. p.install_root .. "/usr/lib/helix/runtime/grammars")
    p:run(p.install_root .. "/usr/lib/helix/hx --version | grep -q '^helix '")
  end,
}
