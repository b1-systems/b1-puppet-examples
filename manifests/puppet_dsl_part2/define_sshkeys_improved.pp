# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Only Puppet 3 (Puppet 4 gives 'Illegal title type' error)
define sshkeys() {
  $content = $title['sshkey']

  user { $title['name']:
    ensure     => present,
    managehome => true,
  }
  file { "${title['name']}_ssh_authorized_keys":
    ensure  => file,
    path    => "/home/${title['name']}/.ssh/authorized_keys",
    content => $content,
    owner   => $title['name'],
    mode    => '0644',
    require => User[$title['name']],
  }
  file { "${title['name']}_dotssh":
    ensure => directory,
    path   => "/home/${title['name']}/.ssh",
    owner  => $title['name'],
    mode   => '0700',
  }
}

$myusers = [{ 'name' => 'horst', 'sshkey' => 'ssh key horst' },
            { 'name' => 'klaus', 'sshkey' => 'ssh key klaus' },]

sshkeys { $myusers: }
