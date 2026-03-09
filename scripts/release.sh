#!/usr/bin/env bash
set -euo pipefail
VERSION="${1:-}"
if [[ -z "$VERSION" ]]; then
  echo "Usage: ./scripts/release.sh <version>"
  exit 1
fi
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR"
python3 - <<PY
import json
p='package.json'
with open(p) as f:
    data=json.load(f)
data['version']='$VERSION'
with open(p,'w') as f:
    json.dump(data,f,indent=2)
    f.write('\n')
print('package.json ->', data['version'])
PY
npm run build
git add package.json
git commit -m "Release v$VERSION" || true
git pull --rebase origin main
git push origin main
git tag -f "v$VERSION"
git push origin "v$VERSION" --force
gh release create "v$VERSION" --title "v$VERSION" --generate-notes || gh release edit "v$VERSION" --title "v$VERSION"
echo "Released v$VERSION"
