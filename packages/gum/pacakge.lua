return {
	name = "gum",
	version = "v2.0.2",
	summary = "Tool for making glamorous shell scripts",
	url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gum/gum_2.0.2.tar.gz",
	deps = {},
	archive = { strip = 1},
	test = function (p)
		p:run("test -f" .. p.install_root .. "/")
	end

}
