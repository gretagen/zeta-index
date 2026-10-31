return {
  name    = "nvtop",
  version = "3.3.2-1-x86_64",
  summary = "GPU process monitor for NVIDIA/AMD/Intel (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/nvtop/nvtop-3.3.2-1-x86_64.pkg.tar.zst",
  sha256  = "de1a88e9a86fe707adfe0cbc859339774613a04ce8e5e6a413b53dcfe0bdf445",
  deps    = { "glibc", "systemd-libs", "ncurses" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvtop")
  end,
}
