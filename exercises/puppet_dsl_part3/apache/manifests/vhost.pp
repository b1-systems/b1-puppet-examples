# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define apache::vhost (
  $docroot,
  $port       = '80',
  $servername = $title
) {
  include apache
  include apache::params

  $vhost_dir = $::apache::params::vhost_dir

  file { "${vhost_dir}/${servername}.conf":
    content => epp('apache/vhost_default.conf.epp', { 'servername' => $servername, 'port' => $port, 'docroot' => $docroot }),
    owner   => $::apache::params::user,
    group   => $::apache::params::group,
    mode    => '0644',
    require => Package[$::apache::params::packages],
    notify  => Service[$::apache::params::service],
  }
}
