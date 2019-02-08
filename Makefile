SHELL := /bin/bash

macos: ## Install Dotfiles on a new MacOS system
macos:
	$(SHELL) ./macos-init.sh

init: ## Configure the new system using dot files
init: dots.enc applications.enc
	$(SHELL) ./machine-init.sh

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help