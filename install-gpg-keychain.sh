#!/usr/bin/env bash

GNUPG_PATH="$HOME/.gnupg"

brew install gnupg pinentry-mac

mkdir -p "$GNUPG_PATH"

echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" >"$GNUPG_PATH/gpg-agent.conf"
