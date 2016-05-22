include helpdoc.mk

# Template
define $(d)template

# Install Vundle Vim plugin manager
~/.vim/bundle/Vundle.vim/README.md: $(call yum_install,vim-enhanced)
	mkdir -p ~/.vim/bundle/
	git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Vim configuration file
$(d).make/.vimrc: $(d).vimrc
	cp $(d).vimrc ~/.vimrc
	mkdir -p $(d).make/ && touch $(d).make/.vimrc

# Install Vundle Vim plugin manager (marker flag)
$(d).make/vundle-install: ~/.vim/bundle/Vundle.vim/README.md
	mkdir -p $(d).make/ && touch $(d).make/vundle-install

# Install Vim plugins specified in ~/.vimrc
$(d).make/plugin-install: $(call yum_install,vim-enhanced) $(d).make/.vimrc $(d).make/vundle-install
	vim +:PluginInstall +:qa > /dev/null
	mkdir -p $(d).make/ && touch $(d).make/plugin-install

.PHONY: $(d)all
$(call helpdoc,$(d)all)
$(d)all: $(call yum_install,vim-enhanced) $(d).make/.vimrc $(d).make/plugin-install

endef

# Compile template
$(eval $($(d)template))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)template :=)

