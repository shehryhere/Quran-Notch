#!/bin/bash
# Build a drag-to-Applications DMG for the supplied compiled Quran Notch.app bundle.
# Run on macOS, with Xcode Command Line Tools available if needed.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APP_ZIP="${1:-$ROOT/Quran Notch.app.zip}"
OUT_DIR="${2:-$ROOT/dist}"
DMG="$OUT_DIR/Quran-Notch-v1.0.0.dmg"

command -v hdiutil >/dev/null || { echo "Error: hdiutil is required (run this on macOS)." >&2; exit 1; }
[[ -f "$APP_ZIP" ]] || { echo "App archive not found: $APP_ZIP" >&2; exit 1; }

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

ditto -x -k "$APP_ZIP" "$TMP/extracted"
APP="$TMP/extracted/Quran Notch.app"
[[ -f "$APP/Contents/Info.plist" ]] || { echo "App bundle missing Info.plist" >&2; exit 1; }

VERSION="$(/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' "$APP/Contents/Info.plist")"
[[ "$VERSION" == "1.0.0" ]] || { echo "Expected v1.0.0, found $VERSION" >&2; exit 1; }

mkdir -p "$TMP/staging" "$OUT_DIR"
ditto "$APP" "$TMP/staging/Quran Notch.app"
ln -s /Applications "$TMP/staging/Applications"

rm -f "$DMG"
hdiutil create -volname "Quran Notch" -srcfolder "$TMP/staging" -ov -format UDZO "$DMG"

echo "Created: $DMG"
shasum -a 256 "$DMG"
echo "Before publishing: verify signing, test installation from DMG, and check opening on a clean compatible Mac."
