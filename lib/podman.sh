#!/usr/bin/env bash

# --- Guard against double sourcing ---
if [ -n "${PODMAN_LIB_LOADED:-}" ]; then
    return 0
fi
PODMAN_LIB_LOADED=1

# --- Resolve path to base-sh-lib ---
_PODMAN_LIB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
_BASE_LIB_PATH="$_PODMAN_LIB_DIR/../deps/base-sh-lib/lib/logging.sh"

if [ ! -f "$_BASE_LIB_PATH" ]; then
    echo "Error: base-sh-lib not found at $_BASE_LIB_PATH" >&2
    echo "Run 'git submodule update --init --recursive' to fetch it." >&2
    return 1
fi

# --- Source base library ---
source "$_BASE_LIB_PATH"