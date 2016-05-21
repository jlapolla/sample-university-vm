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

# Ensure help target is accessible
include helpdoc.mk

# Default to help target
.DEFAULT_GOAL := help

endif

