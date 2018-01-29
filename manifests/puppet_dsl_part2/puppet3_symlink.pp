# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

define puppet_symlinks {
  file { "/usr/local/bin/${title}":
    ensure => link,
    target => "/opt/puppetlabs/bin/${title}",
  }
}

$symlinks = ['puppet', 'facter', 'hiera']
puppet_symlinks { $symlinks: }
