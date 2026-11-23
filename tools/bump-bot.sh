#!/bin/bash
# bump-bot — automated recipe version bumps for the zeta index.
#
#   tools/bump-bot.sh --check          classify every recipe + list pending upstream bumps
#   tools/bump-bot.sh --bump <pkg>     bump exactly one package (build -> PR branch)
#   tools/bump-bot.sh --all            check + bump everything pending
#
# PR-for-review flow (green only):
#   resolve latest upstream -> rewrite version/url/sha256 in the recipe
#   -> zeta-makepkg (recipe test = the gate) -> payload to constructs
#   (content-addressed, safe before merge) -> branch bump/<pkg>-<ver> on
#   zeta-index carrying recipe+manifest+index.lua with the review
#   checklist as the commit message -> push -> print the one-click
#   compare URL -> notify.
# Red NEVER pushes: recipe reverted via git, log kept in
# ~/haliade-work/bump-failures/<pkg>.log for escalation.
#
# Classes: git-tags (github/sr.ht), gnome (parent-dir listings),
# dirlisting (kernel.org-style), github-commit (own repos -> OWN-MOVED
# notify only: version labels stay human), local, manual.
set -u

export PATH="$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH:-$HOME/haliade-work/pkgconfig}"
export CC=gcc CXX=g++
export CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=gcc

ROOT="$HOME/zeta-index"
CONSTRUCTS="$HOME/zeta-constructs"
REC="$ROOT/recipes"
FAILDIR="$HOME/haliade-work/bump-failures"
REPORT="$HOME/haliade-work/bump-report.txt"
REPO_CONSTRUCTS="https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main"
mkdir -p "$FAILDIR"

note() { echo "[note] $*"; notify-send "bump-bot: $*" 2>/dev/null || true; }

norm() { local v="${1#v}"; printf '%s' "$v"; }   # strip v prefix
is_stable() { [[ "${1#v}" =~ ^[0-9]+(\.[0-9]+)*$ ]]; }   # numeric tags only: no vNext/rc/alpha

classify() {
  case "$1" in
    https://github.com/*/archive/refs/tags/*)       echo git-tags ;;
    https://github.com/*/archive/[0-9a-f][0-9a-f]*) echo github-commit ;;
    https://git.sr.ht/*/archive/*)                  echo git-tags ;;
    https://gitlab.com/*/archive/*)                 echo git-tags ;;
    https://gitlab.com/*/-/archive/*)               echo git-tags ;;
    https://gitlab.freedesktop.org/*/archive/*)     echo git-tags ;;
    https://gitlab.freedesktop.org/*/-/archive/*)   echo git-tags ;;
    https://download.gnome.org/*)                   echo gnome ;;
    http*)                                          echo dirlisting ;;
    *)                                              echo local ;;
  esac
}

# latest_for <class> <recipe-url>  ->  "VER<TAB>NEWURL" | "OWN-MOVED<TAB>SHA" | "MANUAL<TAB>"
latest_for() {
  local class="$1" url="$2" root max orig n t head pinned
  case "$class" in
    git-tags)
      # root: github/sr.ht style /archive/... and gitlab /-/archive/... both work
      root="${url%%/-/archive/*}"
      root="${root%%/archive/*}"
      case "$root" in https://github.com/*|https://git.sr.ht/*|https://gitlab.com/*|https://gitlab.freedesktop.org/*) ;; *)
        echo -e "MANUAL\t"; return ;; esac
      max=""; orig=""
      while IFS= read -r t; do
        t="${t#refs/tags/}"
        t="$(printf '%s' "$t" | sed 's/\^{}$//')"
        is_stable "$t" || continue
        n="$(norm "$t")"
        if [ -z "$max" ]; then max="$n"; orig="$t"
        elif [ "$(printf '%s\n%s\n' "$max" "$n" | sort -V | tail -1)" = "$n" ] && [ "$n" != "$max" ]; then
          max="$n"; orig="$t"
        fi
      done < <(git ls-remote --tags "$root" 2>/dev/null | awk '{print $2}')
      [ -n "$orig" ] || { echo -e "MANUAL\t"; return; }
      case "$url" in
        */-/archive/*)  # gitlab: /-/archive/<tag>/<repo>-<tag>.tar.gz
          local name="${root##*/}"
          echo -e "$max\t${root}/-/archive/${orig}/${name}-${orig}.tar.gz" ;;
        *)              echo -e "$max\t${root}/archive/refs/tags/${orig}.tar.gz" ;;
      esac ;;
    github-commit)
      head="$(git ls-remote "${url%%/archive/*}" HEAD 2>/dev/null | awk '{print $1}')"
      pinned="$(printf '%s' "$url" | sed -E 's|.*/archive/([0-9a-f]+)\.tar\.gz|\1|')"
      if [ -n "$head" ] && [ "${head:0:40}" != "$pinned" ]; then
        echo -e "OWN-MOVED\t${head:0:40}"
      else
        echo -e "OK\t"
      fi ;;
    gnome)
      local d pd base pname newd f
      d="$(dirname "$url")"; pd="$(dirname "$d")"; base="$(basename "$url")"
      pname="$(printf '%s' "$base" | sed -E 's/-[0-9].*//')"
      # GNOME dirs are often plain integers (51/) under the major-only scheme
      newd="$(curl -sfL "$pd/" | grep -oE "[0-9]+(\.[0-9]+)?/" | tr -d / | sort -V | tail -1)"
      [ -n "$newd" ] || { echo -e "MANUAL\t"; return; }
      f="$(curl -sfL "$pd/$newd/" | grep -oE "${pname}-[0-9][0-9.]*\.tar\.[a-z2]+" | sort -V | tail -1)"
      [ -n "$f" ] || { echo -e "MANUAL\t"; return; }
      echo -e "$(printf '%s' "$f" | sed -E "s/^${pname}-//; s/\.tar\..*//")\t${pd}/${newd}/${f}" ;;
    dirlisting)
      local d base pname f
      d="$(dirname "$url")"; base="$(basename "$url")"
      pname="$(printf '%s' "$base" | sed -E 's/-[0-9].*//')"
      f="$(curl -sfL "$d/" | grep -oE "${pname}-[0-9][0-9.a-z-]*\.(tar\.xz|tar\.gz|tar\.bz2|tgz)" | sort -V | tail -1)"
      [ -n "$f" ] || { echo -e "MANUAL\t"; return; }
      echo -e "$(printf '%s' "$f" | sed -E "s/^${pname}-//; s/\.tar\..*//; s/\.tgz$//")\t${d}/${f}" ;;
    *) echo -e "MANUAL\t" ;;
  esac
}

cur_ver() { sed -nE 's/^[[:space:]]*version[[:space:]]*=[[:space:]]*"([^"]+)".*/\1/p' "$1" | head -1; }
cur_url() { sed -nE 's/^[[:space:]]*url[[:space:]]*=[[:space:]]*"([^"]+)".*/\1/p' "$1" | head -1; }

needs_bump() {  # needs_bump <cur> <upstream> -> 0 when upstream is strictly newer
  local c n
  c="${1%%:*}"; n="${2%%:*}"            # drop epoch for the compare
  c="${c%-*}"; n="${n%-*}"              # drop repack suffix (-2)
  c="$(norm "$c")"; n="$(norm "$n")"
  [ "$c" = "$n" ] && return 1
  [ "$(printf '%s\n%s\n' "$c" "$n" | sort -V | tail -1)" = "$n" ]
}

rewrite_recipe() {  # <file> <version> <url> <sha256>
  sed -i -E \
    -e "s|^([[:space:]]*version[[:space:]]*=[[:space:]]*)\"[^\"]*\"|\1\"$2\"|" \
    -e "s|^([[:space:]]*url[[:space:]]*=[[:space:]]*)\"[^\"]*\"|\1\"$3\"|" \
    -e "s|^([[:space:]]*sha256[[:space:]]*=[[:space:]]*)\"[^\"]*\"|\1\"$4\"|" "$1"
}

checklist() {  # commit message doubles as the PR body
  printf 'bump: %s %s -> %s\n\n- [ ] recipe test passed (build gate)\n- [ ] isolated provide passed\n- [ ] payload diff reviewed (nothing silently dropped)\n- [ ] dep edges unchanged or closure-verified\n- [ ] upstream: %s\n\ngenerated by tools/bump-bot.sh\n' "$1" "$2" "$3" "$4"
}

do_bump() {
  local pkg="$1" recipe="$REC/$1.recipe" class cur new newurl sha ver
  [ -f "$recipe" ] || { echo "$pkg: no recipe"; return 1; }
  class="$(classify "$(cur_url "$recipe")")"
  cur="$(cur_ver "$recipe")"
  IFS=$'\t' read -r new newurl < <(latest_for "$class" "$(cur_url "$recipe")") || true
  case "$new" in
    OK)           echo "$pkg: up to date ($cur)"; return 0 ;;
    MANUAL|local) echo "$pkg: manual/local source - skipped"; return 0 ;;
    OWN-MOVED)    echo "$pkg: upstream HEAD at $new (label needed - notify only)"; return 0 ;;
  esac
  needs_bump "$cur" "$new" || { echo "$pkg: up to date ($cur >= $new)"; return 0; }
  ver="$(norm "$new")"
  case "$cur" in *:*) ver="${cur%%:*}:$ver";; esac   # preserve an epoch

  echo "$pkg: bumping $cur -> $ver"
  sha="$(curl -sfL "$newurl" | sha256sum | awk '{print $1}')"
  [ "${#sha}" = 64 ] || { echo "$pkg: download/sha failed"; return 1; }
  rewrite_recipe "$recipe" "$ver" "$newurl" "$sha"

  # BUILD — the recipe test is the gate
  if ! out=$(env PATH="$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin" \
      PKG_CONFIG_PATH="$HOME/haliade-work/pkgconfig" CC=gcc CXX=g++ \
      CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=gcc \
      zeta-makepkg "$recipe" --output "$CONSTRUCTS" --repo "$REPO_CONSTRUCTS" \
      --no-index --force 2>&1); then
    printf '%s\n' "$out" | tail -50 > "$FAILDIR/$pkg.log"
    git -C "$ROOT" checkout -q -- "recipes/$pkg.recipe"      # revert; never push red
    note "RED: $pkg build failed - bump-failures/$pkg.log"
    return 1
  fi

  # payload -> constructs main (content-addressed: safe before the PR merges)
  ( cd "$CONSTRUCTS" || exit 1
    git pull -q --rebase origin main || exit 1
    git add "packages/$pkg" || exit 1
    if ! git diff --cached --quiet; then
      git -c user.name=gretagen -c user.email=besternet91@gmail.com commit -q -m "bump-bot: $pkg $ver payload" || exit 1
    fi
    git push -q origin main || exit 1 ) || { note "$pkg: constructs push failed"; return 1; }

  # PR branch -> index (recipe + manifest + index.lua; checklist = commit body)
  # --autostash: the recipe rewrite itself is an unstaged change that must
  # survive the sync; -B makes retries of the same version idempotent
  ( cd "$ROOT" || exit 1
    git pull -q --rebase --autostash origin main || exit 1
    git checkout -q -B "bump/$pkg-$ver" || exit 1
    mkdir -p "packages/$pkg"
    cp "$CONSTRUCTS/packages/$pkg/package.lua" "packages/$pkg/package.lua" || exit 1
    zeta-makepkg --index --output "$ROOT" >/dev/null || exit 1
    git add "recipes/$pkg.recipe" "packages/$pkg/package.lua" packages/index.lua || exit 1
    git -c user.name=gretagen -c user.email=besternet91@gmail.com commit -q -F - \
        <(checklist "$pkg" "$cur" "$ver" "$newurl") || exit 1
    git push -q -u origin "bump/$pkg-$ver" || exit 1
    git checkout -q main || exit 1 ) \
    || { git -C "$ROOT" checkout -q main 2>/dev/null; note "$pkg: index branch failed"; return 1; }

  echo "$pkg: PR-ready -> https://github.com/gretagen/zeta-index/compare/main...bump/$pkg-$ver"
  note "$pkg $cur -> $ver ready for review"
}

do_check() {
  local total=0 pending=0 own=0 skip=0 ok=0 pkg class cur latest newurl status
  { printf '%-28s %-14s %-16s %s\n' PACKAGE CLASS CURRENT STATUS; } > "$REPORT"
  for recipe in "$REC"/*.recipe; do
    pkg="$(basename "$recipe" .recipe)"
    class="$(classify "$(cur_url "$recipe")")"
    cur="$(cur_ver "$recipe")"; total=$((total+1))
    IFS=$'\t' read -r latest newurl < <(latest_for "$class" "$(cur_url "$recipe")") || true
    case "$latest" in
      OK)            status="ok"; ok=$((ok+1)) ;;
      OWN-MOVED)     status="OWN-MOVED (label needed)"; own=$((own+1)) ;;
      MANUAL|local)  status="manual/local"; skip=$((skip+1)) ;;
      *)             if needs_bump "$cur" "$latest"; then
                       status="PENDING -> $latest"; pending=$((pending+1))
                     else status="ok ($latest known)"; ok=$((ok+1)); fi ;;
    esac
    printf '%-28s %-14s %-16s %s\n' "$pkg" "$class" "$cur" "$status" >> "$REPORT"
  done
  echo >> "$REPORT"
  echo "total=$total pending=$pending own-moved=$own manual/local=$skip ok=$ok" >> "$REPORT"
  cat "$REPORT"
  note "check: $pending pending, $own own-repo moved (report in haliade-work/bump-report.txt)"
}

case "${1:-}" in
  --check) do_check ;;
  --bump)  do_bump "${2:?usage: --bump <pkg>}" ;;
  --all)
    do_check; echo "--- bumping ---"
    for recipe in "$REC"/*.recipe; do
      pkg="$(basename "$recipe" .recipe)"
      class="$(classify "$(cur_url "$recipe")")"
      case "$class" in git-tags|gnome|dirlisting) do_bump "$pkg" || true ;; esac
    done ;;
  *) sed -n '2,17p' "$0"; exit 1 ;;
esac
