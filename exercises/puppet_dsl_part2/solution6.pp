# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define mycronjob(
  $hour    = '*',
  $minute  = '*/5',
  $source  = "/var/lib/puppet/files/cron/${title}",
  $instdir = '/usr/local/bin'
) {
  cron { "mycronjob-${title}":
    command => "${instdir}/${title}",
    hour    => $hour,
    minute  => $minute,
  }

  file { "mycronjob-script-${title}":
    path   => "${instdir}/${title}",
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => $source,
  }

  File["mycronjob-script-${title}"] -> Cron["mycronjob-${title}"]
}

mycronjob { 'foobar':
  hour => '5',
}
