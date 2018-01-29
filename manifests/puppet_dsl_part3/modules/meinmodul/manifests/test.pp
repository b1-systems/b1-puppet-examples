# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class meinmodul::test() {
  file { '/tmp/cronjob.sh':
    ensure => file,
    source => 'puppet:///modules/meinmodul/cronjob.sh',
  }
  file { '/tmp/meinmodul.txt':
    ensure  => file,
    content => epp('meinmodul/beispiel.epp'),
  }
}
