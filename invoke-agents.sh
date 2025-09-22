#!/usr/bin/env bash

/usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_ed25519
/usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_rsa
echo "hello" | gpg --clearsign

