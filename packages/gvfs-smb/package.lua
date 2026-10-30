return {
  name    = "gvfs-smb",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - SMB/CIFS backend (Windows file sharing)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-smb/gvfs-smb-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "1708c944f6e6c3f8f80add37c19cc586777badd9cbdad64f4ebf48a9704091fb",
  deps    = { "gvfs", "smbclient", "libdconf", "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfsd-smb")
  end,
}
