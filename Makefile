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
	@test -f vault.gpg || gpg --gen-random --armor 1 43 | gpg --armor -r $(GPG_ID) -e -o vault.gpg

# 	ifdef gpg_id
# 		@echo 'gpg_id is defined $(gpg_id)'
# 	else
# 		@echo 'gpg_id is not defined'
# 	endif

#     @./git-init.sh
#     @echo "ansible vault pre-commit hook installed"
#     @echo "don't forget to create a .vault-password too"


# my_test:
# ifdef toto
#         @echo 'toto is defined'
# else
#         @echo 'no toto around'
# endif