# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define stubdir() {
  $mytemp = '/var/tmp'

  file { "${title}-stubdir":
    ensure => directory,
    path   => "${mytemp}/${title}",
  }

  file { "${title}-stubdir-file":
    ensure  => file,
    path    => "${mytemp}/${title}/stub",
    content => "Managed by puppet\n",
  }
}

stubdir { 'foobar': }
stubdir { 'testing': }
