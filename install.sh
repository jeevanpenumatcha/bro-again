#!/usr/bin/env bash
# Copies this repo's skills, rules, and commands into the current user's Cursor folder.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dest="${HOME}/.cursor"

mkdir -p "${dest}/skills" "${dest}/rules" "${dest}/commands"

cp -R "${root}/skills/." "${dest}/skills/"
cp -R "${root}/rules/." "${dest}/rules/"
cp -R "${root}/commands/." "${dest}/commands/"

echo "Installed Bro Again into ${dest}"
echo "Reload Cursor. /brainstorm, /make-plan, and /create-command then work in any project."
