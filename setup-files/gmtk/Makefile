# Use this Makefile to install GMTK on this computer.  This Makefile does
# nothing if it detects that GMTK is already installed.

# Check for existing GMTK installation by trying to include require.mk.
# require.mk is a standard GMTK file. If GMTK is installed, the following
# include statement will define the GMTK require function.
-include require.mk

# Now we check if the GMTK require function is defined. If require is defined,
# we do nothing.
ifndef require

# GMTK is not installed

# Define GMTK installation targets

# Install GMTK in ~/usr/local/gmtk/
~/usr/local/gmtk/bin/make:
	mkdir -p ~/usr/local/
	git clone https://github.com/jlapolla/gnu-make-toolkit.git ~/usr/local/gmtk/

# Place GMTK wrapper script on the PATH
~/usr/local/bin/make: ~/usr/local/gmtk/bin/make
	mkdir -p ~/usr/local/bin/
	ln -sf ~/usr/local/gmtk/bin/make ~/usr/local/bin/make

# GMTK installation target (for convenience)
.PHONY: install-gmtk
install-gmtk: ~/usr/local/bin/make

# Help documentation
.PHONY: help
help:
	$(info This provisioning system requires GNU Make Toolkit (GMTK) to be installed on)
	$(info this computer.)
	$(info )
	$(info Enter `make install-gmtk` to install GMTK in the default directory)
	$(info (~/usr/local/gmtk/).)
	$(info )
	$(info For more information on GMTK, see https://github.com/jlapolla/gnu-make-toolkit.)
	@true

# Default to help documentation
.DEFAULT_GOAL := help

endif

