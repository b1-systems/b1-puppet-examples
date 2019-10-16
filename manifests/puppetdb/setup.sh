#!/bin/bash
/opt/puppetlabs/puppet/bin/gem install r10k
ln -sv /opt/puppetlabs/puppet/bin/wrapper.sh /opt/puppetlabs/bin/r10k

cp -v Puppetfile /etc/puppetlabs/code/environments/production/Puppetfile
cd /etc/puppetlabs/code/environments/production
r10k puppetfile install -v
