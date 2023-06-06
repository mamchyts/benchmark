SHELL := /bin/bash

-include .env

ARGS = $(shell arg="$(call filter-out,$@,$(MAKECMDGOALS))" && echo $${arg:-${1}})

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '(^.+: ?##.*$$)|(^##)' $(MAKEFILE_LIST) | cut -c 10- | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-32s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m## /[33m/' && printf "\n"


.PHONY: git.checkout-pull
git.checkout-pull: ## Git checkout to master and pull
	git checkout master && git pull --prune --rebase origin
