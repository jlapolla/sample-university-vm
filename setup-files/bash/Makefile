include helpdoc.mk

# Template
define $(d)template

~/.bashrc: $(d).bashrc
	cp $(d).bashrc ~/.bashrc

.PHONY: $(d)all
$(call helpdoc,$(d)all)
$(d)all: ~/.bashrc

endef

# Compile template
$(eval $($(d)template))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)template :=)

