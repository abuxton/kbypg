#!/usr/bin/env bash
# This bootstraps Puppet on CentOS 6.x
# It has been tested on CentOS 6.3 64bit
# forked from https://github.com/hashicorp/puppet-bootstrap/blob/master/centos_6_x.sh
set -ex
#ok first we update
yum update -y
#the following is needed for ruby bundler and various gems due to requirements of native gem builds http://www.fedora-tunisia.org/?q=node/44
yum install -y gcc mysql-devel ruby-devel rubygems 
yum install -y gcc ruby-devel libxml2 libxml2-devel libxslt libxslt-devel
yum install -y gcc-c++
#lets create some repos and variables

REPO='puppetlabs-release-6-6.noarch' 
REPO_URL="http://yum.puppetlabs.com/el/6/products/i386/${REPO}.rpm"

if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi


# Install puppet labs repo
if ! [[ $( rpm -qa $REPO ) =~ ${REPO} ]]
then 
  echo "Configuring PuppetLabs repo..."
  repo_path=$(mktemp)
  wget --output-document=${repo_path} ${REPO_URL} 2>/dev/null
  rpm -i ${repo_path} >/dev/null 2>&1

else
  echo "${REPO} is already installed"
fi

if which puppet > /dev/null 2>&1; then
  echo "Puppet is already installed"
  #exit 0
else
  # Install Puppet...
  echo "Installing puppet"
  yum install -y puppet > /dev/null
  echo "Puppet installed!"
fi
#we will need these later 
echo "installing git"
 yum install -y git > /dev/null
echo "git installedi"

gem install bundler -y

#add some tools for the workshop
echo "Install tree, rass thrassing grr"
yum install -y tree > /dev/null
echo "Tree installed"



