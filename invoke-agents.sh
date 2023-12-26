#!/usr/bin/env bash

ssh-add --apple-use-keychain ~/.ssh/id_ed25519
ssh-add --apple-use-keychain ~/.ssh/id_rsa
echo "hello" | gpg --clearsign

