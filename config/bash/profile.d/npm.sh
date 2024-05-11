#!/usr/bin/env bash
set -eo pipefail

if [[ -d "$XDG_CONFIG_HOME/npm" ]]; then
    export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
fi
