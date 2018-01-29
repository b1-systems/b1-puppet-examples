# copyright: B1 Systems GmbH <info@b1-systems.de>, 2018
# license:   GPLv3+, http://www.gnu.org/licenses/gpl-3.0.html

# Class haveged::install
#   Default package class for the haveged module
#
# Parameters:
#   [*ensure*]:
#     How should packages be managed:
#     Valid values: present, latest, absent
#   [*packages*]:
#     Array with a list of packages
class haveged::install(
  $ensure,
  $packages
) {

  validate_string($ensure)
  validate_array($packages)

  $my_ensure = $ensure ? {
    /(present|latest|absent)/ => $ensure,
  }

  package{$packages:
    ensure => $my_ensure,
  }

}
