#!/bin/sh

release="$(cat ./release.version)"
git add .
git commit -m "Release v$release"
git tag v$release
git push origin main --tags
