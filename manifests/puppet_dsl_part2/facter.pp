# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

file { '/var/tmp/motd':
  ensure  => file,
  content => "Welcome to ${facts['networking']['hostname']}!
Kernel: ${facts['kernel']} ${facts['kernelversion']}
OperatingSystem: ${facts['os']['family']}
RAM: ${facts['memory']['system']['total']}
",
}
