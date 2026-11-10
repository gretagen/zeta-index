return {
  name    = "tailscale",
  version = "1.104.5",
  summary = "WireGuard-based mesh VPN (tailscaled daemon + tailscale CLI)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tailscale/tailscale-1.104.5.tar.gz",
  sha256  = "6950870087815e9ae678071d4d810421b46e52aa2b58533374a47781b22d4d1b",
  deps    = { "iptables", "iproute2" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tailscale && test -x " .. p.install_root .. "/usr/sbin/tailscaled && " .. p.install_root .. "/usr/bin/tailscale version | grep -q 1.104.5")
  end,
}
