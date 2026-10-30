return {
  name    = "gvfs-nfs",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - NFS backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-nfs/gvfs-nfs-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "ad7558b259a553148359dcf6a2d654e9b821432d94c09a683592ab0bb241ce8b",
  deps    = { "gvfs", "glib", "glibc", "libgcc", "libnfs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfsd-nfs")
  end,
}
