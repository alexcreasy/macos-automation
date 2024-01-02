function git-sk () {
  GIT_SSH_COMMAND='ssh -o IdentitiesOnly=yes -i ~/.ssh/id_ed25519_sk -F /dev/null' git "$@"
} 

