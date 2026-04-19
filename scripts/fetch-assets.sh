#!/usr/bin/env bash
# Fetch Unsplash images referenced by the site (photo IDs embedded in filenames).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

fetch_photo() {
  local id="$1"
  local out="$2"
  local url="https://images.unsplash.com/photo-${id}?auto=format&fit=max&w=1920&q=85"
  echo "GET $out"
  curl -sfL --max-time 120 --retry 2 --retry-delay 2 "$url" -o "$out"
}

# id -> unsplash-{id}.jpg
fetch_photo "1522071820081-009f0129c71c" "unsplash-1522071820081-009f0129c71c.jpg"
fetch_photo "1586528116311-ad8dd3c8310d" "unsplash-1586528116311-ad8dd3c8310d.jpg"
fetch_photo "1436491865332-7a61a109cc05" "unsplash-1436491865332-7a61a109cc05.jpg"
fetch_photo "1423666639041-f56000c27a9a" "unsplash-1423666639041-f56000c27a9a.jpg"
fetch_photo "1600880292203-757bb62b4baf" "unsplash-1600880292203-757bb62b4baf.jpg"
fetch_photo "1586528116493-a029325540fa" "unsplash-1586528116493-a029325540fa.jpg"
fetch_photo "1494412574643-ff11b0a5c1c3" "unsplash-1494412574643-ff11b0a5c1c3.jpg"
fetch_photo "1560518883-ce09059eeffa" "unsplash-1560518883-ce09059eeffa.jpg"
fetch_photo "1464037866556-6812c9d1c72e" "unsplash-1464037866556-6812c9d1c72e.jpg"
fetch_photo "1527004013197-933c4bb611b3" "unsplash-1527004013197-933c4bb611b3.jpg"
fetch_photo "1521791136064-7986c2920216" "unsplash-1521791136064-7986c2920216.jpg"
fetch_photo "1606836576983-8b458e75221d" "unsplash-1606836576983-8b458e75221d.jpg"
fetch_photo "1524661135-423995f22d0b" "unsplash-1524661135-423995f22d0b.jpg"
fetch_photo "1578662996442-48f60103fc96" "unsplash-1578662996442-48f60103fc96.jpg"
fetch_photo "1492144534655-ae79c964c9d7" "unsplash-1492144534655-ae79c964c9d7.jpg"
fetch_photo "1540959733332-eab4deabeeaf" "unsplash-1540959733332-eab4deabeeaf.jpg"
fetch_photo "1503376780353-7e6692767b70" "unsplash-1503376780353-7e6692767b70.jpg"

# Friendly aliases used by hero + cards (same pixels as above IDs)
cp -f "unsplash-1494412574643-ff11b0a5c1c3.jpg" "unsplash-container-trailer-hero.jpg"
cp -f "unsplash-1586528116493-a029325540fa.jpg" "unsplash-semi-truck-hero.jpg"

echo "Done."
