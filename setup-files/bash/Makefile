include helpdoc.mk

# Template
define $(d)template

$(d).make/.bashrc: $(d).bashrc
	cp $(d).bashrc ~/.bashrc
	mkdir -p $(d).make/ && touch $(d).make/.bashrc

.PHONY: $(d)all
$(call helpdoc,$(d)all)
$(d)all: $(d).make/.bashrc

endef

# Compile template
$(eval $($(d)template))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)template :=)

