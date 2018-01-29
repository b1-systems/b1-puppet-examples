# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/var/lib/puppet/files':
  ensure => directory,
}

file { '/var/lib/puppet/files/cron':
  ensure => directory,
}

file { '/var/lib/puppet/files/cron/foobar':
  ensure  => file,
  content => "#!/bin/sh
echo foobar
",
}
