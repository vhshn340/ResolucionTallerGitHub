#!/usr/bin/env bash
# confirm_sync_pub400.sh - ejecuta sync_pub400.sh solo si el usuario confirma.
set -euo pipefail

CONFIRM=${1:-no}
if [[ "$CONFIRM" != "yes" ]]; then
  echo "Sincronización cancelada. Debe escribir 'yes' para continuar."
  exit 1
fi

bash "$(dirname "$0")/sync_pub400.sh"
