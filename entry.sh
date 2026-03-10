#!/usr/bin/env bash
set -euo pipefail

export LD_LIBRARY_PATH="${STEAMAPPDIR?}/linux64:${LD_LIBRARY_PATH:-}"

bash ${STEAMCMDDIR}/steamcmd.sh \
  +login anonymous \
  +app_update "${STEAMAPPID}" \
  +quit
# validate

exec "${STEAMAPPDIR}/FactoryServer.sh"
