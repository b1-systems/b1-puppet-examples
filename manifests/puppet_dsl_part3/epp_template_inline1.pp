# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

cron { 'eppscript':
  ensure  => present,
  command => '/usr/local/bin/eppscript > /var/log/eppscript.log 2>&1',
  hour    => inline_epp('<%= fqdn_rand(120) % 24 %>'),
  minute  => 45,
}
