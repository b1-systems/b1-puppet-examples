# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define sshkeys( $content, $user = $title ) {
  file { "${user}_ssh_authorized_keys":
    ensure  => file,
    path    => "/home/${user}/.ssh/authorized_keys",
    content => $content,
    mode    => '0600',
    owner   => $user,
    require => User[$user],
  }
  file { "${user}_dotssh":
    ensure => directory,
    path   => "/home/${user}/.ssh",
    owner  => $user,
    mode   => '0700',
  }
}
