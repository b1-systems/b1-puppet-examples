# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

class enctest($parameter, $dateipfad) {
  file { 'helloworld':
    ensure  => file,
    path    => $dateipfad,
    content => "enctest - Parameter: ${parameter}\n",
  }
}
