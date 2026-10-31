return {
  name    = "glances",
  version = "4.5.8-1-any",
  summary = "Cross-platform system monitoring tool (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/glances/glances-4.5.8-1-any.pkg.tar.zst",
  sha256  = "d92b7e8f5c713408e0ef1ce9197d814c98ebe8f80ee9eb6d151cd7f17c498a04",
  deps    = { "python", "python-defusedxml", "python-jinja2", "python-orjson", "python-packaging", "python-psutil", "python-pydantic", "python-shtab" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glances")
  end,
}
