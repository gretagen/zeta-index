# index of packages for the package manager zeta for HaliadeSYS

This is the **central registry** for Zeta packages. It contains all `package.lua` definitions
and the `index.lua` index. Tarball artifacts (aka : THE ACTUAL PACKAGES) live in
dedicated repos.

Build recipes live in [`recipes/`](recipes/), beside `packages/`: every `<name>.recipe`
with its `build-<name>.sh` build script, patch files and vendored sources next to it.

## CONTRIBUTION GUIDELINES

- ALWAYS test your packages.
- Packages must be INIT-AGNOSTIC (not depend on any init).
- If you do a PR to the index, also do one in the selected repository, such as constructs or nemesis.
- AI use is permitted to contribute to package-ports
- PRs improving recipes (build scripts, patches, versions) are welcome. Keep the flat
  layout `<name>.recipe` + `build-<name>.sh` side by side in `recipes/`, the toolchain
  resolves build scripts and `--follow` dependency recipes relative to that directory.

## Repository scheme

| Repository | Artifact format | Example URL |
|---|---|---|
| [zeta-constructs](https://github.com/gretagen/zeta-constructs) | Open-source tarballs (built and verified by Haliade system package maintenance) | `https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/<pkg>/<file>` |
| [zeta-deliverance](https://github.com/gretagen/zeta-deliverance) | Open-source `.deb` | `https://raw.githubusercontent.com/gretagen/zeta-deliverance/refs/heads/main/<pkg>/<file>` |
| [zeta-providence](https://github.com/gretagen/zeta-providence) | Proprietary (any format) | same raw path or GitHub Releases for large files |
| [zeta-nemesis](https://github.com/gretagen/zeta-nemesis) | Open source pkg.tar.zst | `https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/<pkg>/<file>` | |
