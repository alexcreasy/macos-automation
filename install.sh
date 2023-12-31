#!/usr/bin/env bash

set -e

# Install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install bare minimum tools to bootstrap system with ansible 
brew update
brew install git ansible

# Check out workstation setup repo if it's missing
if [ -d "$HOME/scm/macos-automation" ]; then
    mkdir -p "$HOME/scm"
    cd "$HOME/scm"
    git clone https://github.com/alexcreasy/macos-automation.git
fi

# Verify dependencies
git --version
ansible --version

