#!/bin/sh

release="$(cat ./release.version)"
git tag v$release
git push origin main --tags
