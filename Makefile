install:
	ansible-galaxy install -r requirements.yaml

test:
	ansible-lint

decrypt:
	ansible-vault decrypt vars/vault

encrypt:
	ansible-vault encrypt vars/vault

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"