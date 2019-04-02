SHELL := /bin/bash

macos: ## Install Dotfiles on a new MacOS system
macos:
	$(SHELL) ./macos-init.sh

init: ## Configure the new system using dot files
init: secrets.enc applications.enc
	make decrypt
	$(SHELL) ./machine-init.sh

decrypt: ## Encrypt all secrets to be stored in the repository
decrypt: secrets.enc applications.enc
	@echo "Decrypting applications.zip"
	openssl enc -d -aes256 -in applications.enc -out applications.zip
	@echo "Decrypting secrets.zip"
	openssl enc -d -aes256 -in secrets.enc -out secrets.zip
	unzip -q applications.zip && rm -rf applications.zip
	unzip -q secrets.zip && rm -rf secrets.zip

crypt: ## Encrypt all secrets to be stored in the repository
crypt: secrets applications
	@echo "Compressing applications.zip"
	zip -r applications.zip applications
	rm -rf applications
	@echo "Crypting applications.zip"
	openssl enc -e -aes256 -in applications.zip -out applications.enc
	rm -rf applications.zip
	@echo "Compressing secrets.zip"
	zip -r secrets.zip secrets
	rm -rf secrets
	@echo "Crypting secrets.zip"
	openssl enc -e -aes256 -in secrets.zip -out secrets.enc
	rm -rf secrets.zip

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help
