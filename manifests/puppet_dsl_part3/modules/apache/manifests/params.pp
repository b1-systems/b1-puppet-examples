# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class apache::params {
  case $::osfamily {
    'RedHat': {
      $package_name    = 'httpd'
      $service_name    = 'httpd'
      $www_basepath    = '/var/www/html'
      $config_basepath = '/etc/httpd/conf.d'
      $user            = 'apache'
      $group           = 'apache'
    }
    'Suse': {
      $package_name    = 'apache2'
      $service_name    = 'apache2'
      $www_basepath    = '/srv/www/htdocs'
      $config_basepath = '/etc/apache2/vhost.d'
      $user            = 'wwwrun'
      $group           = 'wwwrun'
    }
    default: {
      fail("${::osfamily} is not supported by ${module_name}")
    }
  }
  $default_vhost_port = '80'
}
