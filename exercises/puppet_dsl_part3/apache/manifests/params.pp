# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class apache::params() {
  if($::fqdn) {
    $servername = $::fqdn
  }
  else {
    $servername = $::hostname
  }

  if $::osfamily == 'RedHat' {
    $packages  = 'httpd'
    $service   = 'httpd'
    $vhost_dir = '/etc/httpd/conf.d'
    $user      = 'apache'
    $group     = 'apache'
  }
  # Nasty old facter on SLES11
  elsif $::operatingsystem == 'SLES' {
    $packages  = 'apache2'
    $service   = 'apache2'
    $vhost_dir = '/etc/apache2/vhosts.d'
    $user      = 'wwwrun'
    $group     = 'wwwrun'
  }
  elsif $::osfamily == 'Suse' {
    $packages  = 'apache2'
    $service   = 'apache2'
    $vhost_dir = '/etc/apache2/vhosts.d'
    $user      = 'wwwrun'
    $group     = 'www'
  }
  else {
    fail('Class[apache::params]: Unsupported OS')
  }
}
