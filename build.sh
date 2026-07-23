#!/usr/bin/env bash
set -euo pipefail

# Build German site
(
  cd ./de
  BASE_URL=/de jupyter-book build --html
)

# Build English site
(
  cd ./en
  BASE_URL=/en jupyter-book build --html
)

mkdir -p _site/de _site/en
cp -r de/_build/html/. _site/de/
cp -r en/_build/html/. _site/en/

# Shared static assets
cp -a files _site/files

cat >_site/index.html <<'EOF'
<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="0; url=/de/main/">
    <link rel="canonical" href="/de/main/">
    <title>Redirecting…</title>
  </head>
  <body>
    Redirecting to <a href="/de/main/">/de/main/</a>…
  </body>
</html>
EOF
