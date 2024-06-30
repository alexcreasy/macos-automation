#!/usr/bin/env bash

set -e

# Below method won't work if PATH not correctly set. 
# Install homebrew if it's missing
# if ! command -v brew >/dev/null 2>&1; then
#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#     # if [[ $(uname -p) = 'arm' ]]; then
#     #     eval $(/opt/homebrew/bin/brew shellenv)
#     # fi
# fi

# Only works on arm macs
if [ ! -d /opt/homebrew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install bare minimum tools to bootstrap system with ansible 
/opt/homebrew/bin/brew update
/opt/homebrew/bin/brew install git pipx

echo 'export PATH="$HOME/.local/bin:/opt/homebrew/bin:$PATH"' >> ~/.zprofile
. ~/.zprofile
pipx install --include-deps ansible ansible-lint

# Check out workstation setup repo if it's missing
if [ ! -d "$HOME/scm/macos-automation" ]; then
    mkdir -p "$HOME/scm"
    cd "$HOME/scm"
    git clone https://github.com/alexcreasy/macos-automation.git
fi

# Verify dependencies
git --version
ansible --version

echo "Bootstrap complete!"
