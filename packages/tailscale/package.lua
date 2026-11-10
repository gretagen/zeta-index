-- Tailscale's official amd64 .deb: it ships the proper FHS layout (usr/,
-- lib/systemd units, /etc/default/tailscaled), so Zeta's .deb extractor
-- commits it with strip = 0 and no install step needed.
--
-- Both binaries are statically linked Go, so there are no shared-library
-- dependencies at all. The only runtime requirement is iptables (upstream
-- `Depends`) plus iproute2 (upstream `Recommends`, promoted to a hard dep
-- here because Zeta has no optional-deps concept and a mesh VPN that cannot
-- reach `ip`/`ss` is a poor first impression).
--
-- CAVEAT: pkgs.tailscale.com/stable/ only retains *some* previous versions --
-- 1.104.4 still resolves, but 1.104.0, 1.100.0 and 1.90.0 already 404 -- so
-- this URL may stop resolving once Tailscale ships a newer stable. Zeta caches
-- payloads by sha256, so an existing install keeps working, but a fresh
-- install elsewhere would fail. Re-hosting the .deb as a release asset makes
-- it permanent.
return {
  name    = "tailscale",
  version = "1.104.5",
  summary = "WireGuard-based mesh VPN (tailscaled daemon + tailscale CLI)",
  url     = "https://pkgs.tailscale.com/stable/tailscale_1.104.5_amd64.deb",
  sha256  = "1f972f2c3e1343042e62eb203310d12970014d7823a081ef16550a4553b5f876",
  arch    = "x86_64",
  deps    = { "iptables", "iproute2" },
  archive = { strip = 0 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/tailscale"
      .. " && test -x " .. p.install_root .. "/usr/sbin/tailscaled"
      .. " && " .. p.install_root .. "/usr/bin/tailscale version | grep -q 1.104.5")
  end,
}
