include helpdoc.mk

# Template
define $(d)template

# Install .gitconfig
$(d).make/.gitconfig: $(d).gitconfig
	cp $(d).gitconfig ~/.gitconfig
	mkdir -p $(d).make/ && touch $(d).make/.gitconfig

# Install .gitignore_global
$(d).make/.gitignore_global: $(d).gitignore_global
	cp $(d).gitignore_global ~/.gitignore_global
	mkdir -p $(d).make/ && touch $(d).make/.gitignore_global

.PHONY: $(d)all
$(call helpdoc,$(d)all)
$(d)all: $(call yum_install,git) $(d).make/.gitconfig $(d).make/.gitignore_global

endef

# Compile template
$(eval $($(d)template))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)template :=)

