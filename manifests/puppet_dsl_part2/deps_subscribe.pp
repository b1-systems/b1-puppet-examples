# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

$myfile = '/var/tmp/subscribe-test'
file { $myfile:
  ensure  => present,
  content => 'blubb',
}
exec { "/bin/cat ${myfile}":
  logoutput   => true,
  refreshonly => true,
  subscribe   => File[$myfile],
}
