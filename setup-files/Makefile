# Make sure GMTK is installed on this computer
-include require.mk

ifndef require

# GMTK is not installed

# Include GMTK installation Makefile
include gmtk/Makefile

else

# GMTK is installed

# List provisioning system submodules
$(eval $(d)submodules := $(patsubst $(if $(d),$(d),./)%Makefile,%,$(shell find $(d) -mindepth 2 -maxdepth 2 -type f -name Makefile)))

# Require provisioning system submodules
include require.mk
$(eval $(d)subexports := $(call require,$(addprefix $(d),$(addsuffix Makefile,$($(d)submodules)))))

include helpdoc.mk

# Template
define $(d)template

# Define dummy install-gmtk target, so `make install-gmtk` will still be a
# valid command. This allows us to run the provisioning script after GMTK is
# installed (useful for debugging the provisioning system).
.PHONY: $(d)install-gmtk
$(d)install-gmtk:

.PHONY: $(d)all
$(call helpdoc,$(d)all)
$(d)all: $(addsuffix all,$(filter-out gmtk/ yum/,$($(d)submodules)))

endef

# Compile template
$(eval $($(d)template))

# Default to help target
.DEFAULT_GOAL := help

# Unset local variables
$(eval $(d)subexports :=)
$(eval $(d)submodules :=)
$(eval $(d)template :=)

endif

