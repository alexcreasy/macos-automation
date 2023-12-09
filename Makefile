install:
	ansible-galaxy install -r requirements.yaml

test:
	ansible-lint

decrypt:
	ansible-vault decrypt group_vars/all/vault

encrypt:
	ansible-vault encrypt group_vars/all/vault

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"