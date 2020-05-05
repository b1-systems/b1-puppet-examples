# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { 'meine testdatei':
  ensure => file,
  path   => '/tmp/file_managed_by_puppet.txt',
}
notify { 'Testnachricht':
  message => 'This is only a test',
}
notify { 'Hello World': }
