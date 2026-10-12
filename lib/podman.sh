# --- Guard against double sourcing ---
if [ -n "${PODMAN_LIB_LOADED:-}" ]; then
    return 0
fi
PODMAN_LIB_LOADED=1