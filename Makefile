DOTFILES := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

LINK := ln -sfnT

.PHONY: help
help:
	@echo "Usage: make [target]"

.PHONY: all
all: zsh starship nvim

.PHONY: zsh
zsh:
	$(LINK) "$(DOTFILES)/.zsh" "$(HOME)/.zsh"
	$(LINK) "$(DOTFILES)/.zshrc" "$(HOME)/.zshrc"
	$(LINK) "$(DOTFILES)/.zshenv" "$(HOME)/.zshenv"

.PHONY: starship
starship:
	$(LINK) "$(DOTFILES)/.config/starship.toml" "$(HOME)/.config/starship.toml"

.PHONY: nvim
nvim:
	$(LINK) "$(DOTFILES)/.config/nvim" "$(HOME)/.config/nvim"
