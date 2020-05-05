# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

puppet # cd ~/controlrepo
puppet # cat > Puppetfile <<EOF
moduledir 'modules'
mod 'puppetlabs-stdlib'
mod 'puppetlabs-ntp'
EOF
puppet # git add Puppetfile
puppet # git commit -m 'Add Puppetfile.'
puppet # git push origin production
