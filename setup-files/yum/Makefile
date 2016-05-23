# yum installation template
define $(d)template

$(2).make/$(1):
	sudo yum install -y $(1)
	mkdir -p $(2).make/ && touch $(2).make/$(1)
endef

# Holds list of package targets that are already defined
$(eval $(d)yum_package_list :=)

# Global yum_install function. Other targets may rely on $(call
# yum_install,<package_name>) to ensure the package is installed.  When called,
# this function defines a new target for the package (if the target is not
# already defined), and expands to the name of the created target.
ifndef yum_install

$(eval yum_install = $(d).make/$$(1)$$(if $$(findstring $$(1),$$($(d)yum_package_list)),,$$(eval $(d)yum_package_list += $$(1))$$(eval $$(call $(d)template,$$(1),$(d)))))
endif

# Ensure help target is available
include helpdoc.mk

# Default to help target
.DEFAULT_GOAL := help

