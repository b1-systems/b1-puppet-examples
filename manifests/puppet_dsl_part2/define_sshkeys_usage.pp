# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

user { 'horst':
  ensure     => present,
  managehome => true,
}
sshkeys { 'horst':
  content => 'super ssh pub key',
}

user { 'klaus':
  ensure     => present,
  managehome => true,
}
sshkeys { 'ssh key for user klaus':
  user    => 'klaus',
  content => 'mein ssh pub key',
}
