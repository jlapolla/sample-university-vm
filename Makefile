# Setup files
vagrant/setup-files.tar.gz: $(shell find setup-files/ -type f)
	tar -czf vagrant/setup-files.tar.gz setup-files/

# Provisioning script
vagrant/provision.sh: provision.sh
	cp provision.sh vagrant/provision.sh

# Prepare for Vagrant VM provisioning
.PHONY: all
all: vagrant/provision.sh vagrant/setup-files.tar.gz

# Clean built files
.PHONY: clean
clean:
	rm -f vagrant/provision.sh vagrant/setup-files.tar.gz

# Help documentation
.PHONY: help
help:
	$(info Make Targets)
	$(info ============)
	$(info )
	$(info all: Prepare for Vagrant VM provisioning)
	$(info clean: Remove built files)
	$(info help: Display this help message)
	$(info )
	$(info Enter `make <target_name>` to build a target)
	@true

# Default to help documentation
.DEFAULT_GOAL := help

