#!/usr/bin/env bash

set -e

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [[ $(uname -p) = 'arm' ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
    softwareupdate --install-rosetta --agree-to-license
fi

brew update
brew install git ansible

mkdir -p "$HOME/scm"

cd "$HOME/scm"

git clone https://github.com/alexcreasy/macos-automation.git

cd macos-automation

ansible --version

echo "done"
