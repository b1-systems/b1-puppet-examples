# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define apache::vhost(
  $domain  = $title,
  $docroot = "${::apache::params::www_basepath}/${title}",
  $port    = $::apache::params::default_vhost_port,
) {
  include ::apache::params
  file{"${::apache::params::config_basepath}/${domain}.conf":
    ensure  => file,
    content => template('apache/apache_vhost.erb'),
    owner   => $::apache::params::user,
    group   => $::apache::params::group,
    notify  => Service['apache-service'],
  }
}
