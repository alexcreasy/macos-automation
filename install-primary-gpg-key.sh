#!/usr/bin/env bash

KEY_FILE="$1"

gpg --import "$KEY_FILE"

## Add finding GPG key below to complete
#expect -c 'spawn gpg --edit-key {KEY} trust quit; send "5\ry\r"; expect eof'

# Save password in keychain
echo "test" | gpg --clearsign
