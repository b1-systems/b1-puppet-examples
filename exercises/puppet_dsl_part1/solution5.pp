# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

user { 'horst':
  ensure     => present,
  uid        => '1337',
  gid        => '100',
  shell      => '/bin/bash',
  comment    => 'Horst Schroth',
  managehome => true,
}
