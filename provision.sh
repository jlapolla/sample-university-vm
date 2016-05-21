#!/bin/sh

# DO NOT EXECUTE THIS FILE ON THE HOST MACHINE!!  This script is run on the
# virtual machine when it is first created.

# Stop execution on error
set -e

# Set paths
PATH="$HOME/usr/local/bin:$PATH"
export MAKE_PATH="$HOME/usr/local/gmtk/include"

# Install Git. The provisioning system needs Git installed.
sudo yum -y install git

# Extract provisioning system files
tar -xzf /vagrant/setup-files.tar.gz

# Run provisioning system in a subshell.  The first subshell installs GMTK on
# the VM. GMTK is needed for the rest of the provisioning system to function
# properly.
(

  # Stop execution on error
  set -e

  cd setup-files/

  make install-gmtk
)

# The second subshell runs the entire provisioning system, now that GMTK is
# installed. We need to run this in a separate subshell in order for the system
# to recognize the newly installed GMTK files.
(

  # Stop execution on error
  set -e

  cd setup-files/

  make all
)

