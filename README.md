# packages for the package manager zeta for HaliadeOS

This is the **central registry** for Zeta packages. It contains all `package.lua` definitions
and the `index.lua` index. Tarball artifacts are stored here; other artifact types live in
dedicated repos.

## Repository scheme

| Repository | Artifact format | Example URL |
|---|---|---|
| [zeta-packages](https://github.com/gretagen/zeta-packages) | Open-source tarballs | `https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/<pkg>/<file>` |
| [zeta-deliverance](https://github.com/gretagen/zeta-deliverance) | Open-source `.deb` | `https://raw.githubusercontent.com/gretagen/zeta-deliverance/refs/heads/main/<pkg>/<file>` |
| [zeta-providence](https://github.com/gretagen/zeta-providence) | Proprietary (any format) | same raw path or GitHub Releases for large files |
| [zeta-nemesis](https://github.com/gretagen/zeta-nemesis) | PKGBuilds | placeholder |
| [zeta-compliance](https://github.com/gretagen/zeta-compliance) | Ebuilds | placeholder |
