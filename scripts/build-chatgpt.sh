#!/bin/sh
# Builds the ZIP that is uploaded at platform.openai.com/plugins:
#   plugin.json + mcp.json (from chatgpt/) + skills/ + assets/
# Refuses to build while the manifest still has a placeholder (__ID__, __DEMO__…).
set -eu
cd "$(dirname "$0")/.."
if grep -q '__[A-Z]*__' chatgpt/plugin.json; then
  echo "chatgpt/plugin.json still has placeholders:" >&2
  grep -o '__[A-Z]*__' chatgpt/plugin.json | sort -u >&2
  exit 1
fi
python3 -m json.tool chatgpt/plugin.json >/dev/null
python3 -m json.tool chatgpt/mcp.json >/dev/null
rm -rf dist && mkdir -p dist/pkg
cp chatgpt/plugin.json chatgpt/mcp.json dist/pkg/
cp -R skills assets dist/pkg/
(cd dist/pkg && find . -name .DS_Store -delete && zip -qr ../licita-ia-chatgpt.zip .)
rm -rf dist/pkg
echo "dist/licita-ia-chatgpt.zip"
