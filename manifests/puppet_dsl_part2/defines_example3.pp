# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define serviceuser(
  $user = $name,
  $home = '/var/empty'
){
  group{$user:
    system => true,
    ensure => present,
  }
  user{$user:
    ensure     => present,
    system     => true,
    home       => $home,
    managehome => true,
    shell      => '/sbin/nologin',
    require    => Group[$user],
  }
}
serviceuser{ 'tomcat':
  home => '/var/lib/tomcat',
}

