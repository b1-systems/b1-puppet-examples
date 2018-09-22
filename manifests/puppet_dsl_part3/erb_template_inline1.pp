# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

cron { 'erbscript':
  ensure  => present,
  command => '/usr/local/bin/erbscript > /var/log/erbscript.log 2>&1',
  hour    => inline_template('<%= @fqdn.sum % 24 %>'),
  minute  => 45,
}
