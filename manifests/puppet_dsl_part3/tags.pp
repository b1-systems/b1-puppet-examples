# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

notify { 'notify1':
  message => 'Hallo Welt von notify1',
  tag     => 'testing',
}

notify { 'notify2':
  message => 'notify2 sagt Hallo!',
}

file { '/tmp/testing.txt':
  ensure => file,
  tag    => ['testing', 'foo'],
}
