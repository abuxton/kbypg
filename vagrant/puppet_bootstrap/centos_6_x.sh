#!/usr/bin/env bash
# This bootstraps Puppet on CentOS 6.x
# It has been tested on CentOS 6.3 64bit
# forked from https://github.com/hashicorp/puppet-bootstrap/blob/master/centos_6_x.sh
set -ex
#ok first we update
yum update -y
#Lets do some work with ruby
yum install gcc-c++ patch readline readline-devel zlib zlib-devel  -y
yum install libyaml-devel libffi-devel openssl-devel make -y
yum install bzip2 autoconf automake libtool bison iconv-devel -y

#install rvm
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
#install a newer ruby version
rvm install 1.9.3

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
echo "git installed"

echo "installing librarian-puppet"
 gem install librarian-puppet
echo "librarian installed"

#add some tools for the workshop
echo "Install tree, rass thrassing grr"
yum install -y tree > /dev/null
echo "Tree installed"



