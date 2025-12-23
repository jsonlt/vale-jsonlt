set shell := ['uv', 'run', '--frozen', 'bash', '-euxo', 'pipefail', '-c']
set unstable
set positional-arguments

pnpm := "pnpm exec"

# List available recipes
default:
  @just --list

# Sync Vale styles and dictionaries
vale-sync:
  vale sync
