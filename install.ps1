# Copies this repo's skills, rules, and commands into the current user's Cursor folder.
$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$dest = Join-Path $env:USERPROFILE ".cursor"

foreach ($name in @("skills", "rules", "commands")) {
    $target = Join-Path $dest $name
    New-Item -ItemType Directory -Force -Path $target | Out-Null
    Copy-Item -Path (Join-Path (Join-Path $root $name) "*") -Destination $target -Recurse -Force
}

Write-Host "Installed Bro Again into $dest"
Write-Host "Reload Cursor. /brainstorm, /make-plan, and /create-command then work in any project."
