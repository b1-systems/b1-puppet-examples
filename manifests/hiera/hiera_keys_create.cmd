# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# mkdir /root/keys
# eyaml createkeys \
  --pkcs7-private-key=/root/keys/private_key.pkcs7.pem \
  --pkcs7-public-key=/root/keys/public_key.pkcs7.pem
# chmod 700 /root/keys
# mkdir /etc/puppetlabs/puppet/eyaml
# cp keys/* /etc/puppetlabs/puppet/eyaml
# chown -R puppet:puppet /etc/puppetlabs/puppet/eyaml
# chmod 500 /etc/puppetlabs/puppet/eyaml
# chmod 400 /etc/puppetlabs/puppet/eyaml/*.pem
