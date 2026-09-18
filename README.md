# index of packages for the package manager zeta for HaliadeOS

This is the **central registry** for Zeta packages. It contains all `package.lua` definitions
and the `index.lua` index. Tarball artifacts are stored here; other artifact types live in
dedicated repos.

## Repository scheme

| Repository | Artifact format | Example URL |
|---|---|---|
| [zeta-constructs](https://github.com/gretagen/zeta-constructs) | Open-source tarballs (built and verified by HaliadeOS package maintenance) | `https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/<pkg>/<file>` |
| [zeta-deliverance](https://github.com/gretagen/zeta-deliverance) | Open-source `.deb` | `https://raw.githubusercontent.com/gretagen/zeta-deliverance/refs/heads/main/<pkg>/<file>` |
| [zeta-providence](https://github.com/gretagen/zeta-providence) | Proprietary (any format) | same raw path or GitHub Releases for large files |
| [zeta-nemesis](https://github.com/gretagen/zeta-nemesis) | Open source pkg.tar.zst | `https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/<pkg>/<file>` | |
