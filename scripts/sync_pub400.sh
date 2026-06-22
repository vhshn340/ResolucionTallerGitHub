#!/usr/bin/env bash
# sync_pub400.sh - sincroniza la carpeta local 'Resolucion' hacia PUB400
# Reemplace los valores entre corchetes por sus datos reales.

set -euo pipefail

# === Configuración (edite si lo desea) ===
LOCAL_DIR="${LOCAL_DIR:-$(pwd)/Resolucion}"
REMOTE_USER="[TU_USUARIO]"
REMOTE_HOST="[HOST_PUB400]"
REMOTE_PORT="22"
REMOTE_DIR="/home/HNLJMI/GitHub/TallerNova"

# Contraseña SSH opcional, activa sshpass si está disponible.
SSH_PASS="${SSH_PASS:-}"

# Opciones rsync
RSYNC_OPTS=(
  -az
  --delete
  --omit-dir-times
  --no-perms
  --no-owner
  --no-group
  --filter=":- .gitignore"
)

if [[ -n "${DRY_RUN:-}" && ${DRY_RUN} == "1" ]]; then
  RSYNC_OPTS+=(--dry-run)
fi

SSH_OPTS=(
  -p "$REMOTE_PORT"
  -o StrictHostKeyChecking=accept-new
)

if [[ -n "$SSH_PASS" ]]; then
  if ! command -v sshpass >/dev/null 2>&1; then
    echo "ERROR: sshpass no está instalado. Instale sshpass o retire SSH_PASS." >&2
    exit 1
  fi
  RSYNC_SSH="sshpass -p '$SSH_PASS' ssh ${SSH_OPTS[*]}"
else
  RSYNC_SSH="ssh ${SSH_OPTS[*]}"
fi

echo "Sincronizando: $LOCAL_DIR -> ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}"
rsync "${RSYNC_OPTS[@]}" -e "$RSYNC_SSH" "$LOCAL_DIR/" "${REMOTE_USER}@${REMOTE_HOST}:$REMOTE_DIR/"

echo "Sincronización completada."
