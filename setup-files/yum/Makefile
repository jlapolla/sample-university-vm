# List yum packages
$(eval $(d)yum_packages :=)
$(eval $(d)yum_packages += vim-enhanced)

# yum installation template
define $(d)template

$(d).make/$(1):
	sudo yum install -y $(1)
	mkdir -p $(d).make/ && touch $(d).make/$(1)
endef

# Compile template for each yum package
$(foreach $(d)var,$($(d)yum_packages),$(eval $(call $(d)template,$($(d)var))))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)template :=)
$(eval $(d)var :=)
$(eval $(d)yum_packages :=)

