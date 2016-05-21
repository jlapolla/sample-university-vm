#!/bin/sh

# DO NOT EXECUTE THIS FILE ON THE HOST MACHINE!!  This script is run on the
# virtual machine when it is first created.

# Stop execution on error
set -e

# Set paths
PATH="$HOME/usr/local/bin:$PATH"
export MAKE_PATH="$HOME/usr/local/gmtk/include"

# Install Git. The provisioning system needs Git installed.
sudo yum install git

# Extract provisioning system files
tar -xzf /vagrant/setup-files.tar.gz

# Run provisioning system in a subshell
(

  # Stop execution on error
  set -e

  cd setup-files/

  make install-gmtk
  make all
)

